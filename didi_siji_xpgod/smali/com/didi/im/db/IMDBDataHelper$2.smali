.class final Lcom/didi/im/db/IMDBDataHelper$2;
.super Ljava/lang/Object;
.source "IMDBDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/db/IMDBDataHelper;->insertUser(Ljava/util/ArrayList;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/im/db/IMDBDataHelper$2;->val$list:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/didi/im/db/IMDBDataHelper$2;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, cpo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---IMDBDataHelper insertUser user size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/im/db/IMDBDataHelper$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/im/model/IMUser;

    .line 103
    .local v4, user:Lcom/didi/im/model/IMUser;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---IMDBDataHelper insertUser user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/didi/im/model/IMUser;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 104
    sget-object v5, Lcom/didi/im/db/IMDBHelper$UsersColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    #calls: Lcom/didi/im/db/IMDBDataHelper;->getUserContentValues(Lcom/didi/im/model/IMUser;)Landroid/content/ContentValues;
    invoke-static {v4}, Lcom/didi/im/db/IMDBDataHelper;->access$300(Lcom/didi/im/model/IMUser;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v4           #user:Lcom/didi/im/model/IMUser;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.diditaxi.psnger.im"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 110
    .local v3, results:[Landroid/content/ContentProviderResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---IMDBDataHelper insertUser user ContentProviderResult[] length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$2;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    const/4 v6, 0x0

    #calls: Lcom/didi/im/db/IMDBDataHelper;->successedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;[Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
    invoke-static {v5, v3, v6}, Lcom/didi/im/db/IMDBDataHelper;->access$200(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;[Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :goto_1
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$2;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    #calls: Lcom/didi/im/db/IMDBDataHelper;->failedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V
    invoke-static {v5, v1}, Lcom/didi/im/db/IMDBDataHelper;->access$000(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V

    goto :goto_1
.end method

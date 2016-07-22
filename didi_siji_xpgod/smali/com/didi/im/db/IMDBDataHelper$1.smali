.class final Lcom/didi/im/db/IMDBDataHelper$1;
.super Ljava/lang/Object;
.source "IMDBDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/db/IMDBDataHelper;->insertCommonSentence(Lcom/didi/im/model/IMCommons;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$commons:Lcom/didi/im/model/IMCommons;

.field final synthetic val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;


# direct methods
.method constructor <init>(Lcom/didi/im/model/IMCommons;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$commons:Lcom/didi/im/model/IMCommons;

    iput-object p2, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, cpo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$commons:Lcom/didi/im/model/IMCommons;

    if-nez v5, :cond_1

    .line 60
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    #calls: Lcom/didi/im/db/IMDBDataHelper;->failedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V
    invoke-static {v5, v6}, Lcom/didi/im/db/IMDBDataHelper;->access$000(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$commons:Lcom/didi/im/model/IMCommons;

    invoke-virtual {v5}, Lcom/didi/im/model/IMCommons;->getArrList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$commons:Lcom/didi/im/model/IMCommons;

    invoke-virtual {v5}, Lcom/didi/im/model/IMCommons;->getArrList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---IMDBDataHelper insertCommonSentence  size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$commons:Lcom/didi/im/model/IMCommons;

    invoke-virtual {v6}, Lcom/didi/im/model/IMCommons;->getArrList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/didi/im/db/IMDBDataHelper;->deleteCommonSentence()I

    .line 69
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$commons:Lcom/didi/im/model/IMCommons;

    invoke-virtual {v5}, Lcom/didi/im/model/IMCommons;->getArrList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    .local v4, str:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---IMDBDataHelper insertCommonSentence common:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    sget-object v5, Lcom/didi/im/db/IMDBHelper$CommonSentenceColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    #calls: Lcom/didi/im/db/IMDBDataHelper;->getCommonSentenceContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    invoke-static {v4}, Lcom/didi/im/db/IMDBDataHelper;->access$100(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v4           #str:Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.diditaxi.psnger.im"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 78
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

    .line 79
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    const/4 v6, 0x0

    #calls: Lcom/didi/im/db/IMDBDataHelper;->successedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;[Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
    invoke-static {v5, v3, v6}, Lcom/didi/im/db/IMDBDataHelper;->access$200(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;[Landroid/content/ContentProviderResult;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 80
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/didi/im/db/IMDBDataHelper$1;->val$listener:Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;

    #calls: Lcom/didi/im/db/IMDBDataHelper;->failedCallback(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V
    invoke-static {v5, v1}, Lcom/didi/im/db/IMDBDataHelper;->access$000(Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.class Lcom/avos/avoscloud/AVQuery$8;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/GetCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$8;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1402
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1380
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v2, :cond_0

    .line 1382
    const/4 v2, 0x0

    .line 1383
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1384
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 1388
    :goto_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-virtual {v3, v0, v2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 1386
    goto :goto_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v2, :cond_0

    .line 1392
    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_1
.end method

.class final Lcom/avos/avoscloud/AVObject$16;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$16;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$16;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$16;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 1614
    const/4 v2, 0x0

    #setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVObject;->access$502(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1615
    #calls: Lcom/avos/avoscloud/AVObject;->rollbackDataToOperationQueue()V
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->access$600(Lcom/avos/avoscloud/AVObject;)V

    .line 1616
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveFailure()V

    goto :goto_0

    .line 1618
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 1619
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$16;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$16;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1621
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$16;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 1600
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->copyFromJson(Ljava/lang/String;)V

    .line 1601
    #calls: Lcom/avos/avoscloud/AVObject;->transferDataToServerData()V
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->access$400(Lcom/avos/avoscloud/AVObject;)V

    .line 1602
    const/4 v2, 0x0

    #setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVObject;->access$502(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1603
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$16;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$16;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 1608
    :cond_1
    return-void
.end method

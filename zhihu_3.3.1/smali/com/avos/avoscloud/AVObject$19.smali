.class Lcom/avos/avoscloud/AVObject$19;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1800
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$19;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isRequestStatisticNeed()Z
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-boolean v0, v0, Lcom/avos/avoscloud/AVObject;->requestStatistic:Z

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    #setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$502(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1823
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    #calls: Lcom/avos/avoscloud/AVObject;->rollbackDataToOperationQueue()V
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->access$600(Lcom/avos/avoscloud/AVObject;)V

    .line 1824
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->shouldThrowException(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1826
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1831
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveFailure()V

    .line 1832
    return-void

    .line 1828
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    #setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$502(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1810
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    #calls: Lcom/avos/avoscloud/AVObject;->transferDataToServerData()V
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->access$400(Lcom/avos/avoscloud/AVObject;)V

    .line 1811
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->copyFromJson(Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 1814
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1818
    :cond_0
    return-void
.end method

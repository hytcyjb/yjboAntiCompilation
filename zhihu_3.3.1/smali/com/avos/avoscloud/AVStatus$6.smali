.class final Lcom/avos/avoscloud/AVStatus$6;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusWithIdInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/StatusCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/StatusCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$6;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 708
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$6;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$6;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/StatusCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 711
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 699
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 700
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVStatus;->processStatus(Ljava/lang/String;Lcom/avos/avoscloud/AVStatus;)V

    .line 701
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$6;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus$6;->val$callback:Lcom/avos/avoscloud/StatusCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/StatusCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 704
    :cond_0
    return-void
.end method

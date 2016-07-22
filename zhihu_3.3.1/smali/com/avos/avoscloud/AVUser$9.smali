.class final Lcom/avos/avoscloud/AVUser$9;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/RequestPasswordResetCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$9;->val$internalCallback:Lcom/avos/avoscloud/RequestPasswordResetCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 884
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$9;->val$internalCallback:Lcom/avos/avoscloud/RequestPasswordResetCallback;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$9;->val$internalCallback:Lcom/avos/avoscloud/RequestPasswordResetCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/RequestPasswordResetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 887
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 877
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$9;->val$internalCallback:Lcom/avos/avoscloud/RequestPasswordResetCallback;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$9;->val$internalCallback:Lcom/avos/avoscloud/RequestPasswordResetCallback;

    invoke-virtual {v0, v1, v1}, Lcom/avos/avoscloud/RequestPasswordResetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 880
    :cond_0
    return-void
.end method

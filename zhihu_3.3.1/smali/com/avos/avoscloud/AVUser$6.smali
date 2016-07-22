.class final Lcom/avos/avoscloud/AVUser$6;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

.field final synthetic val$user:Lcom/avos/avoscloud/AVUser;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$6;->val$user:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$6;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 640
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$6;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$6;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 643
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 624
    .line 625
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$6;->val$user:Lcom/avos/avoscloud/AVUser;

    .line 626
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$6;->val$user:Lcom/avos/avoscloud/AVUser;

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 628
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$6;->val$user:Lcom/avos/avoscloud/AVUser;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 633
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$6;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$6;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-virtual {v1, v0, p2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 636
    :cond_0
    return-void

    .line 630
    :cond_1
    const/4 v0, 0x0

    .line 631
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x65

    const-string v2, "User is not found."

    invoke-direct {p2, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

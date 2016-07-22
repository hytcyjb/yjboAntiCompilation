.class final Lcom/avos/avoscloud/AVUser$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
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
    .line 428
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$2;->val$user:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$2;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$2;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$2;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 451
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 431
    .line 432
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$2;->val$user:Lcom/avos/avoscloud/AVUser;

    .line 433
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$2;->val$user:Lcom/avos/avoscloud/AVUser;

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 435
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$2;->val$user:Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 436
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$2;->val$user:Lcom/avos/avoscloud/AVUser;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$2;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$2;->val$internalCallback:Lcom/avos/avoscloud/LogInCallback;

    invoke-virtual {v1, v0, p2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 444
    :cond_0
    return-void

    .line 439
    :cond_1
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0x65

    const-string v2, "User is not found."

    invoke-direct {p2, v0, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.class Lcom/avos/avoscloud/AVUser$11;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/UpdatePasswordCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$11;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$11;->val$callback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$11;->val$callback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 949
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 940
    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$11;->this$0:Lcom/avos/avoscloud/AVUser;

    const-string v1, "sessionToken"

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->access$002(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/lang/String;

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$11;->val$callback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 944
    return-void
.end method

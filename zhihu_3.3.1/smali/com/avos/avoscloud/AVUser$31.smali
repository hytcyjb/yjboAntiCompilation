.class final Lcom/avos/avoscloud/AVUser$31;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->dissociateAuthData(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$user:Lcom/avos/avoscloud/AVUser;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$31;->val$user:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$31;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/AVUser$31;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2041
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$31;->val$user:Lcom/avos/avoscloud/AVUser;

    new-instance v1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;

    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$31;->val$type:Ljava/lang/String;

    invoke-direct {v1, v3, v3, v2, v3}, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 2042
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$31;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$31;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 2045
    :cond_0
    return-void
.end method

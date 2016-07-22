.class final Lcom/avos/avoscloud/AVUser$22;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$22;->val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$22;->val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$22;->val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1380
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1370
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$22;->val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$22;->val$internalCallback:Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    invoke-virtual {v0, v1, v1}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1373
    :cond_0
    return-void
.end method

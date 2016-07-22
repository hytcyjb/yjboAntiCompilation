.class final Lcom/avos/avoscloud/AVUser$14;
.super Lcom/avos/avoscloud/UpdatePasswordCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/avos/avoscloud/UpdatePasswordCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    if-eqz p1, :cond_0

    .line 1039
    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 1041
    :cond_0
    return-void
.end method

.method public mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 1045
    const/4 v0, 0x0

    return v0
.end method

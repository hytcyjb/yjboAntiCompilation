.class final Lcom/avos/avoscloud/AVStatus$2;
.super Lcom/avos/avoscloud/DeleteCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->deleteInboxStatus(JLjava/lang/String;Lcom/avos/avoscloud/AVUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/avos/avoscloud/DeleteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 302
    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 304
    :cond_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

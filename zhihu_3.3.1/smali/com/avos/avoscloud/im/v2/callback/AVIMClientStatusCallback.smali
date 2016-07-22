.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMClientStatusCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMClientStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;)V
.end method

.method protected internalDone0(Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/callback/AVIMClientStatusCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;)V

    .line 18
    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMClientStatusCallback;->internalDone0(Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.class public abstract Lcom/avos/avoscloud/RequestPasswordResetCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "RequestPasswordResetCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/AVException;)V
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/RequestPasswordResetCallback;->internalDone0(Ljava/lang/Void;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected final internalDone0(Ljava/lang/Void;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/RequestPasswordResetCallback;->done(Lcom/avos/avoscloud/AVException;)V

    .line 43
    return-void
.end method

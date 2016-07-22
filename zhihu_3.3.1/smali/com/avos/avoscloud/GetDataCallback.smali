.class public abstract Lcom/avos/avoscloud/GetDataCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "GetDataCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done([BLcom/avos/avoscloud/AVException;)V
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GetDataCallback;->internalDone0([BLcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected final internalDone0([BLcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GetDataCallback;->done([BLcom/avos/avoscloud/AVException;)V

    .line 28
    return-void
.end method

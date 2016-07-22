.class public abstract Lcom/avos/avoscloud/ProgressCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "ProgressCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Integer;)V
.end method

.method protected final internalDone0(Ljava/lang/Integer;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ProgressCallback;->done(Ljava/lang/Integer;)V

    .line 19
    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/ProgressCallback;->internalDone0(Ljava/lang/Integer;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

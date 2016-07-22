.class public abstract Lcom/avos/avoscloud/CountCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "CountCallback.java"


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
    .line 35
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(ILcom/avos/avoscloud/AVException;)V
.end method

.method protected final internalDone0(Ljava/lang/Integer;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/CountCallback;->done(ILcom/avos/avoscloud/AVException;)V

    .line 52
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/CountCallback;->internalDone0(Ljava/lang/Integer;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.class public abstract Lcom/avos/avoscloud/callback/AVServerDateCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVServerDateCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/util/Date;",
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
.method public abstract done(Ljava/util/Date;Lcom/avos/avoscloud/AVException;)V
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/callback/AVServerDateCallback;->internalDone0(Ljava/util/Date;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected internalDone0(Ljava/util/Date;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/callback/AVServerDateCallback;->done(Ljava/util/Date;Lcom/avos/avoscloud/AVException;)V

    .line 18
    return-void
.end method

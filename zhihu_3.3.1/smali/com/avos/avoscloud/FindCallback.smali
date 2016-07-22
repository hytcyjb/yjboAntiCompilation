.class public abstract Lcom/avos/avoscloud/FindCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "FindCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/FindCallback;->internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected final internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/FindCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 38
    return-void
.end method

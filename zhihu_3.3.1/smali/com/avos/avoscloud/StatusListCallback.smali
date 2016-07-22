.class public abstract Lcom/avos/avoscloud/StatusListCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "StatusListCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/avos/avoscloud/AVStatus;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;",
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
    .line 9
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/StatusListCallback;->internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

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
            "<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/StatusListCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    .line 20
    return-void
.end method

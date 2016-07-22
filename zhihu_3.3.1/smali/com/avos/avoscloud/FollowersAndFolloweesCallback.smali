.class public abstract Lcom/avos/avoscloud/FollowersAndFolloweesCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "FollowersAndFolloweesCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "TT;>;>;"
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
.method public abstract done(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
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
    .line 11
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/FollowersAndFolloweesCallback;->internalDone0(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected final internalDone0(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/FollowersAndFolloweesCallback;->done(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V

    .line 23
    return-void
.end method

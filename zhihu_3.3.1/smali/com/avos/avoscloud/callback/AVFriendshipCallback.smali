.class public abstract Lcom/avos/avoscloud/callback/AVFriendshipCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVFriendshipCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Lcom/avos/avoscloud/AVFriendship;",
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
.method public abstract done(Lcom/avos/avoscloud/AVFriendship;Lcom/avos/avoscloud/AVException;)V
.end method

.method protected final internalDone0(Lcom/avos/avoscloud/AVFriendship;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->done(Lcom/avos/avoscloud/AVFriendship;Lcom/avos/avoscloud/AVException;)V

    .line 19
    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    check-cast p1, Lcom/avos/avoscloud/AVFriendship;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone0(Lcom/avos/avoscloud/AVFriendship;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

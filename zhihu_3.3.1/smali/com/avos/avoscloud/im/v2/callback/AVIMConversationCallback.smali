.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMConversationCallback.java"


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
    .line 10
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/im/v2/AVIMException;)V
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone0(Ljava/lang/Void;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected final internalDone0(Ljava/lang/Void;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMException;)V

    .line 22
    return-void
.end method

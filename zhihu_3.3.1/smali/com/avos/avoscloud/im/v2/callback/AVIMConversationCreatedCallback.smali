.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMConversationCreatedCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMException;)V
.end method

.method protected final internalDone0(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMException;)V

    .line 14
    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;->internalDone0(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

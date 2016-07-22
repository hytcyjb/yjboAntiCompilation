.class public Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;
.super Lcom/avos/avoscloud/im/v2/MessageHandler;
.source "AVIMTypedMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
        ">",
        "Lcom/avos/avoscloud/im/v2/MessageHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-void
.end method

.method public onMessage(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method

.method public bridge synthetic onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-void
.end method

.method public onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    return-void
.end method

.class public Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;
.super Ljava/lang/Object;
.source "AVIMMessageManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageToken(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getUniqueToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    return-object v0
.end method

.method public static processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-static {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V

    .line 12
    return-void
.end method

.method public static processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    .line 16
    return-void
.end method

.method public static removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->deleteConversationData(Ljava/lang/String;)V

    .line 32
    return-void
.end method

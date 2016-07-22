.class public Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;
.super Lcom/avos/avoscloud/im/v2/MessageHandler;
.source "AVIMMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/im/v2/MessageHandler",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">;"
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
.method public onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    return-void
.end method

.method public onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    return-void
.end method

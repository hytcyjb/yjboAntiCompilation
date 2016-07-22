.class final Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;
.source "AVIMMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$finalMessageObject:Lcom/avos/avoscloud/im/v2/AVIMMessage;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;->val$finalMessageObject:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .locals 3
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;->val$finalMessageObject:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v2, 0x1

    #calls: Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V
    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->access$000(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    .line 166
    return-void
.end method

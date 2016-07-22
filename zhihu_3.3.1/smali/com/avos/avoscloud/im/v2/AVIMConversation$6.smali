.class Lcom/avos/avoscloud/im/v2/AVIMConversation$6;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

.field final synthetic val$limit:I

.field final synthetic val$msgId:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$msgId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$timestamp:J

    iput p5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$limit:I

    iput-object p6, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 323
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$msgId:Ljava/lang/String;

    .line 325
    iget-wide v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$timestamp:J

    .line 326
    iget v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$limit:I

    .line 327
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 328
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getNextMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    .line 332
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$limit:I

    add-int/lit8 v4, v0, 0x1

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;

    invoke-direct {v8, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation$6;)V

    #calls: Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    invoke-static/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$200(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    .line 361
    :goto_0
    return-void

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$msgId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$timestamp:J

    iget v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$limit:I

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v5, v5, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    new-instance v6, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;

    invoke-direct {v6, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation$6;)V

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getMessages(Ljava/lang/String;JILjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V

    goto :goto_0
.end method

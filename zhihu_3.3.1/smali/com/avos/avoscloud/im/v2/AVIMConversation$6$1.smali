.class Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation$6;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/AVIMException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 339
    if-eqz p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    if-nez p1, :cond_1

    .line 343
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertContinuousMessages(Ljava/util/List;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$msgId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-wide v2, v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$timestamp:J

    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget v4, v4, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$limit:I

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v5, v5, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    #calls: Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_0
.end method

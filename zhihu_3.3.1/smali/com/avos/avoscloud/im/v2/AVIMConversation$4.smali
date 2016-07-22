.class Lcom/avos/avoscloud/im/v2/AVIMConversation$4;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->val$limit:I

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
    .line 260
    if-eqz p2, :cond_1

    .line 261
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->val$limit:I

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    #calls: Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertContinuousMessages(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method

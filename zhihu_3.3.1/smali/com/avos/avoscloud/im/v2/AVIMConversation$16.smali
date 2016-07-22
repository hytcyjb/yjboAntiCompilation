.class Lcom/avos/avoscloud/im/v2/AVIMConversation$16;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field final synthetic val$messageFlag:I

.field final synthetic val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

.field final synthetic val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;Lcom/avos/avoscloud/im/v2/AVIMMessage;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    iput-object p5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput p6, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$messageFlag:I

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 867
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    .line 871
    :cond_0
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    if-eqz v0, :cond_5

    .line 872
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;->onComplete()V

    .line 877
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    if-eqz v0, :cond_4

    .line 878
    if-nez p2, :cond_6

    .line 880
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callbackMessageTimeStamp"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 882
    const-string v2, "callbackMessageId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 883
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 884
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    sget-object v3, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 885
    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 886
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 888
    :cond_2
    iget v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$messageFlag:I

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz v2, :cond_3

    .line 889
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 891
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v3, v2, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    .line 892
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateConversationLastMessageAt(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z

    .line 898
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 899
    const-string v0, "callbackHistoryMessages"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 902
    if-eqz p2, :cond_7

    .line 903
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 926
    :goto_2
    return-void

    .line 873
    :cond_5
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;->onFailure()V

    goto :goto_0

    .line 894
    :cond_6
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    goto :goto_1

    .line 905
    :cond_7
    if-nez v0, :cond_8

    .line 906
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 908
    :cond_8
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {v1, v0, v4}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_2

    .line 913
    :cond_9
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 914
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callbackUpdatedAt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 915
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callbackUpdatedAt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object v0, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    .line 920
    :cond_a
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 921
    const-string v0, "callbackMemberCount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 922
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_2

    .line 925
    :cond_b
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_2
.end method

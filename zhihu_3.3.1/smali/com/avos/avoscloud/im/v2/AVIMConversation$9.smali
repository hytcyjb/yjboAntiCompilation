.class Lcom/avos/avoscloud/im/v2/AVIMConversation$9;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->processStorageQueryResult(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

.field final synthetic val$continuousMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->val$continuousMessages:Ljava/util/List;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .locals 3
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
    .line 448
    if-eqz p2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 459
    :goto_0
    return-void

    .line 451
    :cond_0
    if-nez p1, :cond_1

    .line 452
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->val$continuousMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->val$continuousMessages:Ljava/util/List;

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->messageComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 456
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->val$continuousMessages:Ljava/util/List;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertContinuousMessages(Ljava/util/List;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;->val$continuousMessages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

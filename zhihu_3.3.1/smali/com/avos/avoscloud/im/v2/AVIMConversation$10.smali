.class Lcom/avos/avoscloud/im/v2/AVIMConversation$10;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->addMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$friendsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$friendsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$friendsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 494
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertConversations(Ljava/util/List;)V

    .line 495
    return-void
.end method

.method public onFailure()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

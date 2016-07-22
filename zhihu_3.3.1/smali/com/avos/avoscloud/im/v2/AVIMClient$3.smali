.class Lcom/avos/avoscloud/im/v2/AVIMClient$3;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field final synthetic val$conversationAttributes:Ljava/util/HashMap;

.field final synthetic val$conversationMembers:Ljava/util/List;

.field final synthetic val$isTransient:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;Ljava/util/List;Ljava/util/HashMap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationMembers:Ljava/util/List;

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationAttributes:Ljava/util/HashMap;

    iput-boolean p5, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTransient:Z

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callbackconversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "callbackCreatedAt"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    const/4 v0, 0x0

    .line 296
    if-nez p2, :cond_0

    .line 297
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationMembers:Ljava/util/List;

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationAttributes:Ljava/util/HashMap;

    iget-boolean v6, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTransient:Z

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setConversationId(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v3, v3, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreator(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreatedAt(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setUpdatedAt(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertConversations(Ljava/util/List;)V

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 308
    return-void
.end method

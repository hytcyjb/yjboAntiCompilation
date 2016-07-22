.class Lcom/avos/avoscloud/im/v2/AVIMConversation$14;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 752
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    invoke-virtual {v0, v5, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    if-nez p2, :cond_5

    if-eqz p1, :cond_5

    .line 755
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 756
    const-string v0, "attr"

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 757
    const-string v0, "attr"

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 759
    if-eqz v2, :cond_2

    .line 760
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 761
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 764
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 765
    :catch_0
    move-exception v0

    goto :goto_1

    .line 772
    :cond_2
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 774
    const-string v2, "name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_3
    const-string v0, "m"

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 778
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setMembers(Ljava/util/List;)V

    .line 779
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreatedAt(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setUpdatedAt(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const-string v2, "lm"

    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/AVObject;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    .line 782
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 783
    const-string v0, "c"

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreator(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    if-eqz v0, :cond_4

    .line 786
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    invoke-virtual {v0, v5, v5}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 789
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertConversations(Ljava/util/List;)V

    goto/16 :goto_0

    .line 791
    :cond_5
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x68

    const-string v3, "Object not found"

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto/16 :goto_0
.end method

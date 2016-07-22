.class Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMConversationQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheConversationQueryCallback"
.end annotation


# instance fields
.field callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

.field client:Lcom/avos/avoscloud/im/v2/AVIMClient;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    .line 540
    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    .line 541
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 542
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 569
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 546
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    :try_start_0
    const-class v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 549
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getCachedConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 551
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 552
    :cond_0
    const/16 v0, 0x78

    const-string v1, "Cache Missing"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

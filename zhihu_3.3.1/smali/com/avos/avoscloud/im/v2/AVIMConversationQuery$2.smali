.class Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;
.super Landroid/content/BroadcastReceiver;
.source "AVIMConversationQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

.field final synthetic val$queryParamsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$queryParamsString:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 474
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "callbackException"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 478
    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 479
    check-cast v0, Ljava/lang/Throwable;

    move-object v3, v0

    move-object v0, v1

    .line 488
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    if-eqz v2, :cond_0

    .line 489
    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    if-nez v3, :cond_4

    move-object v2, v0

    :goto_1
    if-nez v3, :cond_5

    move-object v0, v1

    :goto_2
    invoke-virtual {v4, v2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 493
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/j;->a(Landroid/content/Context;)Landroid/support/v4/content/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/j;->a(Landroid/content/BroadcastReceiver;)V

    .line 500
    :cond_1
    :goto_3
    return-void

    .line 480
    :cond_2
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_6

    .line 481
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 482
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    #calls: Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->parseQueryResult(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    invoke-static {v2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 483
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 484
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$queryParamsString:Ljava/lang/String;

    #calls: Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->cacheQueryResult(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v2, v3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->access$200(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    move-object v3, v1

    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 489
    goto :goto_1

    :cond_5
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, v3}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 495
    :catch_0
    move-exception v0

    .line 496
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    if-eqz v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    new-instance v3, Lcom/avos/avoscloud/AVException;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1, v3}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_3

    :cond_6
    move-object v3, v1

    move-object v0, v1

    goto :goto_0
.end method

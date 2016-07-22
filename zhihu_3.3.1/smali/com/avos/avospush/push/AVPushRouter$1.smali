.class Lcom/avos/avospush/push/AVPushRouter$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVPushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avospush/push/AVPushRouter;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/avos/avospush/push/AVPushRouter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    iput p2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->val$code:I

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to fetch push server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    iget v1, p0, Lcom/avos/avospush/push/AVPushRouter$1;->val$code:I

    const/4 v2, 0x0

    #calls: Lcom/avos/avospush/push/AVPushRouter;->processRouterInformation(ILjava/util/Map;)V
    invoke-static {v0, v1, v2}, Lcom/avos/avospush/push/AVPushRouter;->access$300(Lcom/avos/avospush/push/AVPushRouter;ILjava/util/Map;)V

    .line 136
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 113
    :try_start_0
    const-class v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 114
    const-string v1, "groupId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avospush/push/AVPushRouter;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I
    invoke-static {v2, v1}, Lcom/avos/avospush/push/AVPushRouter;->access$102(Lcom/avos/avospush/push/AVPushRouter;I)I

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 118
    const-string v2, "groupId"

    invoke-static {}, Lcom/avos/avospush/push/AVPushRouter;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "server"

    const-string v3, "server"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "expireAt"

    iget-object v3, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    #getter for: Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I
    invoke-static {v3}, Lcom/avos/avospush/push/AVPushRouter;->access$100(Lcom/avos/avospush/push/AVPushRouter;)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "secondary"

    const-string v3, "secondary"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    #calls: Lcom/avos/avospush/push/AVPushRouter;->cachePushServer(Ljava/util/HashMap;)V
    invoke-static {v2, v1}, Lcom/avos/avospush/push/AVPushRouter;->access$200(Lcom/avos/avospush/push/AVPushRouter;Ljava/util/HashMap;)V

    .line 123
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    const/4 v2, 0x1

    #calls: Lcom/avos/avospush/push/AVPushRouter;->processRouterInformation(ILjava/util/Map;)V
    invoke-static {v1, v2, v0}, Lcom/avos/avospush/push/AVPushRouter;->access$300(Lcom/avos/avospush/push/AVPushRouter;ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/avos/avospush/push/AVPushRouter$1;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMVideoMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$meta:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$meta:Ljava/util/Map;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 101
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 84
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 85
    const-string v1, "format"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 86
    const-string v1, "format_name"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 88
    const-string v3, "size"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$meta:Ljava/util/Map;

    const-string v3, "size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$meta:Ljava/util/Map;

    const-string v3, "duration"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$meta:Ljava/util/Map;

    const-string v2, "format"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

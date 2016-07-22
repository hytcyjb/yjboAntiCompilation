.class Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMImageMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$meta:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isRequestStatisticNeed()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 112
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 99
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    const-string v2, "format"

    const-string v3, "format"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    const-string v2, "height"

    const-string v3, "height"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    const-string v2, "width"

    const-string v3, "width"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

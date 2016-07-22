.class Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVIMFileMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->fulFillFileInfo(Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$metaData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;->val$metaData:Ljava/util/Map;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;->val$metaData:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 211
    :cond_0
    return-void
.end method

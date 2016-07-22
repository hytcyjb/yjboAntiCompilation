.class Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation$6;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$msgId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-wide v4, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$timestamp:J

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget v6, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$limit:I

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    iget-object v7, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    move-object v1, p1

    move-object v2, p2

    #calls: Lcom/avos/avoscloud/im/v2/AVIMConversation;->processStorageQueryResult(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    invoke-static/range {v0 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$300(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    .line 358
    return-void
.end method

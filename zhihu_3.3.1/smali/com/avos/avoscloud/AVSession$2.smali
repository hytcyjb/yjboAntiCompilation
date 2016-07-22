.class Lcom/avos/avoscloud/AVSession$2;
.super Lcom/avos/avoscloud/SignatureCallback;
.source "AVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->watchPeers(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;

.field final synthetic val$peerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

    invoke-direct {p0}, Lcom/avos/avoscloud/SignatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 3

    .prologue
    .line 370
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$200()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$200()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 346
    if-nez p2, :cond_1

    .line 347
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/avos/avoscloud/Signature;->getSignedPeerIds()Ljava/util/List;

    move-result-object v0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$000(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 353
    new-instance v1, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v1}, Lcom/avos/avoscloud/PendingMessageCache$Message;-><init>()V

    .line 354
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v2

    .line 355
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 356
    iput-object v0, v1, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    .line 357
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v3, v1}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 358
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "add"

    invoke-static {v1, v0, v3, p1, v2}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v1, v2, p2}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

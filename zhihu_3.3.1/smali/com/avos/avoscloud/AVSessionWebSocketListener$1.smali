.class Lcom/avos/avoscloud/AVSessionWebSocketListener$1;
.super Lcom/avos/avoscloud/SignatureCallback;
.source "AVSessionWebSocketListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSessionWebSocketListener;->onWebSocketOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field peerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSessionWebSocketListener;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    invoke-direct {p0}, Lcom/avos/avoscloud/SignatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheSignature()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v0, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    return v0
.end method

.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->peerIds:Ljava/util/List;

    .line 106
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/avos/avoscloud/Signature;->getSignedPeerIds()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->peerIds:Ljava/util/List;

    .line 111
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->peerIds:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession;->setAllPeerIds(Ljava/util/Set;)V

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 78
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v7

    .line 79
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v1, v1, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v1, :cond_1

    move-object v1, v6

    :goto_0
    const-string v2, "open"

    const v4, -0x10001

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v5, v3, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;IZ)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setReconnectionRequest(Z)V

    .line 86
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 90
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 91
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->peerIds:Ljava/util/List;

    goto :goto_0
.end method

.method public useSignatureCache()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v0, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    return v0
.end method

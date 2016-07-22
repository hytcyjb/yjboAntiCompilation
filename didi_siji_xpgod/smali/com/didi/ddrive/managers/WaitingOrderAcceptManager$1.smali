.class Lcom/didi/ddrive/managers/WaitingOrderAcceptManager$1;
.super Ljava/lang/Object;
.source "WaitingOrderAcceptManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->queryAcceptedDriverCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
        "<",
        "Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager$1;->this$0:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 55
    const-string v0, "WaitingOrderAcceptManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "driver accepted :  error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 46
    const-string v0, "WaitingOrderAcceptManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "driver accepted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget v0, p1, Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;->num:I

    iget-object v1, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager$1;->this$0:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

    #getter for: Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mAcceptedDrivers:I
    invoke-static {v1}, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->access$000(Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager$1;->this$0:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

    iget v1, p1, Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;->num:I

    #setter for: Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mAcceptedDrivers:I
    invoke-static {v0, v1}, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->access$002(Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;I)I

    .line 49
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;

    iget v2, p1, Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;->num:I

    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;->toast:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;)V

    return-void
.end method

.class Lcom/didi/ddrive/managers/OrderHistoryManager$3;
.super Ljava/lang/Object;
.source "OrderHistoryManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/OrderHistoryManager;->queryHistory()V
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
        "Lcom/didi/ddrive/net/http/response/KDOrderHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/OrderHistoryManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/OrderHistoryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderHistoryManager$3;->this$0:Lcom/didi/ddrive/managers/OrderHistoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 162
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/OrderHistoryEvent;

    invoke-direct {v1}, Lcom/didi/ddrive/eventbus/event/OrderHistoryEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/KDOrderHistory;)V
    .locals 2
    .parameter "history"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/ddrive/managers/OrderHistoryManager$3;->this$0:Lcom/didi/ddrive/managers/OrderHistoryManager;

    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderHistoryManager$3;->this$0:Lcom/didi/ddrive/managers/OrderHistoryManager;

    #calls: Lcom/didi/ddrive/managers/OrderHistoryManager;->filter(Lcom/didi/ddrive/net/http/response/KDOrderHistory;)Ljava/util/List;
    invoke-static {v1, p1}, Lcom/didi/ddrive/managers/OrderHistoryManager;->access$100(Lcom/didi/ddrive/managers/OrderHistoryManager;Lcom/didi/ddrive/net/http/response/KDOrderHistory;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/didi/ddrive/managers/OrderHistoryManager;->mHistory:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/didi/ddrive/managers/OrderHistoryManager;->access$002(Lcom/didi/ddrive/managers/OrderHistoryManager;Ljava/util/List;)Ljava/util/List;

    .line 157
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/OrderHistoryEvent;

    invoke-direct {v1}, Lcom/didi/ddrive/eventbus/event/OrderHistoryEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, Lcom/didi/ddrive/net/http/response/KDOrderHistory;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/OrderHistoryManager$3;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/KDOrderHistory;)V

    return-void
.end method

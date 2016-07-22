.class Lcom/didi/ddrive/managers/OrderHistoryManager$2;
.super Ljava/lang/Object;
.source "OrderHistoryManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/OrderHistoryManager;->deleteOrder(Ljava/lang/Runnable;Ljava/util/List;)V
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
        "Lcom/didi/ddrive/net/http/response/OrderDeleteResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/OrderHistoryManager;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/OrderHistoryManager;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderHistoryManager$2;->this$0:Lcom/didi/ddrive/managers/OrderHistoryManager;

    iput-object p2, p0, Lcom/didi/ddrive/managers/OrderHistoryManager$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 5
    .parameter "errorCode"

    .prologue
    .line 136
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderHistoryManager$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4}, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;-><init>(ZLjava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDeleteResult;)V
    .locals 5
    .parameter "history"

    .prologue
    .line 131
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/OrderDeleteResult;->orderList:Ljava/util/List;

    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderHistoryManager$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4}, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;-><init>(ZLjava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    check-cast p1, Lcom/didi/ddrive/net/http/response/OrderDeleteResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/OrderHistoryManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDeleteResult;)V

    return-void
.end method

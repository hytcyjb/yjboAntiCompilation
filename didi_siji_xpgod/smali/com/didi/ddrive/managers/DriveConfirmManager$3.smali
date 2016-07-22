.class Lcom/didi/ddrive/managers/DriveConfirmManager$3;
.super Ljava/lang/Object;
.source "DriveConfirmManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriveConfirmManager;->queryUnpayedOrder(Ljava/lang/String;)V
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
        "Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriveConfirmManager;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriveConfirmManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriveConfirmManager$3;->this$0:Lcom/didi/ddrive/managers/DriveConfirmManager;

    iput-object p2, p0, Lcom/didi/ddrive/managers/DriveConfirmManager$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;

    invoke-direct {v1, v2, v2}, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;-><init>(Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 178
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;

    iget-object v2, p1, Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse;->unPayed:Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;

    iget-object v3, p0, Lcom/didi/ddrive/managers/DriveConfirmManager$3;->val$msg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;-><init>(Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    check-cast p1, Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriveConfirmManager$3;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse;)V

    return-void
.end method

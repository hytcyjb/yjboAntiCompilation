.class Lcom/didi/ddrive/managers/OrderStateManager$1;
.super Ljava/lang/Object;
.source "OrderStateManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/OrderStateManager;->queryOrderState()V
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
        "Lcom/didi/ddrive/net/http/response/OrderStateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/OrderStateManager;

.field final synthetic val$order:Lcom/didi/ddrive/model/DDriveOrder;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/OrderStateManager;Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    iput-object p2, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 143
    const-string v0, "DriverOrderStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrderStateRequest : error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderStateResponse;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 81
    iget v5, p1, Lcom/didi/ddrive/net/http/response/OrderStateResponse;->state:I

    invoke-static {v5}, Lcom/didi/ddrive/model/OrderState;->fromStateCode(I)Lcom/didi/ddrive/model/OrderState;

    move-result-object v4

    .line 82
    .local v4, state:Lcom/didi/ddrive/model/OrderState;
    const-string v5, "DriverOrderStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OrderStateRequest : success "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/didi/ddrive/model/OrderState;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    if-ne v4, v5, :cond_1

    .line 84
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;Z)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-object v5, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    if-ne v4, v5, :cond_2

    .line 86
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;-><init>()V

    .line 87
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    invoke-virtual {v5, v4, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;
    :cond_2
    sget-object v5, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    if-ne v4, v5, :cond_5

    .line 89
    iget v5, p1, Lcom/didi/ddrive/net/http/response/OrderStateResponse;->payState:I

    invoke-static {v5}, Lcom/didi/ddrive/model/PayState;->fromStateCode(I)Lcom/didi/ddrive/model/PayState;

    move-result-object v2

    .line 92
    .local v2, payState:Lcom/didi/ddrive/model/PayState;
    sget-object v5, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    if-ne v2, v5, :cond_3

    .line 93
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;-><init>()V

    .line 94
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    sget-object v6, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v5, v6, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;
    :cond_3
    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    .line 97
    .local v1, orderState:Lcom/didi/ddrive/model/OrderState;
    sget-object v5, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    if-ne v2, v5, :cond_4

    .line 98
    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    .line 101
    :cond_4
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;-><init>()V

    .line 102
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    invoke-virtual {v5, v1, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;
    .end local v1           #orderState:Lcom/didi/ddrive/model/OrderState;
    .end local v2           #payState:Lcom/didi/ddrive/model/PayState;
    :cond_5
    sget-object v5, Lcom/didi/ddrive/model/OrderState;->START_SERVICE:Lcom/didi/ddrive/model/OrderState;

    if-ne v4, v5, :cond_6

    .line 105
    new-instance v0, Lcom/didi/ddrive/eventbus/event/StartOffEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/StartOffEvent;-><init>()V

    .line 106
    .local v0, event:Lcom/didi/ddrive/eventbus/event/StartOffEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    invoke-virtual {v5, v4, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/StartOffEvent;
    :cond_6
    sget-object v5, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    if-ne v4, v5, :cond_7

    .line 108
    new-instance v0, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;-><init>()V

    .line 109
    .local v0, event:Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;
    iget-wide v5, p1, Lcom/didi/ddrive/net/http/response/OrderStateResponse;->did:J

    iput-wide v5, v0, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;->did:J

    .line 110
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v6, p1, Lcom/didi/ddrive/net/http/response/OrderStateResponse;->did:J

    iput-wide v6, v5, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    .line 111
    const-string v5, "morning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u62a2\u5355\u540e\u53f8\u673aID\u4e3a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/didi/ddrive/net/http/response/OrderStateResponse;->did:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    invoke-virtual {v5, v4, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;
    :cond_7
    sget-object v5, Lcom/didi/ddrive/model/OrderState;->TIMEOUT:Lcom/didi/ddrive/model/OrderState;

    if-ne v4, v5, :cond_8

    .line 114
    new-instance v0, Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;-><init>()V

    .line 115
    .local v0, event:Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    invoke-virtual {v5, v4, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 116
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;
    :cond_8
    sget-object v5, Lcom/didi/ddrive/model/OrderState;->END_SERVICE:Lcom/didi/ddrive/model/OrderState;

    if-ne v4, v5, :cond_9

    .line 117
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;-><init>()V

    .line 118
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    invoke-virtual {v5, v4, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 119
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;
    :cond_9
    sget-object v5, Lcom/didi/ddrive/model/OrderState;->SUBMIT_CHARGE:Lcom/didi/ddrive/model/OrderState;

    if-ne v4, v5, :cond_0

    .line 121
    iget v3, p1, Lcom/didi/ddrive/net/http/response/OrderStateResponse;->payState:I

    .line 122
    .local v3, payStateCode:I
    sget-object v5, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    iget v5, v5, Lcom/didi/ddrive/model/PayState;->code:I

    if-le v3, v5, :cond_a

    .line 123
    sget-object v5, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    iget v3, v5, Lcom/didi/ddrive/model/PayState;->code:I

    .line 125
    :cond_a
    invoke-static {v3}, Lcom/didi/ddrive/model/PayState;->fromStateCode(I)Lcom/didi/ddrive/model/PayState;

    move-result-object v2

    .line 128
    .restart local v2       #payState:Lcom/didi/ddrive/model/PayState;
    sget-object v5, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    if-ne v2, v5, :cond_b

    .line 129
    new-instance v0, Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;-><init>()V

    .line 130
    .local v0, event:Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    sget-object v6, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v5, v6, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 131
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;
    :cond_b
    sget-object v5, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    if-ne v2, v5, :cond_c

    .line 132
    new-instance v0, Lcom/didi/ddrive/eventbus/event/CSCloseEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/CSCloseEvent;-><init>()V

    .line 133
    .local v0, event:Lcom/didi/ddrive/eventbus/event/CSCloseEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    sget-object v6, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v5, v6, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 134
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/CSCloseEvent;
    :cond_c
    sget-object v5, Lcom/didi/ddrive/model/PayState;->UnPayed:Lcom/didi/ddrive/model/PayState;

    if-ne v2, v5, :cond_0

    .line 135
    new-instance v0, Lcom/didi/ddrive/eventbus/event/PaymentEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/PaymentEvent;-><init>()V

    .line 136
    .local v0, event:Lcom/didi/ddrive/eventbus/event/PaymentEvent;
    iget-object v5, p0, Lcom/didi/ddrive/managers/OrderStateManager$1;->this$0:Lcom/didi/ddrive/managers/OrderStateManager;

    sget-object v6, Lcom/didi/ddrive/model/OrderState;->SUBMIT_CHARGE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v5, v6, v0}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    check-cast p1, Lcom/didi/ddrive/net/http/response/OrderStateResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/OrderStateManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderStateResponse;)V

    return-void
.end method

.class Lcom/didi/ddrive/managers/DriverComingManager$2;
.super Ljava/lang/Object;
.source "DriverComingManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriverComingManager;->queryOrderDetailForOrderCanceledByDriver()V
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
        "Lcom/didi/ddrive/net/http/response/OrderDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriverComingManager;

.field final synthetic val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriverComingManager;Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriverComingManager$2;->this$0:Lcom/didi/ddrive/managers/DriverComingManager;

    iput-object p2, p0, Lcom/didi/ddrive/managers/DriverComingManager$2;->val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 183
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    const/4 v9, 0x3

    .line 136
    const-wide/16 v0, 0x0

    .line 137
    .local v0, fee:D
    iget v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->payState:I

    invoke-static {v6}, Lcom/didi/ddrive/model/PayState;->fromStateCode(I)Lcom/didi/ddrive/model/PayState;

    move-result-object v6

    sget-object v7, Lcom/didi/ddrive/model/PayState;->UnPayed:Lcom/didi/ddrive/model/PayState;

    if-ne v6, v7, :cond_0

    .line 138
    iget-wide v0, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->totalFee:D

    .line 140
    :cond_0
    iget-wide v3, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->waitTime:J

    .line 142
    .local v3, time:J
    iget v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->payState:I

    invoke-static {v6}, Lcom/didi/ddrive/model/PayState;->fromStateCode(I)Lcom/didi/ddrive/model/PayState;

    move-result-object v2

    .line 143
    .local v2, payState:Lcom/didi/ddrive/model/PayState;
    const-string v6, "morning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pay state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "info is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->cancelType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v6, p0, Lcom/didi/ddrive/managers/DriverComingManager$2;->val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->cancelType:I

    iput v7, v6, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    .line 152
    sget-object v6, Lcom/didi/ddrive/model/PayState;->UnPayed:Lcom/didi/ddrive/model/PayState;

    if-ne v2, v6, :cond_3

    .line 153
    iget-object v6, p0, Lcom/didi/ddrive/managers/DriverComingManager$2;->val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v2, v6, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    .line 154
    iget v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->cancelType:I

    if-ne v6, v9, :cond_2

    .line 155
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v6

    sget-object v7, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    new-instance v8, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;

    invoke-direct {v8, v3, v4, v0, v1}, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;-><init>(JD)V

    invoke-virtual {v6, v7, v8}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v6

    sget-object v7, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    new-instance v8, Lcom/didi/ddrive/eventbus/event/PassengerCancelWithFeeAndTimeEvent;

    invoke-direct {v8, v3, v4, v0, v1}, Lcom/didi/ddrive/eventbus/event/PassengerCancelWithFeeAndTimeEvent;-><init>(JD)V

    invoke-virtual {v6, v7, v8}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_3
    sget-object v6, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    if-ne v2, v6, :cond_1

    .line 163
    const/4 v5, 0x0

    .line 164
    .local v5, unPayedToClosed:Z
    iget-object v6, p0, Lcom/didi/ddrive/managers/DriverComingManager$2;->val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v6, v6, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    sget-object v7, Lcom/didi/ddrive/model/PayState;->UnPayed:Lcom/didi/ddrive/model/PayState;

    if-ne v6, v7, :cond_4

    .line 165
    const/4 v5, 0x1

    .line 167
    :cond_4
    iget-object v6, p0, Lcom/didi/ddrive/managers/DriverComingManager$2;->val$mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v2, v6, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    .line 169
    if-eqz v5, :cond_5

    .line 170
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v6

    sget-object v7, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    new-instance v8, Lcom/didi/ddrive/eventbus/event/DriverWontAcceptFeeEvent;

    invoke-direct {v8}, Lcom/didi/ddrive/eventbus/event/DriverWontAcceptFeeEvent;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_5
    iget v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->cancelType:I

    if-ne v6, v9, :cond_6

    .line 172
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v6

    sget-object v7, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    new-instance v8, Lcom/didi/ddrive/eventbus/event/DriverCancelNoFeeEvent;

    invoke-direct {v8}, Lcom/didi/ddrive/eventbus/event/DriverCancelNoFeeEvent;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_6
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v6

    sget-object v7, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    new-instance v8, Lcom/didi/ddrive/eventbus/event/DriverWontAcceptFeeEvent;

    invoke-direct {v8}, Lcom/didi/ddrive/eventbus/event/DriverWontAcceptFeeEvent;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    check-cast p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriverComingManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V

    return-void
.end method

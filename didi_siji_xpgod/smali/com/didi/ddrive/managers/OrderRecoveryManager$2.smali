.class Lcom/didi/ddrive/managers/OrderRecoveryManager$2;
.super Ljava/lang/Object;
.source "OrderRecoveryManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/OrderRecoveryManager;->queryOrderDetail(J)V
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
.field final synthetic this$0:Lcom/didi/ddrive/managers/OrderRecoveryManager;

.field final synthetic val$order:Lcom/didi/ddrive/model/DDriveOrder;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/OrderRecoveryManager;Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->this$0:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    iput-object p2, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 177
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 130
    iget-object v4, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    iget-wide v6, v4, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->did:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    invoke-virtual {v6}, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->toDriver()Lcom/didi/ddrive/model/Driver;

    move-result-object v6

    iput-object v6, v4, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    .line 132
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v6, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v6, v6, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    iget-wide v6, v6, Lcom/didi/ddrive/model/Driver;->did:J

    iput-wide v6, v4, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->cancelType:I

    iput v6, v4, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    .line 137
    iget v2, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->payState:I

    .line 138
    .local v2, payStateCode:I
    sget-object v4, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    iget v4, v4, Lcom/didi/ddrive/model/PayState;->code:I

    if-le v2, v4, :cond_1

    .line 139
    sget-object v4, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    iget v2, v4, Lcom/didi/ddrive/model/PayState;->code:I

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v6, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->this$0:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    invoke-static {v2}, Lcom/didi/ddrive/model/PayState;->fromStateCode(I)Lcom/didi/ddrive/model/PayState;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mPayState:Lcom/didi/ddrive/model/PayState;

    iput-object v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    .line 142
    iget-object v6, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget v4, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->star:I

    if-lez v4, :cond_2

    move v4, v5

    :goto_0
    iput v4, v6, Lcom/didi/ddrive/model/DDriveOrder;->evaluateMark:I

    .line 143
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->star:I

    iput v6, v4, Lcom/didi/ddrive/model/DDriveOrder;->evaluateScore:I

    .line 144
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->totalFee:D

    iput-wide v6, v4, Lcom/didi/ddrive/model/DDriveOrder;->payed:D

    .line 145
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iget v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->channel:I

    iput v6, v4, Lcom/didi/ddrive/model/DDriveOrder;->channel:I

    .line 147
    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 148
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    sget-object v4, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    iput-object v4, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 149
    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    iput-object v4, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 150
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v0, v4, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 151
    new-instance v3, Lcom/didi/common/model/Address;

    invoke-direct {v3}, Lcom/didi/common/model/Address;-><init>()V

    .line 152
    .local v3, startAddress:Lcom/didi/common/model/Address;
    iget-object v4, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->startPoiName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 153
    iget-object v4, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->startPoiAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 154
    iget-wide v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->startLat:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 155
    iget-wide v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->startLng:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 156
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    .line 157
    .local v1, endAddress:Lcom/didi/common/model/Address;
    iget-object v4, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->endPoiName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 158
    iget-object v4, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->endPoiAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 159
    iget-wide v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->endLat:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 160
    iget-wide v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->endLng:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 161
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4, v3}, Lcom/didi/ddrive/model/DDriveOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 162
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4, v1}, Lcom/didi/ddrive/model/DDriveOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 164
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->val$order:Lcom/didi/ddrive/model/DDriveOrder;

    iput-boolean v5, v4, Lcom/didi/ddrive/model/DDriveOrder;->isFromRecovery:Z

    .line 166
    invoke-static {v3}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 167
    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 170
    iget-object v4, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->this$0:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    iget v6, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->orderState:I

    invoke-static {v6}, Lcom/didi/ddrive/model/OrderState;->fromStateCode(I)Lcom/didi/ddrive/model/OrderState;

    move-result-object v6

    iput-object v6, v4, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    .line 172
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v6, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;

    invoke-direct {v6, v5}, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;-><init>(Z)V

    invoke-virtual {v4, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 173
    return-void

    .line 142
    .end local v0           #commonAttri:Lcom/didi/common/model/CommonAttributes;
    .end local v1           #endAddress:Lcom/didi/common/model/Address;
    .end local v3           #startAddress:Lcom/didi/common/model/Address;
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V

    return-void
.end method

.class Lcom/didi/frame/recovery/RecoveryDDrive$1;
.super Ljava/lang/Object;
.source "RecoveryDDrive.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryDDrive;->recoveryByOid(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

.field final synthetic val$oid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryDDrive;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryDDrive$1;->this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

    iput-object p2, p0, Lcom/didi/frame/recovery/RecoveryDDrive$1;->val$oid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 143
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 144
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 67
    sget-object v7, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v7}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v4

    check-cast v4, Lcom/didi/ddrive/model/DDriveOrder;

    .line 68
    .local v4, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-object v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    iget-wide v7, v7, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->did:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 69
    iget-object v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    invoke-virtual {v7}, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->toDriver()Lcom/didi/ddrive/model/Driver;

    move-result-object v7

    iput-object v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    .line 70
    iget-object v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    iget-wide v7, v7, Lcom/didi/ddrive/model/Driver;->did:J

    iput-wide v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    .line 72
    :cond_0
    iget-object v7, p0, Lcom/didi/frame/recovery/RecoveryDDrive$1;->val$oid:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 73
    sget-object v3, Lcom/didi/ddrive/model/PayState;->NONE:Lcom/didi/ddrive/model/PayState;

    .line 74
    .local v3, mPayState:Lcom/didi/ddrive/model/PayState;
    sget-object v2, Lcom/didi/ddrive/model/OrderState;->NONE:Lcom/didi/ddrive/model/OrderState;

    .line 77
    .local v2, mOrderState:Lcom/didi/ddrive/model/OrderState;
    iget v5, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->payState:I

    .line 78
    .local v5, payStateCode:I
    sget-object v7, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    iget v7, v7, Lcom/didi/ddrive/model/PayState;->code:I

    if-le v5, v7, :cond_1

    .line 79
    sget-object v7, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    iget v5, v7, Lcom/didi/ddrive/model/PayState;->code:I

    .line 81
    :cond_1
    invoke-static {v5}, Lcom/didi/ddrive/model/PayState;->fromStateCode(I)Lcom/didi/ddrive/model/PayState;

    move-result-object v3

    iput-object v3, v4, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    .line 83
    iget v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->orderState:I

    invoke-static {v7}, Lcom/didi/ddrive/model/OrderState;->fromStateCode(I)Lcom/didi/ddrive/model/OrderState;

    move-result-object v2

    .line 84
    sget-object v7, Lcom/didi/ddrive/model/OrderState;->TIMEOUT:Lcom/didi/ddrive/model/OrderState;

    if-ne v2, v7, :cond_2

    .line 85
    iget-object v7, p0, Lcom/didi/frame/recovery/RecoveryDDrive$1;->this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

    #calls: Lcom/didi/frame/recovery/RecoveryDDrive;->rediectToResendFragment()V
    invoke-static {v7}, Lcom/didi/frame/recovery/RecoveryDDrive;->access$000(Lcom/didi/frame/recovery/RecoveryDDrive;)V

    .line 139
    :goto_0
    return-void

    .line 88
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 89
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 91
    iget v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->channel:I

    iput v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->channel:I

    .line 93
    iget v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->cancelType:I

    iput v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    .line 94
    iget-wide v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->totalFee:D

    iput-wide v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->payed:D

    .line 96
    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 97
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    sget-object v7, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    iput-object v7, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 98
    sget-object v7, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    iput-object v7, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 99
    iput-object v0, v4, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 100
    new-instance v6, Lcom/didi/common/model/Address;

    invoke-direct {v6}, Lcom/didi/common/model/Address;-><init>()V

    .line 101
    .local v6, startAddress:Lcom/didi/common/model/Address;
    iget-object v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->startPoiName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 102
    iget-object v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->startPoiAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 103
    iget-wide v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->startLat:D

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 104
    iget-wide v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->startLng:D

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 105
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    .line 106
    .local v1, endAddress:Lcom/didi/common/model/Address;
    iget-object v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->endPoiName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 107
    iget-object v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->endPoiAddress:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 108
    iget-wide v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->endLat:D

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 109
    iget-wide v7, p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->endLng:D

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 110
    invoke-virtual {v4, v6}, Lcom/didi/ddrive/model/DDriveOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 111
    invoke-virtual {v4, v1}, Lcom/didi/ddrive/model/DDriveOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 113
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/didi/ddrive/model/DDriveOrder;->isFromRecovery:Z

    .line 115
    invoke-static {v6}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 116
    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 118
    sget-object v7, Lcom/didi/frame/recovery/RecoveryDDrive$5;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    invoke-virtual {v2}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/ddrive/managers/OrderStateManager;->newOrder()V

    .line 121
    iget-object v7, p0, Lcom/didi/frame/recovery/RecoveryDDrive$1;->this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

    #calls: Lcom/didi/frame/recovery/RecoveryDDrive;->redirectToDDriveWaitForReq(Lcom/didi/ddrive/model/DDriveOrder;)V
    invoke-static {v7, v4}, Lcom/didi/frame/recovery/RecoveryDDrive;->access$100(Lcom/didi/frame/recovery/RecoveryDDrive;Lcom/didi/ddrive/model/DDriveOrder;)V

    goto/16 :goto_0

    .line 127
    :pswitch_1
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 128
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 129
    iget-object v7, p0, Lcom/didi/frame/recovery/RecoveryDDrive$1;->this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

    const/16 v8, 0x10

    #calls: Lcom/didi/frame/recovery/RecoveryDDrive;->redirectToDDriveWaitForArr(Lcom/didi/ddrive/model/DDriveOrder;I)V
    invoke-static {v7, v4, v8}, Lcom/didi/frame/recovery/RecoveryDDrive;->access$200(Lcom/didi/frame/recovery/RecoveryDDrive;Lcom/didi/ddrive/model/DDriveOrder;I)V

    goto/16 :goto_0

    .line 133
    :pswitch_2
    invoke-static {}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->getInstance()Lcom/didi/ddrive/managers/OrderRecoveryManager;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v3, v8}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->doRecoveryWithPayState(Lcom/didi/ddrive/model/PayState;I)V

    .line 134
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 135
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 136
    iget-object v7, p0, Lcom/didi/frame/recovery/RecoveryDDrive$1;->this$0:Lcom/didi/frame/recovery/RecoveryDDrive;

    const/16 v8, 0x40

    #calls: Lcom/didi/frame/recovery/RecoveryDDrive;->redirectToDDriveWaitForArr(Lcom/didi/ddrive/model/DDriveOrder;I)V
    invoke-static {v7, v4, v8}, Lcom/didi/frame/recovery/RecoveryDDrive;->access$200(Lcom/didi/frame/recovery/RecoveryDDrive;Lcom/didi/ddrive/model/DDriveOrder;I)V

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    check-cast p1, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/recovery/RecoveryDDrive$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderDetailInfo;)V

    return-void
.end method

.class public Lcom/didi/ddrive/managers/OrderRecoveryManager;
.super Lcom/didi/ddrive/managers/AbsManager;
.source "OrderRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/managers/OrderRecoveryManager$3;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OrderRecoveryManager"

.field public static sInstance:Lcom/didi/ddrive/managers/OrderRecoveryManager;


# instance fields
.field public mOrderState:Lcom/didi/ddrive/model/OrderState;

.field public mPayState:Lcom/didi/ddrive/model/PayState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/didi/ddrive/managers/AbsManager;-><init>()V

    .line 38
    sget-object v0, Lcom/didi/ddrive/model/OrderState;->NONE:Lcom/didi/ddrive/model/OrderState;

    iput-object v0, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    .line 39
    sget-object v0, Lcom/didi/ddrive/model/PayState;->NONE:Lcom/didi/ddrive/model/PayState;

    iput-object v0, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mPayState:Lcom/didi/ddrive/model/PayState;

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/OrderRecoveryManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->sInstance:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/didi/ddrive/managers/OrderRecoveryManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/OrderRecoveryManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->sInstance:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->sInstance:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    return-object v0
.end method


# virtual methods
.method public doRecoveryForGoingOrder()V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 201
    sget-object v0, Lcom/didi/ddrive/managers/OrderRecoveryManager$3;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 203
    :pswitch_0
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderStateManager;->newOrder()V

    .line 204
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForResponseFragment()V

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 211
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForArrivalFragment()V

    goto :goto_0

    .line 215
    :pswitch_2
    sget-object v0, Lcom/didi/ddrive/model/PayState;->UnPayed:Lcom/didi/ddrive/model/PayState;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->doRecoveryWithPayState(Lcom/didi/ddrive/model/PayState;I)V

    goto :goto_0

    .line 201
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

.method public doRecoveryWithOrderState(I)V
    .locals 3
    .parameter "from"

    .prologue
    .line 226
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 227
    sget-object v0, Lcom/didi/ddrive/managers/OrderRecoveryManager$3;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderStateManager;->newOrder()V

    .line 230
    const-string v0, "OrderRecoveryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Order State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForResponseFragment()V

    goto :goto_0

    .line 237
    :pswitch_1
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 238
    const-string v0, "OrderRecoveryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Order State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 240
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForArrivalFragment(I)V

    goto :goto_0

    .line 244
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->doRecoveryWithPayState(Lcom/didi/ddrive/model/PayState;I)V

    goto :goto_0

    .line 227
    nop

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

.method public doRecoveryWithPayState(Lcom/didi/ddrive/model/PayState;I)V
    .locals 4
    .parameter "state"
    .parameter "from"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mPayState:Lcom/didi/ddrive/model/PayState;

    if-eq p1, v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 261
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-object v1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mPayState:Lcom/didi/ddrive/model/PayState;

    iput-object v1, v0, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    .line 262
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 263
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 264
    const-string v1, "OrderRecoveryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Order State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "OrderRecoveryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Pay State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mPayState:Lcom/didi/ddrive/model/PayState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForArrivalFragment(I)V

    goto :goto_0
.end method

.method public queryLastOrder()V
    .locals 5

    .prologue
    .line 58
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/didi/ddrive/net/http/request/LastOrderRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/LastOrderRequest;-><init>()V

    .line 63
    .local v1, request:Lcom/didi/ddrive/net/http/request/LastOrderRequest;
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 64
    .local v0, mgr:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v2, "OrderRecoveryManager"

    new-instance v3, Lcom/didi/ddrive/managers/OrderRecoveryManager$1;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/OrderRecoveryManager$1;-><init>(Lcom/didi/ddrive/managers/OrderRecoveryManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/LastOrderResponse;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public queryLastOrder(Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
            "<",
            "Lcom/didi/ddrive/net/http/response/LastOrderResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener<Lcom/didi/ddrive/net/http/response/LastOrderResponse;>;"
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getBizSwitch()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 103
    new-instance v1, Lcom/didi/ddrive/net/http/request/LastOrderRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/LastOrderRequest;-><init>()V

    .line 105
    .local v1, request:Lcom/didi/ddrive/net/http/request/LastOrderRequest;
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 106
    .local v0, mgr:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v2, "OrderRecoveryManager"

    const-class v3, Lcom/didi/ddrive/net/http/response/LastOrderResponse;

    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public queryOrderDetail()V
    .locals 2

    .prologue
    .line 110
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->queryOrderDetail(J)V

    .line 111
    return-void
.end method

.method public queryOrderDetail(J)V
    .locals 6
    .parameter "oid"

    .prologue
    .line 117
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 118
    .local v1, order:Lcom/didi/ddrive/model/DDriveOrder;
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 119
    iget-wide p1, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 123
    :goto_0
    new-instance v2, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;-><init>()V

    .line 124
    .local v2, request:Lcom/didi/ddrive/net/http/request/OrderDetailRequest;
    iput-wide p1, v2, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;->oid:J

    .line 125
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 126
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "OrderRecoveryManager"

    new-instance v4, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;

    invoke-direct {v4, p0, v1}, Lcom/didi/ddrive/managers/OrderRecoveryManager$2;-><init>(Lcom/didi/ddrive/managers/OrderRecoveryManager;Lcom/didi/ddrive/model/DDriveOrder;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 181
    return-void

    .line 121
    .end local v0           #httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    .end local v2           #request:Lcom/didi/ddrive/net/http/request/OrderDetailRequest;
    :cond_0
    iput-wide p1, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    goto :goto_0
.end method

.method public queryOrderDetail(JLcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V
    .locals 5
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
            "<",
            "Lcom/didi/ddrive/net/http/response/OrderDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p3, listener:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;,"Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener<Lcom/didi/ddrive/net/http/response/OrderDetailInfo;>;"
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 185
    .local v1, order:Lcom/didi/ddrive/model/DDriveOrder;
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 186
    iget-wide p1, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 190
    :goto_0
    new-instance v2, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;-><init>()V

    .line 191
    .local v2, request:Lcom/didi/ddrive/net/http/request/OrderDetailRequest;
    iput-wide p1, v2, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;->oid:J

    .line 192
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 193
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "OrderRecoveryManager"

    const-class v4, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    invoke-virtual {v0, v3, v2, p3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 194
    return-void

    .line 188
    .end local v0           #httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    .end local v2           #request:Lcom/didi/ddrive/net/http/request/OrderDetailRequest;
    :cond_0
    iput-wide p1, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/ddrive/managers/OrderRecoveryManager;->sInstance:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    .line 48
    return-void
.end method

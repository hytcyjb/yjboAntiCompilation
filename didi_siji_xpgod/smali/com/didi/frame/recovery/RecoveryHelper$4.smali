.class Lcom/didi/frame/recovery/RecoveryHelper$4;
.super Ljava/lang/Object;
.source "RecoveryHelper.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryHelper;->recoveryCheck(Lcom/didi/common/model/RecoveryConfig;)V
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
        "Lcom/didi/ddrive/net/http/response/LastOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryHelper;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryHelper$4;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 300
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/LastOrderResponse;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 259
    sget-object v5, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 260
    .local v1, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-wide v5, p1, Lcom/didi/ddrive/net/http/response/LastOrderResponse;->did:J

    iput-wide v5, v1, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    .line 261
    iget-wide v5, p1, Lcom/didi/ddrive/net/http/response/LastOrderResponse;->oid:J

    iput-wide v5, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 263
    new-instance v2, Lcom/didi/common/model/RecoveryConfig;

    invoke-direct {v2}, Lcom/didi/common/model/RecoveryConfig;-><init>()V

    .line 264
    .local v2, reConfig:Lcom/didi/common/model/RecoveryConfig;
    iget-wide v5, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 265
    sget-object v5, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    iput-object v5, v2, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    .line 266
    iget-object v5, p0, Lcom/didi/frame/recovery/RecoveryHelper$4;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    #getter for: Lcom/didi/frame/recovery/RecoveryHelper;->mSupportedBusiness:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/didi/frame/recovery/RecoveryHelper;->access$200(Lcom/didi/frame/recovery/RecoveryHelper;)Ljava/util/HashMap;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/frame/recovery/RecoveryBusiness;

    .line 267
    .local v3, recoveryBusiness:Lcom/didi/frame/recovery/RecoveryBusiness;
    if-nez v3, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->isCarWaitForArrivalFragment()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->isTaxiWaitForArrivalFragment()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->isDDriveWaitForArrivalFragment()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->isDDriveWaitForResponseFragment()Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    iget-object v5, p0, Lcom/didi/frame/recovery/RecoveryHelper$4;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    #getter for: Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/didi/frame/recovery/RecoveryHelper;->access$100(Lcom/didi/frame/recovery/RecoveryHelper;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 277
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_2

    instance-of v5, v0, Lcom/didi/frame/MainActivity;

    if-eqz v5, :cond_2

    .line 278
    check-cast v0, Lcom/didi/frame/MainActivity;

    .end local v0           #act:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->hideMenu()V

    .line 280
    :cond_2
    iget v5, p1, Lcom/didi/ddrive/net/http/response/LastOrderResponse;->orderState:I

    invoke-static {v5}, Lcom/didi/ddrive/model/OrderState;->fromStateCode(I)Lcom/didi/ddrive/model/OrderState;

    move-result-object v4

    .line 281
    .local v4, state:Lcom/didi/ddrive/model/OrderState;
    sget-object v5, Lcom/didi/frame/recovery/RecoveryHelper$5;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    invoke-virtual {v4}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    const/4 v5, 0x1

    iput v5, v2, Lcom/didi/common/model/RecoveryConfig;->type:I

    .line 284
    iget-object v5, p0, Lcom/didi/frame/recovery/RecoveryHelper$4;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    invoke-virtual {v5, v3, v2}, Lcom/didi/frame/recovery/RecoveryHelper;->showConfirmDialog(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)V

    goto :goto_0

    .line 291
    :pswitch_1
    const/4 v5, 0x2

    iput v5, v2, Lcom/didi/common/model/RecoveryConfig;->type:I

    .line 292
    iget-object v5, p0, Lcom/didi/frame/recovery/RecoveryHelper$4;->this$0:Lcom/didi/frame/recovery/RecoveryHelper;

    invoke-virtual {v5, v3, v2}, Lcom/didi/frame/recovery/RecoveryHelper;->showConfirmDialog(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 255
    check-cast p1, Lcom/didi/ddrive/net/http/response/LastOrderResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/recovery/RecoveryHelper$4;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/LastOrderResponse;)V

    return-void
.end method

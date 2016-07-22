.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiHistoryOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 392
    check-cast p1, Lcom/didi/taxi/model/TaxiHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;->onFail(Lcom/didi/taxi/model/TaxiHistoryOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/taxi/model/TaxiHistoryOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 498
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 499
    const v0, 0x7f0b035c

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 500
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 501
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 392
    check-cast p1, Lcom/didi/taxi/model/TaxiHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;->onFinish(Lcom/didi/taxi/model/TaxiHistoryOrder;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiHistoryOrder;)V
    .locals 11
    .parameter "t"

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v7, 0x7

    .line 394
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 395
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiHistoryOrder;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    new-instance v4, Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {v4}, Lcom/didi/taxi/model/TaxiOrder;-><init>()V

    .line 399
    .local v4, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->isMmt:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateMark(I)V

    .line 400
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->evacontent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateContent(Ljava/lang/String;)V

    .line 401
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->evastar:Ljava/lang/String;

    invoke-static {v5}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 402
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->evastar:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateScore(I)V

    .line 404
    :cond_2
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiPayShare:Lcom/didi/taxi/model/TaxiPayShare;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setShare(Lcom/didi/taxi/model/TaxiPayShare;)V

    .line 405
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->mRed:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setRedRecord(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V

    .line 406
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->tip:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setTip(I)V

    .line 407
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setLove(Lcom/didi/taxi/model/TaxiLove;)V

    .line 408
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setTaxiDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 409
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->closed:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setClosed(I)V

    .line 410
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setCoupon(Lcom/didi/taxi/model/TaxiCoupon;)V

    .line 411
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->noneed:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setNoneed(I)V

    .line 412
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cpnstate:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setComplaintState(I)V

    .line 413
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cpncontent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setComplaintContent(Ljava/lang/String;)V

    .line 414
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->foundUrl:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    .line 415
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->foundVersion:I

    iput v5, v4, Lcom/didi/taxi/model/TaxiOrder;->foundVersion:I

    .line 416
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->tipFee:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setTipFee(Ljava/lang/String;)V

    .line 417
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->imSwitch:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setImSwitch(I)V

    .line 419
    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 420
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget-wide v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->departureTime:J

    iput-wide v5, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 421
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->type:I

    if-nez v5, :cond_4

    sget-object v5, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    :goto_1
    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 422
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->oid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 423
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityName:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 424
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->status:I

    iput v5, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 425
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 426
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityName:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 427
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->input:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    sget-object v5, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    :goto_2
    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 428
    invoke-virtual {v4, v0}, Lcom/didi/taxi/model/TaxiOrder;->setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V

    .line 429
    new-instance v3, Lcom/didi/common/model/Address;

    invoke-direct {v3}, Lcom/didi/common/model/Address;-><init>()V

    .line 430
    .local v3, startAddress:Lcom/didi/common/model/Address;
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 431
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 432
    iget-object v5, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    sget-object v6, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v5, v6, :cond_7

    .line 433
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlat:Ljava/lang/String;

    iput-object v5, v3, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 434
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlng:Ljava/lang/String;

    iput-object v5, v3, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 439
    :goto_3
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v3, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 440
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    .line 441
    .local v1, endAddress:Lcom/didi/common/model/Address;
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->toAddress:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 442
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->toName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 443
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolat:Ljava/lang/String;

    iput-object v5, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 444
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolng:Ljava/lang/String;

    iput-object v5, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 445
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v1, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 446
    invoke-virtual {v4, v3}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 447
    invoke-virtual {v4, v1}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 448
    invoke-virtual {v4, v8}, Lcom/didi/taxi/model/TaxiOrder;->setUseDepart(Z)V

    .line 451
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->isVip:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setIsVip(I)V

    .line 452
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->vipPayStatus:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setVipPayStatus(I)V

    .line 453
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 454
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->isOrderFinished:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setIsOrderFinished(I)V

    .line 457
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->carPoolType:I

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setTrip_type(I)V

    .line 459
    sget-object v5, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v5, v4}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 460
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getClosed()I

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOrderStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 461
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v5, v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->startActivity(Landroid/content/Intent;)V

    .line 463
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->clearMap()V
    invoke-static {v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$700(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    goto/16 :goto_0

    .line 421
    .end local v1           #endAddress:Lcom/didi/common/model/Address;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #startAddress:Lcom/didi/common/model/Address;
    :cond_4
    sget-object v5, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    goto/16 :goto_1

    .line 427
    :cond_5
    iget v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->input:I

    if-nez v5, :cond_6

    sget-object v5, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    goto/16 :goto_2

    :cond_6
    sget-object v5, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    goto/16 :goto_2

    .line 436
    .restart local v3       #startAddress:Lcom/didi/common/model/Address;
    :cond_7
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    iput-object v5, v3, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 437
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    iput-object v5, v3, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto/16 :goto_3

    .line 466
    .restart local v1       #endAddress:Lcom/didi/common/model/Address;
    :cond_8
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v5, v6, :cond_a

    .line 467
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->clearMap()V
    invoke-static {v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$700(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 469
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOrderStatus()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateMark()I

    move-result v5

    if-eq v5, v8, :cond_9

    .line 472
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5, v9, v7}, Lcom/didi/frame/FragmentMgr;->showTaxiWaitForArrivalFragment(II)V

    goto/16 :goto_0

    .line 476
    :cond_9
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5, v10, v7}, Lcom/didi/frame/FragmentMgr;->showTaxiWaitForArrivalFragment(II)V

    goto/16 :goto_0

    .line 480
    :cond_a
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v5, v6, :cond_0

    .line 481
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->clearMap()V
    invoke-static {v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$700(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    .line 483
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v5

    iget v5, v5, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateMark()I

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;

    move-result-object v5

    if-nez v5, :cond_b

    .line 485
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5, v9, v7}, Lcom/didi/frame/FragmentMgr;->showTaxiWaitForArrivalFragment(II)V

    goto/16 :goto_0

    .line 488
    :cond_b
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5, v10, v7}, Lcom/didi/frame/FragmentMgr;->showTaxiWaitForArrivalFragment(II)V

    goto/16 :goto_0
.end method

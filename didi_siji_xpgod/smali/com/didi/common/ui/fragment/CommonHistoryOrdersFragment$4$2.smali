.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;
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
        "Lcom/didi/car/model/CarHistoryOrder;",
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
    .line 505
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/didi/car/model/CarHistoryOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 633
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 634
    const v0, 0x7f0b035c

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 635
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 636
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 505
    check-cast p1, Lcom/didi/car/model/CarHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;->onFail(Lcom/didi/car/model/CarHistoryOrder;)V

    return-void
.end method

.method public onFinish(Lcom/didi/car/model/CarHistoryOrder;)V
    .locals 10
    .parameter "t"

    .prologue
    const/16 v9, 0x10

    const/4 v6, 0x0

    .line 508
    invoke-virtual {p1}, Lcom/didi/car/model/CarHistoryOrder;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 509
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    new-instance v0, Lcom/didi/car/model/CarOrder;

    invoke-direct {v0}, Lcom/didi/car/model/CarOrder;-><init>()V

    .line 514
    .local v0, carOrder:Lcom/didi/car/model/CarOrder;
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->isCmt:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->evaluateMark:I

    .line 515
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->isPay:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->isPay:I

    .line 516
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->evacontent:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->evaluateContent:Ljava/lang/String;

    .line 517
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->evastar:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->evaluateScore:I

    .line 518
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->share:Lcom/didi/car/model/CarPayShare;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 519
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->tip:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->tip:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    iput v5, v0, Lcom/didi/car/model/CarOrder;->tip:I

    .line 520
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->extraInfo:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    .line 521
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->driver:Lcom/didi/car/model/CarDriver;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 522
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 523
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 524
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->isCancel:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->isCancel:I

    .line 525
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->closeTips:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->cancelOrderTip:Ljava/lang/String;

    .line 526
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->feedbackTips:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->feedbackTips:Ljava/lang/String;

    .line 527
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->feedback:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->feedback:I

    .line 528
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->feedbackTitle:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->feedbackTitle:Ljava/lang/String;

    .line 529
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->payType:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->payType:I

    .line 530
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->cpnstate:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->complaintState:I

    .line 531
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->statusTitle:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->statusTitle:Ljava/lang/String;

    .line 532
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->cpncontent:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->complaintContent:Ljava/lang/String;

    .line 533
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->substatus:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->substatus:I

    .line 534
    iget-wide v7, p1, Lcom/didi/car/model/CarHistoryOrder;->createTime:J

    iput-wide v7, v0, Lcom/didi/car/model/CarOrder;->createTime:J

    .line 535
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->carModelList:Ljava/util/List;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 536
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->disTrict:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/didi/car/model/CarOrder;->setHistoryDistrict(Ljava/lang/String;)V

    .line 538
    new-instance v1, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v1}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 539
    .local v1, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->type:I

    if-nez v5, :cond_5

    sget-object v5, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    :goto_2
    iput-object v5, v1, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 540
    iget-wide v7, p1, Lcom/didi/car/model/CarHistoryOrder;->departureTime:J

    iput-wide v7, v1, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 541
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->oid:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    .line 542
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->cityName:Ljava/lang/String;

    iput-object v5, v1, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 543
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->status:I

    iput v5, v1, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 544
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v1, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 545
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->input:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_6

    sget-object v5, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    :goto_3
    iput-object v5, v1, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 546
    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 547
    new-instance v4, Lcom/didi/common/model/Address;

    invoke-direct {v4}, Lcom/didi/common/model/Address;-><init>()V

    .line 548
    .local v4, startAddress:Lcom/didi/common/model/Address;
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->fName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->from:Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 549
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->from:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 550
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->fromlat:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 551
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 552
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 553
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 554
    new-instance v2, Lcom/didi/common/model/Address;

    invoke-direct {v2}, Lcom/didi/common/model/Address;-><init>()V

    .line 555
    .local v2, endAddress:Lcom/didi/common/model/Address;
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->tName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->to:Ljava/lang/String;

    :goto_5
    invoke-virtual {v2, v5}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 556
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->to:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 557
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->tolat:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 558
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->tolng:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 559
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 560
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tolat="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tolng="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "todepartureTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p1, Lcom/didi/car/model/CarHistoryOrder;->departureTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0, v4}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 565
    invoke-virtual {v0, v2}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 566
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->pushTips:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->pushTips:Ljava/lang/String;

    .line 567
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->bubbleInfo:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->bubbleInfo:Ljava/lang/String;

    .line 568
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->driverNum:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->driverNum:I

    .line 570
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->pricingModel:I

    iput v5, v0, Lcom/didi/car/model/CarOrder;->pricingModel:I

    .line 574
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->extraInfo:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 575
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->extraInfo:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/common/helper/RemarkHelper;->setRemark(Ljava/lang/String;)V

    .line 578
    :cond_2
    invoke-static {v4}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 579
    invoke-static {v2}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 581
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->status:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 582
    new-instance v3, Lcom/didi/car/model/CarOrderState;

    invoke-direct {v3}, Lcom/didi/car/model/CarOrderState;-><init>()V

    .line 583
    .local v3, orderState:Lcom/didi/car/model/CarOrderState;
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->carPosition:Lcom/didi/car/model/CarPosition;

    iput-object v5, v3, Lcom/didi/car/model/CarOrderState;->position:Lcom/didi/car/model/CarPosition;

    .line 584
    iput-object v3, v0, Lcom/didi/car/model/CarOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    .line 587
    .end local v3           #orderState:Lcom/didi/car/model/CarOrderState;
    :cond_3
    iget v5, v1, Lcom/didi/common/model/CommonAttributes;->status:I

    packed-switch v5, :pswitch_data_0

    .line 623
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto/16 :goto_0

    .end local v1           #commonAttri:Lcom/didi/common/model/CommonAttributes;
    .end local v2           #endAddress:Lcom/didi/common/model/Address;
    .end local v4           #startAddress:Lcom/didi/common/model/Address;
    :cond_4
    move v5, v6

    .line 519
    goto/16 :goto_1

    .line 539
    .restart local v1       #commonAttri:Lcom/didi/common/model/CommonAttributes;
    :cond_5
    sget-object v5, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    goto/16 :goto_2

    .line 545
    :cond_6
    iget v5, p1, Lcom/didi/car/model/CarHistoryOrder;->input:I

    if-nez v5, :cond_7

    sget-object v5, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    goto/16 :goto_3

    :cond_7
    sget-object v5, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    goto/16 :goto_3

    .line 548
    .restart local v4       #startAddress:Lcom/didi/common/model/Address;
    :cond_8
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->fName:Ljava/lang/String;

    goto/16 :goto_4

    .line 555
    .restart local v2       #endAddress:Lcom/didi/common/model/Address;
    :cond_9
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->tName:Ljava/lang/String;

    goto/16 :goto_5

    .line 589
    :pswitch_0
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForReq(Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V
    invoke-static {v5, p1, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V

    goto/16 :goto_0

    .line 592
    :pswitch_1
    new-instance v3, Lcom/didi/car/model/CarOrderState;

    invoke-direct {v3}, Lcom/didi/car/model/CarOrderState;-><init>()V

    .line 593
    .restart local v3       #orderState:Lcom/didi/car/model/CarOrderState;
    iput v6, v3, Lcom/didi/car/model/CarOrderState;->consultStatus:I

    .line 594
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->carConsultInfo:Lcom/didi/car/model/CarConsultInfo;

    iput-object v5, v3, Lcom/didi/car/model/CarOrderState;->consultInfo:Lcom/didi/car/model/CarConsultInfo;

    .line 595
    iput-object v3, v0, Lcom/didi/car/model/CarOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    .line 596
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const-string v6, "history_consult_click"

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
    invoke-static {v5, v6, p1, v0, v9}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V

    goto/16 :goto_0

    .line 599
    .end local v3           #orderState:Lcom/didi/car/model/CarOrderState;
    :pswitch_2
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    .line 600
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .line 602
    :pswitch_3
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const-string v6, "history_doing_click"

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
    invoke-static {v5, v6, p1, v0, v9}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V

    goto/16 :goto_0

    .line 606
    :pswitch_4
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const-string v6, "history_cancel_click"

    const/16 v7, 0x20

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
    invoke-static {v5, v6, p1, v0, v7}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V

    goto/16 :goto_0

    .line 612
    :pswitch_5
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    if-eqz v5, :cond_a

    .line 613
    iget-object v5, p1, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    iput-object v5, v0, Lcom/didi/car/model/CarOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    .line 616
    :cond_a
    iget-object v5, v0, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    if-eqz v5, :cond_0

    .line 617
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const-string v6, "history_pay_click"

    const/16 v7, 0x30

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
    invoke-static {v5, v6, p1, v0, v7}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V

    goto/16 :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 505
    check-cast p1, Lcom/didi/car/model/CarHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;->onFinish(Lcom/didi/car/model/CarHistoryOrder;)V

    return-void
.end method

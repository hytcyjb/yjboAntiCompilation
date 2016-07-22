.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;
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
        "Lcom/didi/flier/model/FlierHistoryOrder;",
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
    .line 640
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 640
    check-cast p1, Lcom/didi/flier/model/FlierHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;->onFail(Lcom/didi/flier/model/FlierHistoryOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/flier/model/FlierHistoryOrder;)V
    .locals 1
    .parameter "flierHistoryOrder"

    .prologue
    .line 766
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 767
    const v0, 0x7f0b035c

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 768
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 769
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 640
    check-cast p1, Lcom/didi/flier/model/FlierHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;->onFinish(Lcom/didi/flier/model/FlierHistoryOrder;)V

    return-void
.end method

.method public onFinish(Lcom/didi/flier/model/FlierHistoryOrder;)V
    .locals 10
    .parameter "t"

    .prologue
    const/16 v9, 0x10

    const/4 v6, 0x0

    .line 644
    invoke-virtual {p1}, Lcom/didi/flier/model/FlierHistoryOrder;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 645
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    new-instance v2, Lcom/didi/flier/model/FlierOrder;

    invoke-direct {v2}, Lcom/didi/flier/model/FlierOrder;-><init>()V

    .line 650
    .local v2, order:Lcom/didi/flier/model/FlierOrder;
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->isCmt:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->evaluateMark:I

    .line 651
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->isPay:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->isPay:I

    .line 652
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->evacontent:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->evaluateContent:Ljava/lang/String;

    .line 653
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->evastar:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->evaluateScore:I

    .line 654
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->share:Lcom/didi/car/model/CarPayShare;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 655
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->tip:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->tip:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->tip:I

    .line 656
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->extraInfo:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->remark:Ljava/lang/String;

    .line 657
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->driver:Lcom/didi/car/model/CarDriver;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 658
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 659
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 660
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->isCancel:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->isCancel:I

    .line 661
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->closeTips:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->cancelOrderTip:Ljava/lang/String;

    .line 662
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->feedbackTips:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->feedbackTips:Ljava/lang/String;

    .line 663
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->feedback:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->feedback:I

    .line 664
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->feedbackTitle:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->feedbackTitle:Ljava/lang/String;

    .line 665
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->payType:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->payType:I

    .line 666
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->cpnstate:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->complaintState:I

    .line 667
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->statusTitle:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->statusTitle:Ljava/lang/String;

    .line 668
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->cpncontent:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->complaintContent:Ljava/lang/String;

    .line 669
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->substatus:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->substatus:I

    .line 670
    iget-wide v7, p1, Lcom/didi/flier/model/FlierHistoryOrder;->createTime:J

    iput-wide v7, v2, Lcom/didi/flier/model/FlierOrder;->createTime:J

    .line 671
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->carModelList:Ljava/util/List;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    .line 672
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->disTrict:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/didi/flier/model/FlierOrder;->setHistoryDistrict(Ljava/lang/String;)V

    .line 674
    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 675
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->type:I

    if-nez v5, :cond_5

    sget-object v5, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    :goto_2
    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 676
    iget-wide v7, p1, Lcom/didi/flier/model/FlierHistoryOrder;->departureTime:J

    iput-wide v7, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 677
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->oid:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->oid:Ljava/lang/String;

    .line 678
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->cityName:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 679
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->status:I

    iput v5, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 680
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 681
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->input:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_6

    sget-object v5, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    :goto_3
    iput-object v5, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 682
    iput-object v0, v2, Lcom/didi/flier/model/FlierOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 683
    new-instance v4, Lcom/didi/common/model/Address;

    invoke-direct {v4}, Lcom/didi/common/model/Address;-><init>()V

    .line 684
    .local v4, startAddress:Lcom/didi/common/model/Address;
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->fName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->from:Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 685
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->from:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 686
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->fromlat:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 687
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->fromlng:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 688
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 689
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 690
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    .line 691
    .local v1, endAddress:Lcom/didi/common/model/Address;
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->tName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->to:Ljava/lang/String;

    :goto_5
    invoke-virtual {v1, v5}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 692
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->to:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 693
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->tolat:Ljava/lang/String;

    iput-object v5, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 694
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->tolng:Ljava/lang/String;

    iput-object v5, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 695
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->area:Ljava/lang/String;

    iput-object v5, v1, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 696
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tolat="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tolng="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 699
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "todepartureTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p1, Lcom/didi/flier/model/FlierHistoryOrder;->departureTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v2, v4}, Lcom/didi/flier/model/FlierOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 701
    invoke-virtual {v2, v1}, Lcom/didi/flier/model/FlierOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 702
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->pushTips:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->pushTips:Ljava/lang/String;

    .line 703
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->bubbleInfo:Ljava/lang/String;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->bubbleInfo:Ljava/lang/String;

    .line 704
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->driverNum:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->driverNum:I

    .line 706
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->pricingModel:I

    iput v5, v2, Lcom/didi/flier/model/FlierOrder;->pricingModel:I

    .line 710
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->extraInfo:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 711
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->extraInfo:Ljava/lang/String;

    invoke-static {v5}, Lcom/didi/common/helper/RemarkHelper;->setRemark(Ljava/lang/String;)V

    .line 714
    :cond_2
    invoke-static {v4}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 715
    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 717
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->status:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 718
    new-instance v3, Lcom/didi/car/model/CarOrderState;

    invoke-direct {v3}, Lcom/didi/car/model/CarOrderState;-><init>()V

    .line 719
    .local v3, orderState:Lcom/didi/car/model/CarOrderState;
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->carPosition:Lcom/didi/car/model/CarPosition;

    iput-object v5, v3, Lcom/didi/car/model/CarOrderState;->position:Lcom/didi/car/model/CarPosition;

    .line 720
    iput-object v3, v2, Lcom/didi/flier/model/FlierOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    .line 723
    .end local v3           #orderState:Lcom/didi/car/model/CarOrderState;
    :cond_3
    iget v5, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    packed-switch v5, :pswitch_data_0

    .line 759
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto/16 :goto_0

    .end local v0           #commonAttri:Lcom/didi/common/model/CommonAttributes;
    .end local v1           #endAddress:Lcom/didi/common/model/Address;
    .end local v4           #startAddress:Lcom/didi/common/model/Address;
    :cond_4
    move v5, v6

    .line 655
    goto/16 :goto_1

    .line 675
    .restart local v0       #commonAttri:Lcom/didi/common/model/CommonAttributes;
    :cond_5
    sget-object v5, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    goto/16 :goto_2

    .line 681
    :cond_6
    iget v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->input:I

    if-nez v5, :cond_7

    sget-object v5, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    goto/16 :goto_3

    :cond_7
    sget-object v5, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    goto/16 :goto_3

    .line 684
    .restart local v4       #startAddress:Lcom/didi/common/model/Address;
    :cond_8
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->fName:Ljava/lang/String;

    goto/16 :goto_4

    .line 691
    .restart local v1       #endAddress:Lcom/didi/common/model/Address;
    :cond_9
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->tName:Ljava/lang/String;

    goto/16 :goto_5

    .line 725
    :pswitch_0
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToFlierWaitForReq(Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V
    invoke-static {v5, p1, v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V

    goto/16 :goto_0

    .line 728
    :pswitch_1
    new-instance v3, Lcom/didi/car/model/CarOrderState;

    invoke-direct {v3}, Lcom/didi/car/model/CarOrderState;-><init>()V

    .line 729
    .restart local v3       #orderState:Lcom/didi/car/model/CarOrderState;
    iput v6, v3, Lcom/didi/car/model/CarOrderState;->consultStatus:I

    .line 730
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->carConsultInfo:Lcom/didi/car/model/CarConsultInfo;

    iput-object v5, v3, Lcom/didi/car/model/CarOrderState;->consultInfo:Lcom/didi/car/model/CarConsultInfo;

    .line 731
    iput-object v3, v2, Lcom/didi/flier/model/FlierOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    .line 732
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const-string v6, "history_consult_click"

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToFlierWaitForArr(Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V
    invoke-static {v5, v6, p1, v2, v9}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V

    goto/16 :goto_0

    .line 735
    .end local v3           #orderState:Lcom/didi/car/model/CarOrderState;
    :pswitch_2
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    .line 736
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .line 738
    :pswitch_3
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const-string v6, "history_doing_click"

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToFlierWaitForArr(Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V
    invoke-static {v5, v6, p1, v2, v9}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V

    goto/16 :goto_0

    .line 742
    :pswitch_4
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const-string v6, "history_cancel_click"

    const/16 v7, 0x20

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToFlierWaitForArr(Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V
    invoke-static {v5, v6, p1, v2, v7}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V

    goto/16 :goto_0

    .line 748
    :pswitch_5
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    if-eqz v5, :cond_a

    .line 749
    iget-object v5, p1, Lcom/didi/flier/model/FlierHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    iput-object v5, v2, Lcom/didi/flier/model/FlierOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    .line 752
    :cond_a
    iget-object v5, v2, Lcom/didi/flier/model/FlierOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    if-eqz v5, :cond_0

    .line 753
    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;->this$1:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const-string v6, "history_pay_click"

    const/16 v7, 0x30

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToFlierWaitForArr(Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V
    invoke-static {v5, v6, p1, v2, v7}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V

    goto/16 :goto_0

    .line 723
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

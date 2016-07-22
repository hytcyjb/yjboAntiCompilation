.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onQueryOrderDetail()V
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
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarHistoryOrder;)V
    .locals 10
    .parameter "t"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2026
    invoke-virtual {p1}, Lcom/didi/car/model/CarHistoryOrder;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2103
    :cond_0
    :goto_0
    return-void

    .line 2029
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/didi/common/receiver/NetReceiver;->setNetListener(Lcom/didi/common/receiver/NetReceiver$NetListener;)V

    .line 2030
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagPayResultQuery:Z
    invoke-static {v3, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2402(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z

    .line 2032
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->isCmt:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->evaluateMark:I

    .line 2033
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->isPay:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->isPay:I

    .line 2034
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->evacontent:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->evaluateContent:Ljava/lang/String;

    .line 2035
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->evastar:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->evaluateScore:I

    .line 2036
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->share:Lcom/didi/car/model/CarPayShare;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 2037
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v6

    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->tip:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->tip:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    iput v3, v6, Lcom/didi/car/model/CarOrder;->tip:I

    .line 2038
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->extraInfo:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    .line 2039
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->driver:Lcom/didi/car/model/CarDriver;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 2040
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 2041
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 2042
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->isCancel:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->isCancel:I

    .line 2043
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->closeTips:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->cancelOrderTip:Ljava/lang/String;

    .line 2044
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->feedbackTips:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->feedbackTips:Ljava/lang/String;

    .line 2045
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->feedback:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->feedback:I

    .line 2046
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->feedbackTitle:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->feedbackTitle:Ljava/lang/String;

    .line 2047
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->payType:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->payType:I

    .line 2048
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->cpnstate:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->complaintState:I

    .line 2049
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->statusTitle:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->statusTitle:Ljava/lang/String;

    .line 2050
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->cpncontent:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->complaintContent:Ljava/lang/String;

    .line 2051
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->substatus:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->substatus:I

    .line 2052
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-wide v6, p1, Lcom/didi/car/model/CarHistoryOrder;->createTime:J

    iput-wide v6, v3, Lcom/didi/car/model/CarOrder;->createTime:J

    .line 2053
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->carModelList:Ljava/util/List;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 2055
    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 2056
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget v3, p1, Lcom/didi/car/model/CarHistoryOrder;->type:I

    if-nez v3, :cond_7

    sget-object v3, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    :goto_2
    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 2057
    iget-wide v6, p1, Lcom/didi/car/model/CarHistoryOrder;->departureTime:J

    iput-wide v6, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 2058
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->oid:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    .line 2059
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->cityName:Ljava/lang/String;

    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 2060
    iget v3, p1, Lcom/didi/car/model/CarHistoryOrder;->status:I

    iput v3, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 2061
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->area:Ljava/lang/String;

    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 2062
    iget v3, p1, Lcom/didi/car/model/CarHistoryOrder;->input:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_8

    sget-object v3, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    :goto_3
    iput-object v3, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 2063
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iput-object v0, v3, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 2064
    new-instance v2, Lcom/didi/common/model/Address;

    invoke-direct {v2}, Lcom/didi/common/model/Address;-><init>()V

    .line 2065
    .local v2, startAddress:Lcom/didi/common/model/Address;
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->fName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->from:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v3}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 2066
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->from:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 2067
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->fromlat:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 2068
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 2069
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->area:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 2070
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 2071
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    .line 2072
    .local v1, endAddress:Lcom/didi/common/model/Address;
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->tName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->to:Ljava/lang/String;

    :goto_5
    invoke-virtual {v1, v3}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 2073
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->to:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 2074
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->tolat:Ljava/lang/String;

    iput-object v3, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 2075
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->tolng:Ljava/lang/String;

    iput-object v3, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 2076
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->area:Ljava/lang/String;

    iput-object v3, v1, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 2077
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 2078
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 2079
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 2080
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->pushTips:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->pushTips:Ljava/lang/String;

    .line 2081
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->bubbleInfo:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->bubbleInfo:Ljava/lang/String;

    .line 2082
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget v6, p1, Lcom/didi/car/model/CarHistoryOrder;->driverNum:I

    iput v6, v3, Lcom/didi/car/model/CarOrder;->driverNum:I

    .line 2083
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iput-boolean v4, v3, Lcom/didi/car/model/CarOrder;->isFromRecovery:Z

    .line 2085
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->extraInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2086
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->extraInfo:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/helper/RemarkHelper;->setRemark(Ljava/lang/String;)V

    .line 2089
    :cond_2
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    if-eqz v3, :cond_3

    .line 2090
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v6, p1, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    iput-object v6, v3, Lcom/didi/car/model/CarOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    .line 2093
    :cond_3
    iget v3, p1, Lcom/didi/car/model/CarHistoryOrder;->status:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_4

    iget v3, p1, Lcom/didi/car/model/CarHistoryOrder;->status:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    .line 2094
    :cond_4
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsPayDetailShown:Z
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2095
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsPayDetailShown:Z
    invoke-static {v3, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2502(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z

    .line 2096
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    if-eqz v3, :cond_0

    .line 2097
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
    invoke-static {v6}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v7}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v7

    iget-object v8, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v8}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v8

    iget-object v8, v8, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    iget-object v9, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v9}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v9

    iget v9, v9, Lcom/didi/car/model/CarOrder;->isPay:I

    if-ne v9, v5, :cond_5

    move v4, v5

    :cond_5
    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPayOrPaidEvaluateService(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarPayResult;Z)V
    invoke-static {v3, v6, v7, v8, v4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarPayResult;Z)V

    .line 2098
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarNotificationCountHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {v3, v4}, Lcom/didi/car/helper/CarNotificationCountHelper;->costDetail(Lcom/didi/car/model/FeeDetail;)V

    goto/16 :goto_0

    .end local v0           #commonAttri:Lcom/didi/common/model/CommonAttributes;
    .end local v1           #endAddress:Lcom/didi/common/model/Address;
    .end local v2           #startAddress:Lcom/didi/common/model/Address;
    :cond_6
    move v3, v4

    .line 2037
    goto/16 :goto_1

    .line 2056
    .restart local v0       #commonAttri:Lcom/didi/common/model/CommonAttributes;
    :cond_7
    sget-object v3, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    goto/16 :goto_2

    .line 2062
    :cond_8
    iget v3, p1, Lcom/didi/car/model/CarHistoryOrder;->input:I

    if-nez v3, :cond_9

    sget-object v3, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    goto/16 :goto_3

    :cond_9
    sget-object v3, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    goto/16 :goto_3

    .line 2065
    .restart local v2       #startAddress:Lcom/didi/common/model/Address;
    :cond_a
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->fName:Ljava/lang/String;

    goto/16 :goto_4

    .line 2072
    .restart local v1       #endAddress:Lcom/didi/common/model/Address;
    :cond_b
    iget-object v3, p1, Lcom/didi/car/model/CarHistoryOrder;->tName:Ljava/lang/String;

    goto/16 :goto_5
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2024
    check-cast p1, Lcom/didi/car/model/CarHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;->onFinish(Lcom/didi/car/model/CarHistoryOrder;)V

    return-void
.end method

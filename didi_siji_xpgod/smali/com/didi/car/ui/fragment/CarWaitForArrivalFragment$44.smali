.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3158
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 4

    .prologue
    .line 3162
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3163
    new-instance v0, Lcom/didi/car/model/CarPayResult;

    invoke-direct {v0}, Lcom/didi/car/model/CarPayResult;-><init>()V

    .line 3164
    .local v0, payResult:Lcom/didi/car/model/CarPayResult;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->payTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/car/model/CarPayResult;->payOrderSubTitle:Ljava/lang/String;

    .line 3165
    const v1, 0x7f0b0436

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/car/model/CarPayResult;->payOrderTitle:Ljava/lang/String;

    .line 3167
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarPayParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarPayParams;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/car/model/CarPayParams;->shareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v1, :cond_0

    .line 3168
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarPayParams;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/car/model/CarPayParams;->shareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iput-object v1, v0, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    .line 3169
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->hasPayResult()Z
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3170
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    iput-object v0, v1, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 3172
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    const/4 v3, 0x0

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPaySuccessed(Lcom/didi/car/model/CarPayResult;Lcom/didi/car/model/CarWxAgentPayStatus;)V
    invoke-static {v1, v2, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayResult;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 3173
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayFinishShareResult(Lcom/didi/car/model/CarPayResult;)V
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$4200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayResult;)V

    .line 3174
    return-void
.end method

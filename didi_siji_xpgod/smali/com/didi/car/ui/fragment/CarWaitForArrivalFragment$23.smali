.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$23;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPaidCostDetailGet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarFeeDetailResult;",
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
    .line 1743
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$23;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarFeeDetailResult;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$23;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 1748
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$23;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPaidCostDetailGot(Lcom/didi/car/model/CarFeeDetailResult;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarFeeDetailResult;)V

    .line 1751
    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1743
    check-cast p1, Lcom/didi/car/model/CarFeeDetailResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$23;->onFinish(Lcom/didi/car/model/CarFeeDetailResult;)V

    return-void
.end method

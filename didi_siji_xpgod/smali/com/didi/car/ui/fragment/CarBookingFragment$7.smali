.class Lcom/didi/car/ui/fragment/CarBookingFragment$7;
.super Lcom/didi/common/net/ResponseListener;
.source "CarBookingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarBookingFragment;->getEstimatePriceCoupon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarExModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarExModel;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 908
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 909
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceFail()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$600(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    .line 910
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 883
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment$7;->onError(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarExModel;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 901
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 902
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceFail()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$600(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    .line 903
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 883
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment$7;->onFail(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarExModel;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 886
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .local v0, data:Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    iget-object v1, v1, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 889
    iget-object v1, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    iget-object v1, v1, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :goto_0
    invoke-static {}, Lcom/didi/car/business/CarOrderLooper;->hasLooperRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$300(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    .line 896
    :cond_0
    return-void

    .line 891
    :cond_1
    const v1, 0x7f0b032b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 883
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment$7;->onSuccess(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

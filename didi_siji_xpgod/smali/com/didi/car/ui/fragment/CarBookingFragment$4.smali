.class Lcom/didi/car/ui/fragment/CarBookingFragment$4;
.super Lcom/didi/common/net/ResponseListener;
.source "CarBookingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarBookingFragment;->getEstimatePrice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarEstimatePrice;",
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
    .line 362
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 380
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 381
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceFail()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$600(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    .line 382
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 383
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 384
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment$4;->onError(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 372
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 373
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceFail()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$600(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    .line 374
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 375
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 376
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment$4;->onFail(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 366
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 367
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->setEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$500(Lcom/didi/car/ui/fragment/CarBookingFragment;Lcom/didi/car/model/CarEstimatePrice;)V

    .line 368
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarBookingFragment$4;->onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

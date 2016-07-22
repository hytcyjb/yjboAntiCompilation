.class Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierBookingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierBookingFragment;->getEstimatePrice()V
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
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 366
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 367
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceFail()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$600(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    .line 368
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 369
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 349
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;->onError(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 359
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 360
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceFail()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$600(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    .line 361
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 362
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 349
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;->onFail(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 353
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 354
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->setEstimateLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$500(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarEstimatePrice;)V

    .line 355
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 349
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$4;->onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

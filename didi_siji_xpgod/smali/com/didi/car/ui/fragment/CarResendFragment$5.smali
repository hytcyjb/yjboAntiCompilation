.class Lcom/didi/car/ui/fragment/CarResendFragment$5;
.super Ljava/lang/Object;
.source "CarResendFragment.java"

# interfaces
.implements Lcom/didi/car/listener/PlaceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 221
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    .line 222
    .local v2, sendable:Lcom/didi/frame/Sendable;
    instance-of v3, v2, Lcom/didi/car/model/CarOrder;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 223
    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 224
    .local v1, order:Lcom/didi/car/model/CarOrder;
    iget-object v3, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v3, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v3, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v3}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    .line 227
    :cond_0
    iget-object v3, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v4, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v3, v4}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v3

    if-lez v3, :cond_2

    .line 228
    new-instance v0, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v0}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 229
    .local v0, fare:Lcom/didi/common/model/MarkerFare;
    const v3, 0x7f0b032a

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 230
    iput-object v5, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 231
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarResendFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    #calls: Lcom/didi/car/ui/fragment/CarResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v3, v4, v0}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$000(Lcom/didi/car/ui/fragment/CarResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 232
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarResendFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    const/4 v4, 0x1

    #calls: Lcom/didi/car/ui/fragment/CarResendFragment;->getEstimatePriceCoupon(Z)V
    invoke-static {v3, v4}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$100(Lcom/didi/car/ui/fragment/CarResendFragment;Z)V

    .line 238
    .end local v0           #fare:Lcom/didi/common/model/MarkerFare;
    .end local v1           #order:Lcom/didi/car/model/CarOrder;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateBooking(Z)V

    .line 239
    return-void

    .line 234
    .restart local v1       #order:Lcom/didi/car/model/CarOrder;
    :cond_2
    invoke-static {v5}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0
.end method

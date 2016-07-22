.class Lcom/didi/car/ui/fragment/CarBookingFragment$2;
.super Ljava/lang/Object;
.source "CarBookingFragment.java"

# interfaces
.implements Lcom/didi/car/listener/PlaceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarBookingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceChanged()V
    .locals 4

    .prologue
    const v3, 0x7f07003f

    .line 198
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    #setter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v1, v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$202(Lcom/didi/car/ui/fragment/CarBookingFragment;Lcom/didi/car/model/CarOrder;)Lcom/didi/car/model/CarOrder;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$300(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/booking/BookingView;->setFromText(Ljava/lang/String;I)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$300(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/booking/BookingView;->setToText(Ljava/lang/String;I)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$300(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$400(Lcom/didi/car/ui/fragment/CarBookingFragment;Lcom/didi/car/model/CarEstimatePrice;)V

    .line 209
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v0, v0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$200(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v0, v0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_3
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    goto :goto_0

    .line 215
    :cond_4
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    goto :goto_0
.end method

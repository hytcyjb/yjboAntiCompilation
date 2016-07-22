.class Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;
.super Ljava/lang/Object;
.source "FlierBookingFragment.java"

# interfaces
.implements Lcom/didi/car/listener/PlaceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierBookingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceChanged()V
    .locals 4

    .prologue
    const v3, 0x7f07003f

    .line 191
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    #setter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v1, v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$202(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/flier/model/FlierOrder;)Lcom/didi/flier/model/FlierOrder;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/booking/BookingView;->setFromText(Ljava/lang/String;I)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/booking/BookingView;->setToText(Ljava/lang/String;I)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->estimatePriceSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$400(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarEstimatePrice;)V

    .line 203
    :cond_3
    return-void
.end method

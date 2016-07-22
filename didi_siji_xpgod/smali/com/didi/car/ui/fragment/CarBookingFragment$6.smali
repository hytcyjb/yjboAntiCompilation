.class Lcom/didi/car/ui/fragment/CarBookingFragment$6;
.super Ljava/lang/Object;
.source "CarBookingFragment.java"

# interfaces
.implements Lcom/didi/frame/carmodel/CarModelListener;


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
    .line 832
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarModelChange(Lcom/didi/car/model/CarModel;Z)V
    .locals 7
    .parameter "carModel"
    .parameter "added"

    .prologue
    const/4 v6, 0x0

    .line 835
    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 836
    .local v1, car:Lcom/didi/car/model/CarOrder;
    iget-object v4, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-static {v4}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 837
    iget-object v4, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 838
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 840
    :cond_0
    iget-object v2, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 841
    .local v2, carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v2, :cond_6

    .line 842
    iget-object v4, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 843
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    iget-object v4, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 844
    iget-object v4, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarModel;

    .line 845
    .local v0, baseModel:Lcom/didi/car/model/CarModel;
    iget v4, v0, Lcom/didi/car/model/CarModel;->cLevel:I

    iget v5, p1, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v4, v5, :cond_4

    .line 846
    if-eqz p2, :cond_3

    .line 847
    iget-object v4, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    const/4 v5, 0x1

    aput v5, v4, v3

    .line 854
    .end local v0           #baseModel:Lcom/didi/car/model/CarModel;
    :cond_1
    :goto_1
    iget-object v4, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v2, v4}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v4

    if-lez v4, :cond_5

    .line 855
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v4}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$300(Lcom/didi/car/ui/fragment/CarBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v4

    const v5, 0x7f0b032a

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/common/booking/BookingView;->showEstimatePriceLayout(Ljava/lang/String;)V

    .line 856
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->getEstimatePriceCoupon(Z)V
    invoke-static {v4, v6}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$1300(Lcom/didi/car/ui/fragment/CarBookingFragment;Z)V

    .line 864
    .end local v3           #index:I
    :cond_2
    :goto_2
    return-void

    .line 849
    .restart local v0       #baseModel:Lcom/didi/car/model/CarModel;
    .restart local v3       #index:I
    :cond_3
    iget-object v4, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    aput v6, v4, v3

    goto :goto_1

    .line 843
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 858
    .end local v0           #baseModel:Lcom/didi/car/model/CarModel;
    :cond_5
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceFail()V
    invoke-static {v4}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$600(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    goto :goto_2

    .line 862
    .end local v3           #index:I
    :cond_6
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$6;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->estimatePriceFail()V
    invoke-static {v4}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$600(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    goto :goto_2
.end method

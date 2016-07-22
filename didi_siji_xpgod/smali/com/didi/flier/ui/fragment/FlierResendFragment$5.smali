.class Lcom/didi/flier/ui/fragment/FlierResendFragment$5;
.super Ljava/lang/Object;
.source "FlierResendFragment.java"

# interfaces
.implements Lcom/didi/car/listener/PlaceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 227
    sget-object v4, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v3

    .line 228
    .local v3, sendable:Lcom/didi/frame/Sendable;
    instance-of v4, v3, Lcom/didi/flier/model/FlierOrder;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 230
    check-cast v1, Lcom/didi/flier/model/FlierOrder;

    .line 231
    .local v1, order:Lcom/didi/flier/model/FlierOrder;
    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v4, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 232
    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v5, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v4, v5}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v4

    if-gtz v4, :cond_0

    .line 233
    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, v4, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    .line 234
    .local v2, selectList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v4, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v4, :cond_0

    .line 235
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 236
    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v4, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v6, v5, v4

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0           #index:I
    .end local v2           #selectList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showResendMapView()V

    .line 243
    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v4, :cond_3

    .line 244
    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v4, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v4, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 245
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarModelLayout()V

    .line 246
    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v4, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v4}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    .line 251
    :goto_1
    iget-object v4, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v4, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    invoke-static {v4}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 259
    .end local v1           #order:Lcom/didi/flier/model/FlierOrder;
    :cond_1
    :goto_2
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateBooking(Z)V

    .line 260
    return-void

    .line 248
    .restart local v1       #order:Lcom/didi/flier/model/FlierOrder;
    :cond_2
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 249
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    goto :goto_1

    .line 253
    :cond_3
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 254
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 255
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    goto :goto_2
.end method

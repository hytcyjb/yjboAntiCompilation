.class Lcom/didi/car/ui/fragment/CarConfirmFragment$5;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Lcom/didi/car/listener/PlaceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 261
    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v4

    .line 262
    .local v4, sendable:Lcom/didi/frame/Sendable;
    instance-of v5, v4, Lcom/didi/car/model/CarOrder;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 263
    check-cast v2, Lcom/didi/car/model/CarOrder;

    .line 264
    .local v2, order:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getStartLatDouble()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getStartLngDouble()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 265
    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v5, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 266
    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v6, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v6, v6, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v5, v6}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v5

    if-gtz v5, :cond_0

    .line 267
    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v5, Lcom/didi/car/model/CarEstimatePrice;->serverSelectedCarIndexList:Ljava/util/List;

    .line 268
    .local v3, selectList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v5, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v5, :cond_0

    .line 269
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 270
    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v6, v5, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v9, v6, v5

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1           #index:I
    .end local v3           #selectList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v5, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v5}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    .line 279
    :goto_1
    invoke-static {v9}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showConfirmMapView(Z)V

    .line 281
    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v6, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v6, v6, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v5, v6}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v5

    if-lez v5, :cond_3

    .line 282
    new-instance v0, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v0}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 283
    .local v0, fare:Lcom/didi/common/model/MarkerFare;
    const v5, 0x7f0b032a

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 284
    iput-object v10, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 285
    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v6

    iget-object v6, v6, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v5, v6, v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$000(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 286
    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->getEstimatePriceCoupon(Z)V
    invoke-static {v5, v9}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$100(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V

    .line 296
    .end local v0           #fare:Lcom/didi/common/model/MarkerFare;
    .end local v2           #order:Lcom/didi/car/model/CarOrder;
    :cond_1
    :goto_2
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateBooking(Z)V

    .line 298
    return-void

    .line 276
    .restart local v2       #order:Lcom/didi/car/model/CarOrder;
    :cond_2
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    goto :goto_1

    .line 288
    :cond_3
    invoke-static {v10}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 289
    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v5}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v5}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->closeBar(Z)V
    invoke-static {v5, v9}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$400(Lcom/didi/car/ui/fragment/CarConfirmFragment;Z)V

    goto :goto_2
.end method

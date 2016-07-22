.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;
.super Ljava/lang/Object;
.source "FlierConfirmFragment.java"

# interfaces
.implements Lcom/didi/frame/carmodel/CarModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarModelChange(Lcom/didi/car/model/CarModel;Z)V
    .locals 10
    .parameter "carModel"
    .parameter "added"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 125
    .local v1, car:Lcom/didi/car/model/CarOrder;
    iget-object v5, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-static {v5}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    iget-object v5, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 127
    iput-object v8, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 129
    :cond_0
    iget-object v2, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 130
    .local v2, carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v2, :cond_6

    .line 131
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->resetNearDrivers()V

    .line 132
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 133
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 134
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarModel;

    .line 135
    .local v0, baseModel:Lcom/didi/car/model/CarModel;
    iget v5, v0, Lcom/didi/car/model/CarModel;->cLevel:I

    iget v6, p1, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v5, v6, :cond_4

    .line 136
    if-eqz p2, :cond_3

    .line 137
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    aput v7, v5, v4

    .line 145
    .end local v0           #baseModel:Lcom/didi/car/model/CarModel;
    :cond_1
    :goto_1
    invoke-static {v7}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showConfirmMapView(Z)V

    .line 147
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v2, v5}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v5

    if-lez v5, :cond_5

    .line 148
    new-instance v3, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v3}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 149
    .local v3, fare:Lcom/didi/common/model/MarkerFare;
    const v5, 0x7f0b032a

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 150
    iput-object v8, v3, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 151
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v6

    iget-object v6, v6, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v5, v6, v3}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 152
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getEstimatePriceCoupon(Z)V
    invoke-static {v5, v9}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V

    .line 153
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->pollEstimateRunn:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/car/config/CarPreferences;->getFlierPollDynamicPriceTime()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    .end local v3           #fare:Lcom/didi/common/model/MarkerFare;
    .end local v4           #index:I
    :cond_2
    :goto_2
    return-void

    .line 139
    .restart local v0       #baseModel:Lcom/didi/car/model/CarModel;
    .restart local v4       #index:I
    :cond_3
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    aput v9, v5, v4

    goto :goto_1

    .line 133
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v0           #baseModel:Lcom/didi/car/model/CarModel;
    :cond_5
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v6

    iget-object v6, v6, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v5, v6, v8}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 157
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v5}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v5}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->closeBar(Z)V
    invoke-static {v5, v7}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$400(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V

    goto :goto_2

    .line 164
    .end local v4           #index:I
    :cond_6
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v6

    iget-object v6, v6, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v5, v6, v8}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 165
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v5}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v5}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->closeBar(Z)V
    invoke-static {v5, v7}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$400(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Z)V

    goto :goto_2
.end method

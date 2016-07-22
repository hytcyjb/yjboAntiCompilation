.class Lcom/didi/flier/ui/fragment/FlierResendFragment$1;
.super Ljava/lang/Object;
.source "FlierResendFragment.java"

# interfaces
.implements Lcom/didi/frame/carmodel/CarModelListener;


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
    .line 67
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarModelChange(Lcom/didi/car/model/CarModel;Z)V
    .locals 9
    .parameter "carModel"
    .parameter "added"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 70
    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/flier/model/FlierOrder;

    .line 71
    .local v1, car:Lcom/didi/flier/model/FlierOrder;
    iget-object v5, v1, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    invoke-static {v5}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    iget-object v5, v1, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 73
    iput-object v7, v1, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    .line 75
    :cond_0
    iget-object v2, v1, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 76
    .local v2, carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v2, :cond_6

    .line 77
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 79
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 80
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarModel;

    .line 81
    .local v0, baseModel:Lcom/didi/car/model/CarModel;
    iget v5, v0, Lcom/didi/car/model/CarModel;->cLevel:I

    iget v6, p1, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v5, v6, :cond_4

    .line 82
    if-eqz p2, :cond_3

    .line 83
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    const/4 v6, 0x1

    aput v6, v5, v4

    .line 91
    .end local v0           #baseModel:Lcom/didi/car/model/CarModel;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showResendMapView()V

    .line 93
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v2, v5}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v5

    if-lez v5, :cond_5

    .line 94
    new-instance v3, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v3}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 95
    .local v3, fare:Lcom/didi/common/model/MarkerFare;
    const v5, 0x7f0b032a

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 96
    iput-object v7, v3, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 97
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v6

    iget-object v6, v6, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    #calls: Lcom/didi/flier/ui/fragment/FlierResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v5, v6, v3}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 98
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierResendFragment;->getEstimatePriceCoupon(Z)V
    invoke-static {v5, v8}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$100(Lcom/didi/flier/ui/fragment/FlierResendFragment;Z)V

    .line 99
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/car/config/CarPreferences;->getFlierPollDynamicPriceTime()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .end local v3           #fare:Lcom/didi/common/model/MarkerFare;
    .end local v4           #index:I
    :cond_2
    :goto_2
    return-void

    .line 85
    .restart local v0       #baseModel:Lcom/didi/car/model/CarModel;
    .restart local v4       #index:I
    :cond_3
    iget-object v5, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    aput v8, v5, v4

    goto :goto_1

    .line 79
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v0           #baseModel:Lcom/didi/car/model/CarModel;
    :cond_5
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v6

    iget-object v6, v6, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    #calls: Lcom/didi/flier/ui/fragment/FlierResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v5, v6, v7}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_2

    .line 106
    .end local v4           #index:I
    :cond_6
    iget-object v5, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v6

    iget-object v6, v6, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    #calls: Lcom/didi/flier/ui/fragment/FlierResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v5, v6, v7}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_2
.end method

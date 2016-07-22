.class Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;
.super Lcom/didi/common/net/ResponseListener;
.source "CarEstimatePriceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->getEstimatePrice()V
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
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 573
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 574
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 575
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #calls: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$800(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;Lcom/didi/car/model/CarEstimatePrice;)V

    .line 576
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 577
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 517
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->onError(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 566
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 567
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #calls: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$800(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;Lcom/didi/car/model/CarEstimatePrice;)V

    .line 568
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 569
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 517
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->onFail(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 11
    .parameter "t"

    .prologue
    const/4 v10, 0x1

    .line 520
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 521
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 522
    iget-object v2, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 523
    .local v2, newCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 524
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v8}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 525
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v8}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;

    move-result-object v8

    iget-object v0, v8, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 526
    .local v0, estimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v0, :cond_3

    .line 527
    iget-object v4, v0, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 528
    .local v4, oldCarModelArray:[I
    iget-object v5, v0, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 530
    .local v5, oldCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 532
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 533
    .local v3, newSize:I
    new-array v6, v3, [I

    .line 535
    .local v6, sCarIndexArray:[I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 536
    const/4 v7, 0x0

    .local v7, sInt:I
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_1

    .line 537
    aget v8, v4, v7

    if-ne v10, v8, :cond_0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarModel;

    iget v9, v8, Lcom/didi/car/model/CarModel;->cLevel:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarModel;

    iget v8, v8, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v9, v8, :cond_0

    .line 539
    aput v10, v6, v1

    .line 536
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 535
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    .end local v7           #sInt:I
    :cond_2
    iput-object v6, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 549
    .end local v0           #estimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    .end local v1           #index:I
    .end local v3           #newSize:I
    .end local v4           #oldCarModelArray:[I
    .end local v5           #oldCarModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v6           #sCarIndexArray:[I
    :cond_3
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v8}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 550
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v8}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;

    move-result-object v8

    iput-object p1, v8, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 552
    :cond_4
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #calls: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v8, p1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$800(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;Lcom/didi/car/model/CarEstimatePrice;)V

    .line 561
    :goto_2
    return-void

    .line 553
    :cond_5
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    invoke-static {v8}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 554
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v8}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 555
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #getter for: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->carOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v8}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$700(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)Lcom/didi/car/model/CarOrder;

    move-result-object v8

    iput-object p1, v8, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 557
    :cond_6
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #calls: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v8, p1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$800(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;Lcom/didi/car/model/CarEstimatePrice;)V

    goto :goto_2

    .line 559
    :cond_7
    iget-object v8, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    const/4 v9, 0x0

    #calls: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->setEstimatePriceLayout(Lcom/didi/car/model/CarEstimatePrice;)V
    invoke-static {v8, v9}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$800(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;Lcom/didi/car/model/CarEstimatePrice;)V

    goto :goto_2
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 517
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$4;->onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

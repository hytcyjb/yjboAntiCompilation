.class public Lcom/didi/car/ui/component/CarCurrentCostControllerView;
.super Lcom/didi/common/base/BaseLayout;
.source "CarCurrentCostControllerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;
    }
.end annotation


# instance fields
.field private mLayoutInstruction:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCurrentCostInstructionClicked"
        id = 0x7f0801e2
    .end annotation
.end field

.field private mListener:Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801da
    .end annotation
.end field

.field private mTxtPaidCost:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801de
    .end annotation
.end field

.field private mViewItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801df
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->init()V

    .line 49
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 63
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f0b02c5

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 64
    new-instance v1, Lcom/didi/car/ui/component/CarCurrentCostControllerView$1;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/component/CarCurrentCostControllerView$1;-><init>(Lcom/didi/car/ui/component/CarCurrentCostControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public onCurrentCostInstructionClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mListener:Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;->onCurrentCostInstructionClicked(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f030054

    return v0
.end method

.method protected onTitleLeftClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mListener:Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;->onTitleLeftClicked(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method protected onTitleRightClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mListener:Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;->onTitleRightClicked(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public setCarOrderTotalCount(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 5
    .parameter "realtimeCount"

    .prologue
    .line 91
    iget-object v3, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mTxtPaidCost:Landroid/widget/TextView;

    iget v4, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 94
    .local v2, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->feeItemInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarFeeItemInfo;

    .line 95
    .local v0, feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    iget-object v3, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/car/model/CarFeeItemInfo;->feeValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v0           #feeItemInfo:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_0
    iget-object v3, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mViewItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;

    invoke-virtual {v3, v2}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setItems(Ljava/util/Map;)V

    .line 99
    return-void
.end method

.method public setCarOrderTotalCount(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 6
    .parameter "realtimeCount"

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v2, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mTxtPaidCost:Landroid/widget/TextView;

    iget v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 106
    .local v0, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v2, 0x7f0b0476

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, yuan:Ljava/lang/String;
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->startFee:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 109
    const v2, 0x7f0b02e4

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->startFee:F

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->drivingFee:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 113
    const v2, 0x7f0b02d8

    iget v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->distance:F

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->drivingFee:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->speedSlowFee:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 119
    const v2, 0x7f0b02e3

    iget v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->slow:F

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->speedSlowFee:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->nightFee:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 125
    const v2, 0x7f0b02de

    iget v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->nightDistance:F

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->nightFee:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_3
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyFee:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 131
    const v2, 0x7f0b02d9

    iget v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyDistance:F

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyFee:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_4
    iget v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceValue:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    .line 137
    iget-object v2, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceTitle:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceValue:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mViewItems:Lcom/didi/car/ui/component/CarCostDetailItemsView;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarCostDetailItemsView;->setItems(Ljava/util/Map;)V

    .line 141
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->mListener:Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;

    .line 87
    return-void
.end method

.class public Lcom/didi/frame/price/PriceOperator;
.super Lcom/didi/frame/controlpanel/Operator;
.source "PriceOperator.java"


# static fields
.field private static final CONTENT_BOOM_DURATION:I = 0x96


# instance fields
.field private cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private count:I

.field private isOpen:Z

.field private pricePinArray:[Lcom/didi/frame/price/PricePinView;

.field private selectedPinView:Lcom/didi/frame/price/PricePinView;

.field private switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

.field private trigger:Lcom/didi/frame/price/PriceTriggerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/didi/frame/controlpanel/Operator;-><init>()V

    .line 49
    new-instance v0, Lcom/didi/frame/price/PriceOperator$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/price/PriceOperator$1;-><init>(Lcom/didi/frame/price/PriceOperator;)V

    iput-object v0, p0, Lcom/didi/frame/price/PriceOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    .line 66
    new-instance v0, Lcom/didi/frame/price/PriceOperator$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/price/PriceOperator$2;-><init>(Lcom/didi/frame/price/PriceOperator;)V

    iput-object v0, p0, Lcom/didi/frame/price/PriceOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/price/PriceOperator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/didi/frame/price/PriceOperator;->resetPins()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/price/PriceOperator;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/frame/price/PriceOperator;->onBusinessCityChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/price/PriceOperator;)Lcom/didi/frame/price/PricePinView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/price/PriceOperator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/frame/price/PriceOperator;)[Lcom/didi/frame/price/PricePinView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/frame/price/PriceOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/didi/frame/price/PriceOperator;->doSlide(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/frame/price/PriceOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/didi/frame/price/PriceOperator;->doSlideBack(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/frame/price/PriceOperator;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/frame/price/PriceOperator;->isAvailable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private boomPins(II)V
    .locals 3
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 263
    new-instance v0, Lcom/didi/frame/price/PriceOperator$3;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/price/PriceOperator$3;-><init>(Lcom/didi/frame/price/PriceOperator;I)V

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method

.method private checkPins(Lcom/didi/frame/price/PricePinView;)V
    .locals 5
    .parameter "selectedView"

    .prologue
    .line 208
    const-string v4, "checkPins"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    .local v0, arr$:[Lcom/didi/frame/price/PricePinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 210
    .local v3, view:Lcom/didi/frame/price/PricePinView;
    if-ne v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/didi/frame/price/PricePinView;->getPrice()I

    move-result v4

    if-lez v4, :cond_0

    .line 211
    invoke-virtual {v3}, Lcom/didi/frame/price/PricePinView;->setSelected()V

    .line 209
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v3}, Lcom/didi/frame/price/PricePinView;->checkState()V

    goto :goto_1

    .line 215
    .end local v3           #view:Lcom/didi/frame/price/PricePinView;
    :cond_1
    return-void
.end method

.method private disablePriceTrigger()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "disablePricePins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/price/PriceTriggerView;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceTriggerView;->hide()V

    .line 115
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 116
    return-void
.end method

.method private doSlide(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 8
    .parameter "start"
    .parameter "startVisibility"
    .parameter "end"
    .parameter "endVisibility"
    .parameter "duration"
    .parameter "interpolator"

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 369
    .local v7, startY:I
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v7

    int-to-float v3, v7

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 370
    .local v6, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, p5

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 371
    invoke-virtual {v6, p6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 372
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 374
    new-instance v0, Lcom/didi/frame/price/PriceOperator$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/price/PriceOperator$8;-><init>(Lcom/didi/frame/price/PriceOperator;Landroid/view/View;ILandroid/view/View;I)V

    int-to-long v1, p5

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    return-void
.end method

.method private doSlideBack(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 8
    .parameter "start"
    .parameter "startVisibility"
    .parameter "end"
    .parameter "endVisibility"
    .parameter "duration"
    .parameter "interpolator"

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 349
    .local v7, startY:I
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    int-to-float v2, v7

    int-to-float v3, v7

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 350
    .local v6, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, p5

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 351
    invoke-virtual {v6, p6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 352
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    new-instance v0, Lcom/didi/frame/price/PriceOperator$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/price/PriceOperator$7;-><init>(Lcom/didi/frame/price/PriceOperator;Landroid/view/View;ILandroid/view/View;I)V

    int-to-long v1, p5

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    return-void
.end method

.method private enablePriceTrigger(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, priceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePriceTrigger : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    aget-object v1, v2, v0

    .line 124
    .local v1, view:Lcom/didi/frame/price/PricePinView;
    iget v2, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    if-ge v0, v2, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/price/PricePinView;->setPrice(I)V

    .line 126
    invoke-virtual {v1, v4}, Lcom/didi/frame/price/PricePinView;->setEnabled(Z)V

    .line 122
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/frame/price/PricePinView;->setEnabled(Z)V

    goto :goto_1

    .line 131
    .end local v1           #view:Lcom/didi/frame/price/PricePinView;
    :cond_1
    iget-object v2, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {v2, v4}, Lcom/didi/frame/price/PriceTriggerView;->setEnabled(Z)V

    .line 132
    iget-boolean v2, p0, Lcom/didi/frame/price/PriceOperator;->isOpen:Z

    if-nez v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {v2}, Lcom/didi/frame/price/PriceTriggerView;->show()V

    .line 134
    :cond_2
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->initPrice()V

    .line 135
    return-void
.end method

.method public static getInstance()Lcom/didi/frame/price/PriceOperator;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getPriceOperator()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    return-object v0
.end method

.method public static getPrice()I
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/price/PriceOperator;->getSelectedPin()Lcom/didi/frame/price/PricePinView;

    move-result-object v0

    .line 441
    .local v0, view:Lcom/didi/frame/price/PricePinView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/price/PricePinView;->getPrice()I

    move-result v1

    goto :goto_0
.end method

.method public static initPrice()V
    .locals 6

    .prologue
    .line 449
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getTip()I

    move-result v3

    .line 450
    .local v3, price:I
    if-gez v3, :cond_1

    .line 451
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->reset()V

    .line 458
    :cond_0
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v5

    invoke-direct {v5, v3}, Lcom/didi/frame/price/PriceOperator;->setSelectedPrice(I)V

    .line 459
    return-void

    .line 453
    :cond_1
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v5

    iget-object v0, v5, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    .local v0, arr$:[Lcom/didi/frame/price/PricePinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 455
    .local v4, view:Lcom/didi/frame/price/PricePinView;
    invoke-virtual {v4}, Lcom/didi/frame/price/PricePinView;->getPrice()I

    move-result v5

    if-ne v3, v5, :cond_2

    invoke-virtual {v4}, Lcom/didi/frame/price/PricePinView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/didi/frame/price/PriceOperator;->setSelected(Lcom/didi/frame/price/PricePinView;)V

    .line 453
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isAvailable(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 312
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    .local v0, arr$:[Lcom/didi/frame/price/PricePinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 313
    .local v3, v:Landroid/view/View;
    if-ne v3, p1, :cond_1

    .line 316
    .end local v3           #v:Landroid/view/View;
    :cond_0
    :goto_1
    return v4

    .line 312
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    if-eq p1, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/frame/price/PriceOperator;->isOpen:Z

    return v0
.end method

.method private onBusinessCityChange(Ljava/lang/String;)V
    .locals 5
    .parameter "cityId"

    .prologue
    .line 76
    invoke-static {}, Lcom/didi/frame/price/PriceAdapter;->getCurrentAdapter()Lcom/didi/frame/price/PriceAdapter;

    move-result-object v0

    .line 77
    .local v0, adapter:Lcom/didi/frame/price/PriceAdapter;
    if-nez v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/didi/frame/price/PriceOperator;->disablePriceTrigger()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {v0, p1}, Lcom/didi/frame/price/PriceAdapter;->getPriceTriggerText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, triggerText:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {v3, v2}, Lcom/didi/frame/price/PriceTriggerView;->setTriggerText(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p1}, Lcom/didi/frame/price/PriceAdapter;->getPriceList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    .local v1, priceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/didi/frame/price/PriceOperator;->disablePriceTrigger()V

    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0, v1}, Lcom/didi/frame/price/PriceOperator;->enablePriceTrigger(Ljava/util/ArrayList;)V

    .line 88
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 103
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v3

    instance-of v3, v3, Lcom/didi/car/business/CarOrderLooper;

    if-nez v3, :cond_0

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/didi/frame/price/PriceOperator;->disablePriceTrigger()V

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/price/PriceOperator;->resetPins()V

    .line 241
    return-void
.end method

.method private resetPins()V
    .locals 6

    .prologue
    .line 226
    const-string v4, "resetPins"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    .local v0, arr$:[Lcom/didi/frame/price/PricePinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 228
    .local v3, view:Lcom/didi/frame/price/PricePinView;
    invoke-virtual {v3}, Lcom/didi/frame/price/PricePinView;->reset()V

    .line 229
    invoke-virtual {v3}, Lcom/didi/frame/price/PricePinView;->invisible()V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v3           #view:Lcom/didi/frame/price/PricePinView;
    :cond_0
    iget-object v4, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/didi/frame/price/PriceOperator;->setActivatedView(Lcom/didi/frame/price/PricePinView;)V

    .line 232
    return-void
.end method

.method public static select(Lcom/didi/frame/price/PricePinView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 445
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/frame/price/PriceOperator;->setSelected(Lcom/didi/frame/price/PricePinView;)V

    .line 446
    return-void
.end method

.method private setActivatedView(Lcom/didi/frame/price/PricePinView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Business : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setSelected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/frame/price/PricePinView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    .line 237
    return-void
.end method

.method private setSelectedPrice(I)V
    .locals 1
    .parameter "price"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/price/PriceTriggerView;->setPrice(I)V

    .line 463
    return-void
.end method

.method private showOtherTriggers(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 403
    new-instance v0, Lcom/didi/frame/price/PriceOperator$9;

    invoke-direct {v0, p0}, Lcom/didi/frame/price/PriceOperator$9;-><init>(Lcom/didi/frame/price/PriceOperator;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    return-void
.end method

.method private shrinkPins(I)V
    .locals 9
    .parameter "duration"

    .prologue
    .line 285
    iget-object v5, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    invoke-virtual {v5}, Lcom/didi/frame/price/PricePinView;->getLeft()I

    move-result v1

    .line 286
    .local v1, endX:I
    iget-object v5, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    invoke-virtual {v5}, Lcom/didi/frame/price/PricePinView;->getTop()I

    move-result v3

    .line 289
    .local v3, startY:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    if-ge v2, v5, :cond_0

    .line 290
    iget-object v5, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    aget-object v4, v5, v2

    .line 291
    .local v4, view:Lcom/didi/frame/price/PricePinView;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/didi/frame/price/PricePinView;->getLeft()I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 292
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 293
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 294
    invoke-virtual {v4, v0}, Lcom/didi/frame/price/PricePinView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v4           #view:Lcom/didi/frame/price/PricePinView;
    :cond_0
    new-instance v5, Lcom/didi/frame/price/PriceOperator$4;

    invoke-direct {v5, p0}, Lcom/didi/frame/price/PriceOperator$4;-><init>(Lcom/didi/frame/price/PriceOperator;)V

    int-to-long v6, p1

    invoke-static {v5, v6, v7}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    return-void
.end method

.method private slide(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V
    .locals 8
    .parameter "start"
    .parameter "startVisibility"
    .parameter "end"
    .parameter "endVisibility"
    .parameter "duration"
    .parameter "offset"
    .parameter "interpolator"

    .prologue
    .line 322
    new-instance v0, Lcom/didi/frame/price/PriceOperator$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/price/PriceOperator$5;-><init>(Lcom/didi/frame/price/PriceOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    int-to-long v1, p6

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    return-void
.end method

.method private slideBack(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V
    .locals 8
    .parameter "start"
    .parameter "startVisibility"
    .parameter "end"
    .parameter "endVisibility"
    .parameter "duration"
    .parameter "offset"
    .parameter "interpolator"

    .prologue
    .line 335
    new-instance v0, Lcom/didi/frame/price/PriceOperator$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/price/PriceOperator$6;-><init>(Lcom/didi/frame/price/PriceOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    int-to-long v1, p6

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    return-void
.end method


# virtual methods
.method public checkPriceList()V
    .locals 1

    .prologue
    .line 191
    const-string v0, "checkPriceList"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/frame/price/PriceOperator;->onBusinessCityChange(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 194
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 218
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    .local v0, arr$:[Lcom/didi/frame/price/PricePinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 219
    .local v3, view:Lcom/didi/frame/price/PricePinView;
    invoke-virtual {v3}, Lcom/didi/frame/price/PricePinView;->reset()V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v3           #view:Lcom/didi/frame/price/PricePinView;
    :cond_0
    iget-object v4, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {v4}, Lcom/didi/frame/price/PriceTriggerView;->reset()V

    .line 222
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->clearTip()V

    .line 223
    return-void
.end method

.method public bridge synthetic getContentPins()[Lcom/didi/frame/controlpanel/pin/PinBaseView;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceOperator;->getContentPins()[Lcom/didi/frame/price/PricePinView;

    move-result-object v0

    return-object v0
.end method

.method public getContentPins()[Lcom/didi/frame/price/PricePinView;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    if-nez v0, :cond_0

    .line 186
    iget v0, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    new-array v0, v0, [Lcom/didi/frame/price/PricePinView;

    iput-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    return-object v0
.end method

.method public getSelectedPin()Lcom/didi/frame/price/PricePinView;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    return-object v0
.end method

.method public getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {p0}, Lcom/didi/frame/price/PriceOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/price/PriceTriggerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    return-object v0
.end method

.method public hideContentPins()V
    .locals 9

    .prologue
    const/16 v6, 0x96

    const/4 v2, 0x0

    .line 387
    const-string v0, "hideContentPins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 388
    iget-boolean v0, p0, Lcom/didi/frame/price/PriceOperator;->isOpen:Z

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 390
    :cond_0
    const/16 v0, 0x1f4

    iget-object v1, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    invoke-static {v2, v0, v1}, Lcom/didi/common/util/ViewUtil;->setViewClickableTemply(ZI[Landroid/view/View;)V

    .line 391
    invoke-direct {p0, v6}, Lcom/didi/frame/price/PriceOperator;->shrinkPins(I)V

    .line 392
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/didi/frame/price/PriceOperator;->setActivatedView(Lcom/didi/frame/price/PricePinView;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    invoke-virtual {v0}, Lcom/didi/frame/price/PricePinView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/price/PriceTriggerView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x47c35000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v8, v0

    .line 396
    .local v8, duration:F
    iget-object v1, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    const/4 v4, 0x4

    float-to-int v5, v8

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/price/PriceOperator;->slideBack(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V

    .line 398
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/didi/frame/price/PriceOperator;->showOtherTriggers(I)V

    .line 399
    iput-boolean v2, p0, Lcom/didi/frame/price/PriceOperator;->isOpen:Z

    goto :goto_0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    .line 148
    .local v0, area:Lcom/didi/frame/controlpanel/OperationArea;
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 150
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    if-nez v3, :cond_1

    .line 151
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/didi/frame/price/PricePinView;

    iput-object v3, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 153
    new-instance v2, Lcom/didi/frame/price/PricePinView;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/didi/frame/price/PricePinView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v2, view:Lcom/didi/frame/price/PricePinView;
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    aput-object v2, v3, v1

    .line 155
    invoke-virtual {v2}, Lcom/didi/frame/price/PricePinView;->invisible()V

    .line 156
    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v2           #view:Lcom/didi/frame/price/PricePinView;
    :cond_0
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "A"

    invoke-virtual {v3, v4}, Lcom/didi/frame/price/PricePinView;->setName(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "B"

    invoke-virtual {v3, v4}, Lcom/didi/frame/price/PricePinView;->setName(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const-string v4, "C"

    invoke-virtual {v3, v4}, Lcom/didi/frame/price/PricePinView;->setName(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const-string v4, "D"

    invoke-virtual {v3, v4}, Lcom/didi/frame/price/PricePinView;->setName(Ljava/lang/String;)V

    .line 163
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceOperator;->registerListeners()V

    .line 164
    return-void
.end method

.method public layout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 421
    iget v7, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    invoke-static {v7}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getSplitWidth(I)I

    move-result v4

    .line 423
    .local v4, splitWidth:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v6

    .line 424
    .local v6, windowWidth:I
    invoke-static {}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getSize()I

    move-result v1

    .line 426
    .local v1, itemWidth:I
    iget v7, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    mul-int/2addr v7, v1

    sub-int v7, v6, v7

    iget v8, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 427
    .local v3, originalMarginLeft:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v7, p0, Lcom/didi/frame/price/PriceOperator;->count:I

    if-ge v0, v7, :cond_0

    .line 428
    iget-object v7, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    aget-object v5, v7, v0

    .line 429
    .local v5, view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    add-int v7, v1, v4

    mul-int/2addr v7, v0

    add-int v2, v3, v7

    .line 430
    .local v2, marginLeft:I
    invoke-virtual {v5}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getWidth()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v2, p3, v7, p5}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->layout(IIII)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    .end local v2           #marginLeft:I
    .end local v5           #view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    :cond_0
    const-string v7, "OperationArea"

    const-string v8, "price layout"

    invoke-static {v7, v8}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->addSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 168
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 169
    return-void
.end method

.method public setSelected(Lcom/didi/frame/price/PricePinView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/didi/frame/price/PriceOperator;->setActivatedView(Lcom/didi/frame/price/PricePinView;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/didi/frame/price/PriceOperator;->checkPins(Lcom/didi/frame/price/PricePinView;)V

    .line 201
    invoke-virtual {p1}, Lcom/didi/frame/price/PricePinView;->getPrice()I

    move-result v0

    .line 202
    .local v0, price:I
    iget-object v1, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    invoke-virtual {v1, v0}, Lcom/didi/frame/price/PriceTriggerView;->setPrice(I)V

    .line 203
    iget-object v1, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    invoke-virtual {v1}, Lcom/didi/frame/price/PricePinView;->bringToFront()V

    .line 204
    invoke-static {v0}, Lcom/didi/frame/price/PriceHelper;->setPrice(I)V

    .line 205
    return-void
.end method

.method public showContentPins()V
    .locals 12

    .prologue
    const/16 v5, 0x96

    const/4 v4, 0x0

    .line 245
    const-string v0, "showContentPins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v8

    .line 247
    .local v8, area:Lcom/didi/frame/controlpanel/OperationArea;
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/didi/frame/price/PriceOperator;->setActivatedView(Lcom/didi/frame/price/PricePinView;)V

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/price/PriceOperator;->trigger:Lcom/didi/frame/price/PriceTriggerView;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v0, 0x3f80

    invoke-direct {v7, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/price/PriceOperator;->slide(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V

    .line 251
    invoke-virtual {v8}, Lcom/didi/frame/controlpanel/OperationArea;->getChildCount()I

    move-result v9

    .line 253
    .local v9, count:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 254
    invoke-virtual {v8, v10}, Lcom/didi/frame/controlpanel/OperationArea;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 255
    .local v11, view:Landroid/view/View;
    invoke-direct {p0, v11}, Lcom/didi/frame/price/PriceOperator;->isAvailable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-static {v11}, Lcom/didi/common/ui/component/UiHelper;->invisible(Landroid/view/View;)V

    .line 253
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 258
    .end local v11           #view:Landroid/view/View;
    :cond_2
    invoke-direct {p0, v5, v5}, Lcom/didi/frame/price/PriceOperator;->boomPins(II)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/price/PriceOperator;->isOpen:Z

    .line 260
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->removeSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 173
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 174
    return-void
.end method

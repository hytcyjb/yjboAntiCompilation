.class public Lcom/didi/frame/carmodel/CarModelOperator;
.super Lcom/didi/frame/controlpanel/Operator;
.source "CarModelOperator.java"


# static fields
.field private static final CONTENT_BOOM_DURATION:I = 0x96


# instance fields
.field private cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private count:I

.field private isOpen:Z

.field private modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

.field private selectedPinViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/carmodel/CarModelPinView;",
            ">;"
        }
    .end annotation
.end field

.field private switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

.field private trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/didi/frame/controlpanel/Operator;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/carmodel/CarModelOperator$1;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;)V

    iput-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    .line 79
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/carmodel/CarModelOperator$2;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;)V

    iput-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/carmodel/CarModelOperator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->resetPins()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/carmodel/CarModelOperator;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/didi/frame/carmodel/CarModelOperator;->onBusinessCityChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/carmodel/CarModelOperator;)[Lcom/didi/frame/carmodel/CarModelPinView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/carmodel/CarModelOperator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/frame/carmodel/CarModelOperator;Lcom/didi/frame/carmodel/CarModelPinView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/carmodel/CarModelOperator;->setActivatedView(Lcom/didi/frame/carmodel/CarModelPinView;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/frame/carmodel/CarModelOperator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkPins()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lcom/didi/frame/carmodel/CarModelOperator;->doSlide(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lcom/didi/frame/carmodel/CarModelOperator;->doSlideBack(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/didi/frame/carmodel/CarModelOperator;->isAvailable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private boomPins(II)V
    .locals 5
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 234
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 235
    .local v1, carOrder:Lcom/didi/car/model/CarOrder;
    if-eqz v1, :cond_0

    .line 236
    iget-object v0, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 237
    .local v0, carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    new-instance v2, Lcom/didi/frame/carmodel/CarModelOperator$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/didi/frame/carmodel/CarModelOperator$3;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;Lcom/didi/car/model/CarEstimatePrice;I)V

    const-wide/16 v3, 0x1c2

    invoke-static {v2, v3, v4}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    .end local v0           #carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    :cond_0
    return-void
.end method

.method private checkPins()V
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    .local v0, arr$:[Lcom/didi/frame/carmodel/CarModelPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 177
    .local v3, view:Lcom/didi/frame/carmodel/CarModelPinView;
    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    invoke-virtual {v3}, Lcom/didi/frame/carmodel/CarModelPinView;->setSelected()V

    .line 176
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v3}, Lcom/didi/frame/carmodel/CarModelPinView;->checkState()V

    goto :goto_1

    .line 183
    .end local v3           #view:Lcom/didi/frame/carmodel/CarModelPinView;
    :cond_1
    return-void
.end method

.method private disableTrigger()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setEnabled(Z)V

    .line 500
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->hide()V

    .line 501
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 502
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
    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 377
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

    .line 378
    .local v6, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, p5

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 379
    invoke-virtual {v6, p6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 380
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 382
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/carmodel/CarModelOperator$8;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;ILandroid/view/View;I)V

    int-to-long v1, p5

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
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
    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 355
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

    .line 356
    .local v6, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, p5

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 357
    invoke-virtual {v6, p6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/carmodel/CarModelOperator$7;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;ILandroid/view/View;I)V

    int-to-long v1, p5

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    return-void
.end method

.method private enableTrigger()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->show()V

    .line 507
    return-void
.end method

.method public static getInstance()Lcom/didi/frame/carmodel/CarModelOperator;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getCarModelOperator()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    return-object v0
.end method

.method private isAvailable(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 318
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    .local v0, arr$:[Lcom/didi/frame/carmodel/CarModelPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 319
    .local v3, v:Landroid/view/View;
    if-ne v3, p1, :cond_1

    .line 322
    .end local v3           #v:Landroid/view/View;
    :cond_0
    :goto_1
    return v4

    .line 318
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    if-eq p1, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen:Z

    return v0
.end method

.method private onBusinessCityChange(Ljava/lang/String;)V
    .locals 5
    .parameter "cityId"

    .prologue
    const/4 v4, 0x0

    .line 461
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelAdapter;->getCurrentAdapter()Lcom/didi/frame/carmodel/ModelAdapter;

    move-result-object v0

    .line 463
    .local v0, adapter:Lcom/didi/frame/carmodel/ModelAdapter;
    if-nez v0, :cond_1

    .line 464
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->disableTrigger()V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v1

    .line 467
    .local v1, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/didi/car/ui/fragment/CarConfirmFragment;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/didi/car/ui/fragment/CarBookingFragment;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/didi/car/ui/fragment/CarResendFragment;

    if-ne v2, v3, :cond_3

    .line 470
    :cond_2
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->enableTrigger()V

    goto :goto_0

    .line 471
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getLastFragmentClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    if-ne v2, v3, :cond_4

    .line 472
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/fragment/CommonLoginFragment;

    if-ne v2, v3, :cond_0

    .line 473
    const/16 v2, 0x1f4

    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    invoke-static {v4, v2, v3}, Lcom/didi/common/util/ViewUtil;->setViewClickableTemply(ZI[Landroid/view/View;)V

    .line 474
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/didi/frame/carmodel/CarModelOperator;->shrinkPins(I)V

    .line 475
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->enableTrigger()V

    .line 476
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 477
    iput-boolean v4, p0, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen:Z

    goto :goto_0

    .line 480
    :cond_4
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->disableTrigger()V

    goto :goto_0
.end method

.method private resetPins()V
    .locals 5

    .prologue
    .line 186
    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    if-eqz v4, :cond_0

    .line 187
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    .local v0, arr$:[Lcom/didi/frame/carmodel/CarModelPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 188
    .local v3, view:Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-virtual {v3}, Lcom/didi/frame/carmodel/CarModelPinView;->reset()V

    .line 189
    invoke-virtual {v3}, Lcom/didi/frame/carmodel/CarModelPinView;->invisible()V

    .line 190
    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v0           #arr$:[Lcom/didi/frame/carmodel/CarModelPinView;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #view:Lcom/didi/frame/carmodel/CarModelPinView;
    :cond_0
    return-void
.end method

.method public static select(Lcom/didi/frame/carmodel/CarModelPinView;Z)V
    .locals 1
    .parameter "view"
    .parameter "notify"

    .prologue
    .line 540
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/didi/frame/carmodel/CarModelOperator;->setSelected(Lcom/didi/frame/carmodel/CarModelPinView;Z)V

    .line 541
    return-void
.end method

.method private setActivatedView(Lcom/didi/frame/carmodel/CarModelPinView;Z)V
    .locals 2
    .parameter "view"
    .parameter "notify"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 201
    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/didi/frame/carmodel/CarModelPinView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/frame/carmodel/CarModelHelper;->notifyChange(Lcom/didi/car/model/CarModel;Z)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/didi/frame/carmodel/CarModelPinView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/didi/frame/carmodel/CarModelHelper;->notifyChange(Lcom/didi/car/model/CarModel;Z)V

    goto :goto_0
.end method

.method private showOtherTriggers(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 415
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator$9;

    invoke-direct {v0, p0}, Lcom/didi/frame/carmodel/CarModelOperator$9;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    return-void
.end method

.method private shrinkPins(I)V
    .locals 9
    .parameter "duration"

    .prologue
    const/4 v6, 0x0

    .line 291
    iget-object v5, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/didi/frame/carmodel/CarModelPinView;->getLeft()I

    move-result v1

    .line 292
    .local v1, endX:I
    iget-object v5, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/didi/frame/carmodel/CarModelPinView;->getTop()I

    move-result v3

    .line 295
    .local v3, startY:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    if-ge v2, v5, :cond_0

    .line 296
    iget-object v5, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v4, v5, v2

    .line 297
    .local v4, view:Lcom/didi/frame/carmodel/CarModelPinView;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/didi/frame/carmodel/CarModelPinView;->getLeft()I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 298
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 299
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 300
    invoke-virtual {v4, v0}, Lcom/didi/frame/carmodel/CarModelPinView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v4           #view:Lcom/didi/frame/carmodel/CarModelPinView;
    :cond_0
    new-instance v5, Lcom/didi/frame/carmodel/CarModelOperator$4;

    invoke-direct {v5, p0}, Lcom/didi/frame/carmodel/CarModelOperator$4;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;)V

    int-to-long v6, p1

    invoke-static {v5, v6, v7}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
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
    .line 328
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/carmodel/CarModelOperator$5;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    int-to-long v1, p6

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
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
    .line 341
    new-instance v0, Lcom/didi/frame/carmodel/CarModelOperator$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/carmodel/CarModelOperator$6;-><init>(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    int-to-long v1, p6

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    return-void
.end method


# virtual methods
.method public checkCarModel()V
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->hideContentPins()V

    .line 511
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/frame/carmodel/CarModelOperator;->onBusinessCityChange(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 513
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 521
    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    if-eqz v4, :cond_0

    .line 522
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    .local v0, arr$:[Lcom/didi/frame/carmodel/CarModelPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 523
    .local v3, view:Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-virtual {v3}, Lcom/didi/frame/carmodel/CarModelPinView;->reset()V

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v0           #arr$:[Lcom/didi/frame/carmodel/CarModelPinView;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #view:Lcom/didi/frame/carmodel/CarModelPinView;
    :cond_0
    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setEnabled(Z)V

    .line 527
    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v4}, Lcom/didi/frame/carmodel/CarModelTriggerView;->hide()V

    .line 528
    iget-object v4, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v4}, Lcom/didi/frame/carmodel/CarModelTriggerView;->reset()V

    .line 529
    return-void
.end method

.method public getContentPins()[Lcom/didi/frame/carmodel/CarModelPinView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    if-nez v0, :cond_0

    .line 148
    iget v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    new-array v0, v0, [Lcom/didi/frame/carmodel/CarModelPinView;

    iput-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    return-object v0
.end method

.method public bridge synthetic getContentPins()[Lcom/didi/frame/controlpanel/pin/PinBaseView;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getContentPins()[Lcom/didi/frame/carmodel/CarModelPinView;

    move-result-object v0

    return-object v0
.end method

.method public getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    return-object v0
.end method

.method public bridge synthetic getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v0

    return-object v0
.end method

.method public hideContentPins()V
    .locals 9

    .prologue
    const/16 v6, 0x96

    const/4 v2, 0x0

    .line 398
    const-string v0, "hideContentPins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOpen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 400
    iget-boolean v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen:Z

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 402
    :cond_0
    const/16 v0, 0x1f4

    iget-object v1, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    invoke-static {v2, v0, v1}, Lcom/didi/common/util/ViewUtil;->setViewClickableTemply(ZI[Landroid/view/View;)V

    .line 403
    invoke-direct {p0, v6}, Lcom/didi/frame/carmodel/CarModelOperator;->shrinkPins(I)V

    .line 406
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelPinView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getLeft()I

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

    .line 408
    .local v8, duration:F
    iget-object v1, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v3, v0, v2

    const/4 v4, 0x4

    float-to-int v5, v8

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/carmodel/CarModelOperator;->slideBack(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V

    .line 410
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/didi/frame/carmodel/CarModelOperator;->showOtherTriggers(I)V

    .line 411
    iput-boolean v2, p0, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen:Z

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    .line 97
    .local v0, area:Lcom/didi/frame/controlpanel/OperationArea;
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 101
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    if-nez v3, :cond_1

    .line 102
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/didi/frame/carmodel/CarModelPinView;

    iput-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    .line 103
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 104
    new-instance v2, Lcom/didi/frame/carmodel/CarModelPinView;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/didi/frame/carmodel/CarModelPinView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, view:Lcom/didi/frame/carmodel/CarModelPinView;
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aput-object v2, v3, v1

    .line 106
    invoke-virtual {v2}, Lcom/didi/frame/carmodel/CarModelPinView;->invisible()V

    .line 107
    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v1           #i:I
    .end local v2           #view:Lcom/didi/frame/carmodel/CarModelPinView;
    :cond_1
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->registerListeners()V

    goto :goto_0
.end method

.method public layout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 433
    iget v7, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    invoke-static {v7}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getSplitWidth(I)I

    move-result v4

    .line 435
    .local v4, splitWidth:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v6

    .line 436
    .local v6, windowWidth:I
    invoke-static {}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getSize()I

    move-result v1

    .line 438
    .local v1, itemWidth:I
    iget v7, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    mul-int/2addr v7, v1

    sub-int v7, v6, v7

    iget v8, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 439
    .local v3, originalMarginLeft:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v7, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    if-ge v0, v7, :cond_0

    .line 440
    iget-object v7, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v5, v7, v0

    .line 441
    .local v5, view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    add-int v7, v1, v4

    mul-int/2addr v7, v0

    add-int v2, v3, v7

    .line 442
    .local v2, marginLeft:I
    invoke-virtual {v5}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getWidth()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v2, p3, v7, p5}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->layout(IIII)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v2           #marginLeft:I
    .end local v5           #view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->addSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 452
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 453
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public resetContent()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->resetContent()V

    .line 517
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelOperator;->setTriggerAvailable(Z)V

    .line 518
    return-void
.end method

.method public setIsOpen(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen:Z

    .line 537
    return-void
.end method

.method public setSelected(Lcom/didi/frame/carmodel/CarModelPinView;Z)V
    .locals 0
    .parameter "view"
    .parameter "notify"

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/carmodel/CarModelOperator;->setActivatedView(Lcom/didi/frame/carmodel/CarModelPinView;Z)V

    .line 172
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkPins()V

    .line 173
    return-void
.end method

.method public setTriggerAvailable(Z)V
    .locals 3
    .parameter "available"

    .prologue
    const v2, 0x7f0200f3

    .line 486
    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    const v1, 0x7f0202ba

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setIcon(I)V

    .line 488
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    const v1, 0x7f070018

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBelowTextColor(I)V

    .line 489
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v0, v2}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBackgroundResource(I)V

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setClickable(Z)V

    .line 496
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setIcon(I)V

    .line 492
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    const v1, 0x7f070041

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBelowTextColor(I)V

    .line 493
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    invoke-virtual {v0, v2}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public showContentPins()V
    .locals 13

    .prologue
    const/16 v5, 0x96

    const/4 v4, 0x0

    .line 215
    const-string v0, "showContentPins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v9

    .line 218
    .local v9, area:Lcom/didi/frame/controlpanel/OperationArea;
    iget-object v1, p0, Lcom/didi/frame/carmodel/CarModelOperator;->trigger:Lcom/didi/frame/carmodel/CarModelTriggerView;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v3, v0, v4

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v0, 0x3f80

    invoke-direct {v7, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/carmodel/CarModelOperator;->slide(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V

    .line 219
    invoke-virtual {v9}, Lcom/didi/frame/controlpanel/OperationArea;->getChildCount()I

    move-result v10

    .line 221
    .local v10, count:I
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelAdapter;->getCurrentAdapter()Lcom/didi/frame/carmodel/ModelAdapter;

    move-result-object v8

    .line 222
    .local v8, adapter:Lcom/didi/frame/carmodel/ModelAdapter;
    if-eqz v8, :cond_1

    .line 223
    const/4 v11, 0x0

    .local v11, index:I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 224
    invoke-virtual {v9, v11}, Lcom/didi/frame/controlpanel/OperationArea;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 225
    .local v12, view:Landroid/view/View;
    invoke-direct {p0, v12}, Lcom/didi/frame/carmodel/CarModelOperator;->isAvailable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-static {v12}, Lcom/didi/common/ui/component/UiHelper;->invisible(Landroid/view/View;)V

    .line 223
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 229
    .end local v11           #index:I
    .end local v12           #view:Landroid/view/View;
    :cond_1
    invoke-direct {p0, v5, v5}, Lcom/didi/frame/carmodel/CarModelOperator;->boomPins(II)V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen:Z

    .line 231
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->removeSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 457
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 458
    return-void
.end method

.method public updateCarModelPinViewSelect()V
    .locals 9

    .prologue
    .line 153
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarOrder;

    .line 154
    .local v2, carOrder:Lcom/didi/car/model/CarOrder;
    if-eqz v2, :cond_2

    .line 155
    iget-object v1, v2, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 156
    .local v1, carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v1, :cond_1

    .line 157
    iget-object v7, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 158
    const/4 v5, 0x0

    .line 159
    .local v5, index:I
    iget-object v0, v1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget v3, v0, v4

    .line 160
    .local v3, i:I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    .line 161
    iget-object v7, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    iget-object v8, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v8, v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    .end local v0           #arr$:[I
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #index:I
    .end local v6           #len$:I
    :cond_1
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkPins()V

    .line 168
    .end local v1           #carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    :cond_2
    return-void
.end method

.method public updateContentPin(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 115
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    .line 117
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->selectedPinViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;

    aget-object v2, v3, v0

    .line 120
    .local v2, view:Lcom/didi/frame/carmodel/CarModelPinView;
    iget v3, p0, Lcom/didi/frame/carmodel/CarModelOperator;->count:I

    if-ge v0, v3, :cond_1

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarModel;

    .line 122
    .local v1, model:Lcom/didi/car/model/CarModel;
    iget-object v3, v1, Lcom/didi/car/model/CarModel;->androidIcon:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/didi/frame/carmodel/CarModelPinView;->getIcon()Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 123
    iget-object v3, v1, Lcom/didi/car/model/CarModel;->cTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/didi/frame/carmodel/CarModelPinView;->setBelowText(Ljava/lang/String;)V

    .line 124
    iget-object v3, v1, Lcom/didi/car/model/CarModel;->cTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/didi/frame/carmodel/CarModelPinView;->setName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v4}, Lcom/didi/frame/carmodel/CarModelPinView;->setEnabled(Z)V

    .line 126
    iget v3, v1, Lcom/didi/car/model/CarModel;->cDefault:I

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/didi/frame/carmodel/CarModelPinView;->setDefault(Z)V

    .line 127
    invoke-virtual {v2, v1}, Lcom/didi/frame/carmodel/CarModelPinView;->setTag(Ljava/lang/Object;)V

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContentPin model:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/didi/car/model/CarModel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 118
    .end local v1           #model:Lcom/didi/car/model/CarModel;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1       #model:Lcom/didi/car/model/CarModel;
    :cond_0
    move v3, v5

    .line 126
    goto :goto_1

    .line 130
    .end local v1           #model:Lcom/didi/car/model/CarModel;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/didi/frame/carmodel/CarModelPinView;->setEnabled(Z)V

    goto :goto_2

    .line 136
    .end local v0           #i:I
    .end local v2           #view:Lcom/didi/frame/carmodel/CarModelPinView;
    :cond_2
    return-void
.end method

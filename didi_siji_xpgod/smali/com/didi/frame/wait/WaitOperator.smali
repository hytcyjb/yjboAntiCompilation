.class public Lcom/didi/frame/wait/WaitOperator;
.super Lcom/didi/frame/controlpanel/Operator;
.source "WaitOperator.java"


# static fields
.field private static final CONTENT_BOOM_DURATION:I = 0x96


# instance fields
.field private cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private count:I

.field private isOpen:Z

.field private selectedPinView:Lcom/didi/frame/wait/WaitPinView;

.field private switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

.field private trigger:Lcom/didi/frame/wait/WaitTriggerView;

.field private waitPinArray:[Lcom/didi/frame/wait/WaitPinView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/didi/frame/controlpanel/Operator;-><init>()V

    .line 46
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/wait/WaitOperator$1;-><init>(Lcom/didi/frame/wait/WaitOperator;)V

    iput-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    .line 62
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/wait/WaitOperator$2;-><init>(Lcom/didi/frame/wait/WaitOperator;)V

    iput-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/wait/WaitOperator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/frame/wait/WaitOperator;->resetPins()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/wait/WaitOperator;Ljava/lang/String;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/wait/WaitOperator;->onBusinessCityChange(Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/wait/WaitOperator;)Lcom/didi/frame/wait/WaitPinView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/wait/WaitOperator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/frame/wait/WaitOperator;)[Lcom/didi/frame/wait/WaitPinView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/frame/wait/WaitOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/didi/frame/wait/WaitOperator;->doSlide(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/frame/wait/WaitOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/didi/frame/wait/WaitOperator;->doSlideBack(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/frame/wait/WaitOperator;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/didi/frame/wait/WaitOperator;->isAvailable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private boomPins(II)V
    .locals 3
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 226
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$3;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/wait/WaitOperator$3;-><init>(Lcom/didi/frame/wait/WaitOperator;I)V

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    return-void
.end method

.method private checkPins(Lcom/didi/frame/wait/WaitPinView;)V
    .locals 5
    .parameter "selectedView"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    .local v0, arr$:[Lcom/didi/frame/wait/WaitPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 176
    .local v3, view:Lcom/didi/frame/wait/WaitPinView;
    if-ne v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/didi/frame/wait/WaitPinView;->getWaitTime()I

    move-result v4

    if-lez v4, :cond_0

    .line 177
    invoke-virtual {v3}, Lcom/didi/frame/wait/WaitPinView;->setSelected()V

    .line 175
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v3}, Lcom/didi/frame/wait/WaitPinView;->checkState()V

    goto :goto_1

    .line 181
    .end local v3           #view:Lcom/didi/frame/wait/WaitPinView;
    :cond_1
    return-void
.end method

.method private disableTrigger()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/wait/WaitTriggerView;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitTriggerView;->hide()V

    .line 90
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 91
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
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 334
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

    .line 335
    .local v6, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, p5

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 336
    invoke-virtual {v6, p6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 337
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 339
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/wait/WaitOperator$8;-><init>(Lcom/didi/frame/wait/WaitOperator;Landroid/view/View;ILandroid/view/View;I)V

    int-to-long v1, p5

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
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
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 312
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

    .line 313
    .local v6, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, p5

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 314
    invoke-virtual {v6, p6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 315
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/wait/WaitOperator$7;-><init>(Lcom/didi/frame/wait/WaitOperator;Landroid/view/View;ILandroid/view/View;I)V

    int-to-long v1, p5

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    return-void
.end method

.method private enableTrigger(Ljava/util/ArrayList;)V
    .locals 4
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
    .local p1, timeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    aget-object v1, v2, v0

    .line 98
    .local v1, view:Lcom/didi/frame/wait/WaitPinView;
    iget v2, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    if-ge v0, v2, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/wait/WaitPinView;->setWaitTime(I)V

    .line 100
    invoke-virtual {v1, v3}, Lcom/didi/frame/wait/WaitPinView;->setEnabled(Z)V

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/frame/wait/WaitPinView;->setEnabled(Z)V

    goto :goto_1

    .line 105
    .end local v1           #view:Lcom/didi/frame/wait/WaitPinView;
    :cond_1
    iget-object v2, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {v2, v3}, Lcom/didi/frame/wait/WaitTriggerView;->setEnabled(Z)V

    .line 106
    iget-boolean v2, p0, Lcom/didi/frame/wait/WaitOperator;->isOpen:Z

    if-nez v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {v2}, Lcom/didi/frame/wait/WaitTriggerView;->show()V

    .line 108
    :cond_2
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->initTime()V

    .line 109
    return-void
.end method

.method public static getInstance()Lcom/didi/frame/wait/WaitOperator;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getWaitOperator()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    return-object v0
.end method

.method public static initTime()V
    .locals 6

    .prologue
    .line 408
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getWaitTime()I

    move-result v3

    .line 409
    .local v3, time:I
    if-gez v3, :cond_1

    .line 410
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->reset()V

    .line 416
    :cond_0
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v5

    invoke-direct {v5, v3}, Lcom/didi/frame/wait/WaitOperator;->setSelectedPrice(I)V

    .line 417
    return-void

    .line 412
    :cond_1
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v5

    iget-object v0, v5, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    .local v0, arr$:[Lcom/didi/frame/wait/WaitPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 413
    .local v4, view:Lcom/didi/frame/wait/WaitPinView;
    invoke-virtual {v4}, Lcom/didi/frame/wait/WaitPinView;->getWaitTime()I

    move-result v5

    if-ne v3, v5, :cond_2

    invoke-virtual {v4}, Lcom/didi/frame/wait/WaitPinView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 414
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/didi/frame/wait/WaitOperator;->setSelected(Lcom/didi/frame/wait/WaitPinView;)V

    .line 412
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isAvailable(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 275
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    .local v0, arr$:[Lcom/didi/frame/wait/WaitPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 276
    .local v3, v:Landroid/view/View;
    if-ne v3, p1, :cond_1

    .line 279
    .end local v3           #v:Landroid/view/View;
    :cond_0
    :goto_1
    return v4

    .line 275
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    if-eq p1, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 424
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/frame/wait/WaitOperator;->isOpen:Z

    return v0
.end method

.method private onBusinessCityChange(Ljava/lang/String;Lcom/didi/frame/business/Business;)V
    .locals 4
    .parameter "cityId"
    .parameter "business"

    .prologue
    .line 72
    invoke-static {}, Lcom/didi/frame/wait/WaitAdapter;->getCurrentAdapter()Lcom/didi/frame/wait/WaitAdapter;

    move-result-object v0

    .line 73
    .local v0, adapter:Lcom/didi/frame/wait/WaitAdapter;
    if-eqz v0, :cond_0

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p2, v3, :cond_1

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/wait/WaitOperator;->disableTrigger()V

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {v0, p1}, Lcom/didi/frame/wait/WaitAdapter;->getTriggerText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, triggerText:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {v3, v2}, Lcom/didi/frame/wait/WaitTriggerView;->setTriggerText(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/didi/frame/wait/WaitAdapter;->getWaitTimeList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    .local v1, timeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->shouldEnableWaitTime()Z

    move-result v3

    if-nez v3, :cond_3

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/didi/frame/wait/WaitOperator;->disableTrigger()V

    goto :goto_0

    .line 83
    :cond_3
    invoke-direct {p0, v1}, Lcom/didi/frame/wait/WaitOperator;->enableTrigger(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/frame/wait/WaitOperator;->resetPins()V

    .line 205
    return-void
.end method

.method private resetPins()V
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    .local v0, arr$:[Lcom/didi/frame/wait/WaitPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 193
    .local v3, view:Lcom/didi/frame/wait/WaitPinView;
    invoke-virtual {v3}, Lcom/didi/frame/wait/WaitPinView;->reset()V

    .line 194
    invoke-virtual {v3}, Lcom/didi/frame/wait/WaitPinView;->invisible()V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v3           #view:Lcom/didi/frame/wait/WaitPinView;
    :cond_0
    iget-object v4, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/didi/frame/wait/WaitOperator;->setActivatedView(Lcom/didi/frame/wait/WaitPinView;)V

    .line 197
    return-void
.end method

.method public static select(Lcom/didi/frame/wait/WaitPinView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 404
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/frame/wait/WaitOperator;->setSelected(Lcom/didi/frame/wait/WaitPinView;)V

    .line 405
    return-void
.end method

.method private setActivatedView(Lcom/didi/frame/wait/WaitPinView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    .line 201
    return-void
.end method

.method private setSelectedPrice(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/wait/WaitTriggerView;->setWaitTime(I)V

    .line 421
    return-void
.end method

.method private showOtherTriggers(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 368
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$9;

    invoke-direct {v0, p0}, Lcom/didi/frame/wait/WaitOperator$9;-><init>(Lcom/didi/frame/wait/WaitOperator;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    return-void
.end method

.method private shrinkPins(I)V
    .locals 9
    .parameter "duration"

    .prologue
    .line 248
    iget-object v5, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    invoke-virtual {v5}, Lcom/didi/frame/wait/WaitPinView;->getLeft()I

    move-result v1

    .line 249
    .local v1, endX:I
    iget-object v5, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    invoke-virtual {v5}, Lcom/didi/frame/wait/WaitPinView;->getTop()I

    move-result v3

    .line 252
    .local v3, startY:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    if-ge v2, v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    aget-object v4, v5, v2

    .line 254
    .local v4, view:Lcom/didi/frame/wait/WaitPinView;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/didi/frame/wait/WaitPinView;->getLeft()I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 255
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 256
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 257
    invoke-virtual {v4, v0}, Lcom/didi/frame/wait/WaitPinView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v4           #view:Lcom/didi/frame/wait/WaitPinView;
    :cond_0
    new-instance v5, Lcom/didi/frame/wait/WaitOperator$4;

    invoke-direct {v5, p0}, Lcom/didi/frame/wait/WaitOperator$4;-><init>(Lcom/didi/frame/wait/WaitOperator;)V

    int-to-long v6, p1

    invoke-static {v5, v6, v7}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
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
    .line 285
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/wait/WaitOperator$5;-><init>(Lcom/didi/frame/wait/WaitOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    int-to-long v1, p6

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
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
    .line 298
    new-instance v0, Lcom/didi/frame/wait/WaitOperator$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/wait/WaitOperator$6;-><init>(Lcom/didi/frame/wait/WaitOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    int-to-long v1, p6

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    return-void
.end method


# virtual methods
.method public checkTimeList()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/wait/WaitOperator;->onBusinessCityChange(Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    .line 161
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 162
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    .local v0, arr$:[Lcom/didi/frame/wait/WaitPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 185
    .local v3, view:Lcom/didi/frame/wait/WaitPinView;
    invoke-virtual {v3}, Lcom/didi/frame/wait/WaitPinView;->reset()V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v3           #view:Lcom/didi/frame/wait/WaitPinView;
    :cond_0
    iget-object v4, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {v4}, Lcom/didi/frame/wait/WaitTriggerView;->reset()V

    .line 188
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->clearWaitTime()V

    .line 189
    return-void
.end method

.method public bridge synthetic getContentPins()[Lcom/didi/frame/controlpanel/pin/PinBaseView;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitOperator;->getContentPins()[Lcom/didi/frame/wait/WaitPinView;

    move-result-object v0

    return-object v0
.end method

.method public getContentPins()[Lcom/didi/frame/wait/WaitPinView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    if-nez v0, :cond_0

    .line 155
    iget v0, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    new-array v0, v0, [Lcom/didi/frame/wait/WaitPinView;

    iput-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    return-object v0
.end method

.method public getSelectedPin()Lcom/didi/frame/wait/WaitPinView;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    return-object v0
.end method

.method public getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/wait/WaitTriggerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    return-object v0
.end method

.method public hideContentPins()V
    .locals 9

    .prologue
    const/16 v6, 0x96

    const/4 v2, 0x0

    .line 352
    const-string v0, "hideContentPins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/didi/frame/wait/WaitOperator;->isOpen:Z

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 355
    :cond_0
    const/16 v0, 0x1f4

    iget-object v1, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    invoke-static {v2, v0, v1}, Lcom/didi/common/util/ViewUtil;->setViewClickableTemply(ZI[Landroid/view/View;)V

    .line 356
    invoke-direct {p0, v6}, Lcom/didi/frame/wait/WaitOperator;->shrinkPins(I)V

    .line 357
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/didi/frame/wait/WaitOperator;->setActivatedView(Lcom/didi/frame/wait/WaitPinView;)V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitPinView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/wait/WaitTriggerView;->getLeft()I

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

    .line 361
    .local v8, duration:F
    iget-object v1, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    iget-object v3, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    const/4 v4, 0x4

    float-to-int v5, v8

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/wait/WaitOperator;->slideBack(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V

    .line 363
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/didi/frame/wait/WaitOperator;->showOtherTriggers(I)V

    .line 364
    iput-boolean v2, p0, Lcom/didi/frame/wait/WaitOperator;->isOpen:Z

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    .line 121
    .local v0, area:Lcom/didi/frame/controlpanel/OperationArea;
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 123
    iget-object v3, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    if-nez v3, :cond_0

    .line 124
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/didi/frame/wait/WaitPinView;

    iput-object v3, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    .line 125
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 126
    new-instance v2, Lcom/didi/frame/wait/WaitPinView;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/didi/frame/wait/WaitPinView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, view:Lcom/didi/frame/wait/WaitPinView;
    iget-object v3, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    aput-object v2, v3, v1

    .line 128
    invoke-virtual {v2}, Lcom/didi/frame/wait/WaitPinView;->invisible()V

    .line 129
    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1           #i:I
    .end local v2           #view:Lcom/didi/frame/wait/WaitPinView;
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitOperator;->registerListeners()V

    .line 133
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
    .line 386
    iget v7, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    invoke-static {v7}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getSubPinSplitWidth(I)I

    move-result v4

    .line 388
    .local v4, splitWidth:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v6

    .line 389
    .local v6, windowWidth:I
    invoke-static {}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getSize()I

    move-result v1

    .line 391
    .local v1, itemWidth:I
    iget v7, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    mul-int/2addr v7, v1

    sub-int v7, v6, v7

    iget v8, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 392
    .local v3, originalMarginLeft:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v7, p0, Lcom/didi/frame/wait/WaitOperator;->count:I

    if-ge v0, v7, :cond_0

    .line 393
    iget-object v7, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    aget-object v5, v7, v0

    .line 394
    .local v5, view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    add-int v7, v1, v4

    mul-int/2addr v7, v0

    add-int v2, v3, v7

    .line 395
    .local v2, marginLeft:I
    invoke-virtual {v5}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getWidth()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v2, p3, v7, p5}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->layout(IIII)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v2           #marginLeft:I
    .end local v5           #view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    :cond_0
    return-void
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->addSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 137
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 138
    return-void
.end method

.method public setSelected(Lcom/didi/frame/wait/WaitPinView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/didi/frame/wait/WaitOperator;->setActivatedView(Lcom/didi/frame/wait/WaitPinView;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/didi/frame/wait/WaitOperator;->checkPins(Lcom/didi/frame/wait/WaitPinView;)V

    .line 168
    invoke-virtual {p1}, Lcom/didi/frame/wait/WaitPinView;->getWaitTime()I

    move-result v0

    .line 169
    .local v0, time:I
    iget-object v1, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    invoke-virtual {v1, v0}, Lcom/didi/frame/wait/WaitTriggerView;->setWaitTime(I)V

    .line 170
    iget-object v1, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    invoke-virtual {v1}, Lcom/didi/frame/wait/WaitPinView;->bringToFront()V

    .line 171
    invoke-static {v0}, Lcom/didi/frame/wait/WaitHelper;->setWaitTime(I)V

    .line 172
    return-void
.end method

.method public showContentPins()V
    .locals 12

    .prologue
    const/16 v5, 0x96

    const/4 v4, 0x0

    .line 209
    const-string v0, "showContentPins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v8

    .line 211
    .local v8, area:Lcom/didi/frame/controlpanel/OperationArea;
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/didi/frame/wait/WaitOperator;->setActivatedView(Lcom/didi/frame/wait/WaitPinView;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/wait/WaitOperator;->trigger:Lcom/didi/frame/wait/WaitTriggerView;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v0, 0x3f80

    invoke-direct {v7, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/wait/WaitOperator;->slide(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V

    .line 214
    invoke-virtual {v8}, Lcom/didi/frame/controlpanel/OperationArea;->getChildCount()I

    move-result v9

    .line 216
    .local v9, count:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 217
    invoke-virtual {v8, v10}, Lcom/didi/frame/controlpanel/OperationArea;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 218
    .local v11, view:Landroid/view/View;
    invoke-direct {p0, v11}, Lcom/didi/frame/wait/WaitOperator;->isAvailable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    invoke-static {v11}, Lcom/didi/common/ui/component/UiHelper;->invisible(Landroid/view/View;)V

    .line 216
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 221
    .end local v11           #view:Landroid/view/View;
    :cond_2
    invoke-direct {p0, v5, v5}, Lcom/didi/frame/wait/WaitOperator;->boomPins(II)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/wait/WaitOperator;->isOpen:Z

    .line 223
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->switcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->removeSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 142
    iget-object v0, p0, Lcom/didi/frame/wait/WaitOperator;->cityChangeListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 143
    return-void
.end method

.class public Lcom/didi/frame/carpool/CarPoolOperator;
.super Lcom/didi/frame/controlpanel/Operator;
.source "CarPoolOperator.java"


# static fields
.field private static final CONTENT_BOOM_DURATION:I = 0x96


# instance fields
.field private mIsOpen:Z

.field private mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

.field private mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

.field private mSwitcherListener:Lcom/didi/frame/switcher/SwitcherListener;

.field private mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/didi/frame/controlpanel/Operator;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->initListeners()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/carpool/CarPoolOperator;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/didi/frame/carpool/CarPoolOperator;->onBusinessChanged(Lcom/didi/frame/business/Business;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/didi/frame/carpool/CarPoolOperator;->doSlide(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/carpool/CarPoolOperator;)Lcom/didi/frame/carpool/CarPoolPinView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/carpool/CarPoolOperator;)[Lcom/didi/frame/carpool/CarPoolPinView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/didi/frame/carpool/CarPoolOperator;->doSlideBack(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/didi/frame/carpool/CarPoolOperator;->isAvailable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private boomPins(II)V
    .locals 3
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 289
    new-instance v0, Lcom/didi/frame/carpool/CarPoolOperator$4;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/carpool/CarPoolOperator$4;-><init>(Lcom/didi/frame/carpool/CarPoolOperator;I)V

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    return-void
.end method

.method private checkPins(Lcom/didi/frame/carpool/CarPoolPinView;)V
    .locals 5
    .parameter "selectedView"

    .prologue
    .line 188
    const-string v4, "checkPins"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    .local v0, arr$:[Lcom/didi/frame/carpool/CarPoolPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 190
    .local v3, view:Lcom/didi/frame/carpool/CarPoolPinView;
    if-ne v3, p1, :cond_0

    .line 191
    invoke-virtual {v3}, Lcom/didi/frame/carpool/CarPoolPinView;->setSelected()V

    .line 189
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v3}, Lcom/didi/frame/carpool/CarPoolPinView;->isSelectable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/didi/frame/carpool/CarPoolPinView;->setSelectable(Z)V

    goto :goto_1

    .line 195
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/didi/frame/carpool/CarPoolPinView;->setSelectable(Z)V

    goto :goto_1

    .line 198
    .end local v3           #view:Lcom/didi/frame/carpool/CarPoolPinView;
    :cond_2
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
    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 272
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

    .line 273
    .local v6, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, p5

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 274
    invoke-virtual {v6, p6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 275
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    new-instance v0, Lcom/didi/frame/carpool/CarPoolOperator$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/carpool/CarPoolOperator$3;-><init>(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;I)V

    int-to-long v1, p5

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
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
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 392
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

    .line 393
    .local v6, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v0, p5

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 394
    invoke-virtual {v6, p6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 395
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    new-instance v0, Lcom/didi/frame/carpool/CarPoolOperator$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/didi/frame/carpool/CarPoolOperator$7;-><init>(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;I)V

    int-to-long v1, p5

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void
.end method

.method public static getInstance()Lcom/didi/frame/carpool/CarPoolOperator;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getCarPoolOperator()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    return-object v0
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/didi/frame/carpool/CarPoolOperator$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/carpool/CarPoolOperator$1;-><init>(Lcom/didi/frame/carpool/CarPoolOperator;)V

    iput-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSwitcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    .line 59
    return-void
.end method

.method private initTriggerAndPinViews()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    .line 75
    .local v0, area:Lcom/didi/frame/controlpanel/OperationArea;
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    .local v2, context:Landroid/content/Context;
    const/4 v8, 0x3

    new-array v8, v8, [Lcom/didi/frame/carpool/CarPoolPinView;

    iput-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    .line 77
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    new-instance v9, Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-direct {v9, v2}, Lcom/didi/frame/carpool/CarPoolPinView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v11

    .line 78
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v11

    invoke-virtual {v8, v7}, Lcom/didi/frame/carpool/CarPoolPinView;->setValue(I)V

    .line 79
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v11

    const v9, 0x7f0b047d

    invoke-virtual {v8, v9}, Lcom/didi/frame/carpool/CarPoolPinView;->setBelowText(I)V

    .line 80
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v11

    const v9, 0x7f02013f

    const v10, 0x7f02013e

    invoke-virtual {v8, v9, v10}, Lcom/didi/frame/carpool/CarPoolPinView;->setIcon(II)V

    .line 82
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Lcom/didi/frame/carpool/CarPoolPinView;->invisible()V

    .line 83
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v11

    invoke-virtual {v0, v8}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 85
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    new-instance v9, Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-direct {v9, v2}, Lcom/didi/frame/carpool/CarPoolPinView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v7

    .line 86
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v7

    invoke-virtual {v8, v11}, Lcom/didi/frame/carpool/CarPoolPinView;->setValue(I)V

    .line 87
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v7

    const v9, 0x7f0b047e

    invoke-virtual {v8, v9}, Lcom/didi/frame/carpool/CarPoolPinView;->setBelowText(I)V

    .line 88
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v7

    const v9, 0x7f020141

    const v10, 0x7f020140

    invoke-virtual {v8, v9, v10}, Lcom/didi/frame/carpool/CarPoolPinView;->setIcon(II)V

    .line 90
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/didi/frame/carpool/CarPoolPinView;->invisible()V

    .line 91
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v7

    invoke-virtual {v0, v8}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 93
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    new-instance v9, Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-direct {v9, v2}, Lcom/didi/frame/carpool/CarPoolPinView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v12

    .line 94
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v12

    invoke-virtual {v8, v12}, Lcom/didi/frame/carpool/CarPoolPinView;->setValue(I)V

    .line 95
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v12

    const v9, 0x7f0b047f

    invoke-virtual {v8, v9}, Lcom/didi/frame/carpool/CarPoolPinView;->setBelowText(I)V

    .line 96
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v12

    const v9, 0x7f020144

    const v10, 0x7f020143

    invoke-virtual {v8, v9, v10}, Lcom/didi/frame/carpool/CarPoolPinView;->setIcon(II)V

    .line 98
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v12

    invoke-virtual {v8}, Lcom/didi/frame/carpool/CarPoolPinView;->invisible()V

    .line 99
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v8, v8, v12

    invoke-virtual {v0, v8}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 101
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolHelper;->getCarPoolType()I

    move-result v3

    .line 103
    .local v3, defaultValue:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    move v3, v7

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    .local v1, arr$:[Lcom/didi/frame/carpool/CarPoolPinView;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v1, v4

    .line 106
    .local v6, pinView:Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-virtual {v6}, Lcom/didi/frame/carpool/CarPoolPinView;->getValue()I

    move-result v7

    if-ne v3, v7, :cond_1

    .line 107
    invoke-virtual {v6}, Lcom/didi/frame/carpool/CarPoolPinView;->setSelected()V

    .line 108
    iput-object v6, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    .line 109
    iget-object v7, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-virtual {v6}, Lcom/didi/frame/carpool/CarPoolPinView;->getIconId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setIcon(I)V

    .line 110
    iget-object v7, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-virtual {v6}, Lcom/didi/frame/carpool/CarPoolPinView;->getBelowText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setBelowText(Ljava/lang/String;)V

    .line 105
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    .end local v6           #pinView:Lcom/didi/frame/carpool/CarPoolPinView;
    :cond_2
    return-void
.end method

.method private isAvailable(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 450
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    .local v0, arr$:[Lcom/didi/frame/carpool/CarPoolPinView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 451
    .local v3, v:Landroid/view/View;
    if-ne v3, p1, :cond_1

    .line 454
    .end local v3           #v:Landroid/view/View;
    :cond_0
    :goto_1
    return v4

    .line 450
    .restart local v3       #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    if-eq p1, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 477
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/frame/carpool/CarPoolOperator;->mIsOpen:Z

    return v0
.end method

.method private onBusinessChanged(Lcom/didi/frame/business/Business;)V
    .locals 2
    .parameter "targetBusiness"

    .prologue
    .line 124
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->enableTrigger()V

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->disableTrigger()V

    goto :goto_0
.end method

.method private setActivatedView(Lcom/didi/frame/carpool/CarPoolPinView;)V
    .locals 0
    .parameter "carPoolPinView"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    .line 244
    return-void
.end method

.method private showOtherTriggers(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 409
    new-instance v0, Lcom/didi/frame/carpool/CarPoolOperator$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/carpool/CarPoolOperator$8;-><init>(Lcom/didi/frame/carpool/CarPoolOperator;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    return-void
.end method

.method private shrinkPins(I)V
    .locals 9
    .parameter "duration"

    .prologue
    .line 338
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-virtual {v5}, Lcom/didi/frame/carpool/CarPoolPinView;->getLeft()I

    move-result v1

    .line 339
    .local v1, endX:I
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-virtual {v5}, Lcom/didi/frame/carpool/CarPoolPinView;->getTop()I

    move-result v3

    .line 343
    .local v3, startY:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 344
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v4, v5, v2

    .line 345
    .local v4, view:Lcom/didi/frame/carpool/CarPoolPinView;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/didi/frame/carpool/CarPoolPinView;->getLeft()I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 346
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 347
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 348
    invoke-virtual {v4, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v4           #view:Lcom/didi/frame/carpool/CarPoolPinView;
    :cond_0
    new-instance v5, Lcom/didi/frame/carpool/CarPoolOperator$5;

    invoke-direct {v5, p0}, Lcom/didi/frame/carpool/CarPoolOperator$5;-><init>(Lcom/didi/frame/carpool/CarPoolOperator;)V

    int-to-long v6, p1

    invoke-static {v5, v6, v7}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
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
    .line 254
    new-instance v0, Lcom/didi/frame/carpool/CarPoolOperator$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/carpool/CarPoolOperator$2;-><init>(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    int-to-long v1, p6

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
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
    .line 374
    new-instance v0, Lcom/didi/frame/carpool/CarPoolOperator$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/carpool/CarPoolOperator$6;-><init>(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    int-to-long v1, p6

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    return-void
.end method


# virtual methods
.method public checkCarPool()V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/frame/carpool/CarPoolOperator;->onBusinessChanged(Lcom/didi/frame/business/Business;)V

    .line 152
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 153
    return-void
.end method

.method public disableTrigger()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->hide()V

    .line 142
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 143
    return-void
.end method

.method public enableTrigger()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->show()V

    .line 148
    return-void
.end method

.method public getContentPins()[Lcom/didi/frame/controlpanel/pin/PinBaseView;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/carpool/CarPoolTriggerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    return-object v0
.end method

.method public bridge synthetic getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v0

    return-object v0
.end method

.method public hideContentPins()V
    .locals 9

    .prologue
    const/16 v6, 0x96

    const/4 v2, 0x0

    .line 312
    const-string v0, "hideContentPins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 317
    :cond_0
    const/16 v0, 0x1f4

    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-static {v2, v0, v1}, Lcom/didi/common/util/ViewUtil;->setViewClickableTemply(ZI[Landroid/view/View;)V

    .line 318
    invoke-direct {p0, v6}, Lcom/didi/frame/carpool/CarPoolOperator;->shrinkPins(I)V

    .line 319
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/didi/frame/carpool/CarPoolOperator;->setActivatedView(Lcom/didi/frame/carpool/CarPoolPinView;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolPinView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/carpool/CarPoolTriggerView;->getLeft()I

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

    .line 324
    .local v8, duration:F
    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    iget-object v3, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    const/4 v4, 0x4

    float-to-int v5, v8

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/carpool/CarPoolOperator;->slideBack(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V

    .line 332
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/didi/frame/carpool/CarPoolOperator;->showOtherTriggers(I)V

    .line 333
    iput-boolean v2, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mIsOpen:Z

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    .line 63
    .local v0, area:Lcom/didi/frame/controlpanel/OperationArea;
    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->registerListeners()V

    .line 68
    invoke-direct {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->initTriggerAndPinViews()V

    .line 70
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/frame/carpool/CarPoolOperator;->onBusinessChanged(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method public layout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, count:I
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    if-eqz v8, :cond_0

    .line 430
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    array-length v0, v8

    .line 433
    :cond_0
    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getSplitWidth(I)I

    move-result v5

    .line 434
    .local v5, splitWidth:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v7

    .line 435
    .local v7, windowWidth:I
    invoke-static {}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getSize()I

    move-result v2

    .line 437
    .local v2, itemWidth:I
    mul-int v8, v0, v2

    sub-int v8, v7, v8

    add-int/lit8 v9, v0, -0x1

    mul-int/2addr v9, v5

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    .line 440
    .local v4, originalMarginLeft:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 441
    iget-object v8, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v6, v8, v1

    .line 442
    .local v6, view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    add-int v8, v2, v5

    mul-int/2addr v8, v1

    add-int v3, v4, v8

    .line 443
    .local v3, marginLeft:I
    invoke-virtual {v6}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v6, v3, p3, v8, p5}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->layout(IIII)V

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v3           #marginLeft:I
    .end local v6           #view:Lcom/didi/frame/controlpanel/pin/PinBaseView;
    :cond_1
    const-string v8, "OperationArea"

    const-string v9, "carpool layout"

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public lockCarPoolType(ZZZ)V
    .locals 5
    .parameter "canFlag"
    .parameter "noFlag"
    .parameter "onlyFlag"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 465
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/didi/frame/carpool/CarPoolPinView;->setSelectable(Z)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v1, v1, v3

    if-eq v0, v1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Lcom/didi/frame/carpool/CarPoolPinView;->setSelectable(Z)V

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v1, v1, v4

    if-eq v0, v1, :cond_2

    .line 472
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v0, v0, v4

    invoke-virtual {v0, p3}, Lcom/didi/frame/carpool/CarPoolPinView;->setSelectable(Z)V

    .line 474
    :cond_2
    return-void
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSwitcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->addSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 117
    return-void
.end method

.method public setSelected(II)V
    .locals 2
    .parameter "carPoolType"
    .parameter "from"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/carpool/CarPoolOperator;->setSelected(Lcom/didi/frame/carpool/CarPoolPinView;I)V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/carpool/CarPoolOperator;->setSelected(Lcom/didi/frame/carpool/CarPoolPinView;I)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/didi/frame/carpool/CarPoolOperator;->setSelected(Lcom/didi/frame/carpool/CarPoolPinView;I)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setSelected(Lcom/didi/frame/carpool/CarPoolPinView;I)V
    .locals 3
    .parameter "view"
    .parameter "from"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/didi/frame/carpool/CarPoolOperator;->setActivatedView(Lcom/didi/frame/carpool/CarPoolPinView;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/didi/frame/carpool/CarPoolOperator;->checkPins(Lcom/didi/frame/carpool/CarPoolPinView;)V

    .line 159
    invoke-virtual {p1}, Lcom/didi/frame/carpool/CarPoolPinView;->getBelowText()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, label:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-virtual {v1, v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setBelowText(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    invoke-virtual {p1}, Lcom/didi/frame/carpool/CarPoolPinView;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setIcon(I)V

    .line 163
    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    invoke-virtual {v1}, Lcom/didi/frame/carpool/CarPoolPinView;->bringToFront()V

    .line 165
    invoke-virtual {p1}, Lcom/didi/frame/carpool/CarPoolPinView;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/didi/frame/carpool/CarPoolHelper;->saveCarPoolType(I)V

    .line 166
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/didi/frame/carpool/CarPoolPinView;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/didi/frame/carpool/CarPoolHelper;->notifyChange(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public showContentPins()V
    .locals 12

    .prologue
    const/16 v5, 0x96

    const/4 v4, 0x0

    .line 214
    const-string v0, "showContentPins"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v8

    .line 218
    .local v8, area:Lcom/didi/frame/controlpanel/OperationArea;
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/didi/frame/carpool/CarPoolOperator;->setActivatedView(Lcom/didi/frame/carpool/CarPoolPinView;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mTriggerView:Lcom/didi/frame/carpool/CarPoolTriggerView;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v0, 0x3f80

    invoke-direct {v7, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/didi/frame/carpool/CarPoolOperator;->slide(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V

    .line 230
    invoke-virtual {v8}, Lcom/didi/frame/controlpanel/OperationArea;->getChildCount()I

    move-result v9

    .line 232
    .local v9, count:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 233
    invoke-virtual {v8, v10}, Lcom/didi/frame/controlpanel/OperationArea;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 234
    .local v11, view:Landroid/view/View;
    invoke-direct {p0, v11}, Lcom/didi/frame/carpool/CarPoolOperator;->isAvailable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-static {v11}, Lcom/didi/common/ui/component/UiHelper;->invisible(Landroid/view/View;)V

    .line 232
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 237
    .end local v11           #view:Landroid/view/View;
    :cond_2
    invoke-direct {p0, v5, v5}, Lcom/didi/frame/carpool/CarPoolOperator;->boomPins(II)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mIsOpen:Z

    .line 240
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator;->mSwitcherListener:Lcom/didi/frame/switcher/SwitcherListener;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->removeSwitcherListener(Lcom/didi/frame/switcher/SwitcherListener;)V

    .line 137
    return-void
.end method

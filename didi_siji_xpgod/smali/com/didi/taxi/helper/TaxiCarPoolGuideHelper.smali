.class public Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;
.super Ljava/lang/Object;
.source "TaxiCarPoolGuideHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;


# instance fields
.field private mPopTouchLister:Landroid/view/View$OnTouchListener;

.field private mPopupwinow:Landroid/widget/PopupWindow;

.field private rootView:Lx/RelativeLayout;

.field private showGuideRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->instance:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    .line 114
    new-instance v0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$2;-><init>(Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;)V

    iput-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopTouchLister:Landroid/view/View$OnTouchListener;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->instance:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->instance:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    invoke-direct {v0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;-><init>()V

    sput-object v0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->instance:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->instance:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initPopupWindow()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 45
    new-instance v7, Lx/RelativeLayout;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v8

    invoke-direct {v7, v8}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->rootView:Lx/RelativeLayout;

    .line 46
    iget-object v7, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->rootView:Lx/RelativeLayout;

    const v8, 0x7f07002c

    invoke-static {v8}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lx/RelativeLayout;->setBackgroundColor(I)V

    .line 47
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v3, containParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->rootView:Lx/RelativeLayout;

    invoke-virtual {v7, v3}, Lx/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v1, Lx/ImageView;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v7

    invoke-direct {v1, v7}, Lx/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, carPoolCircle:Lx/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Lx/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    const v7, 0x7f0200e2

    invoke-virtual {v1, v7}, Lx/ImageView;->setBackgroundResource(I)V

    .line 53
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v6

    .line 54
    .local v6, trigger:Lcom/didi/frame/carpool/CarPoolTriggerView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v7, 0x7f090346

    invoke-static {v7}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v7

    float-to-int v7, v7

    const v8, 0x7f090343

    invoke-static {v8}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 57
    .local v4, location:[I
    invoke-virtual {v6, v4}, Lcom/didi/frame/carpool/CarPoolTriggerView;->getLocationOnScreen([I)V

    .line 59
    const/4 v7, 0x0

    aget v7, v4, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 60
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v7

    const/4 v8, 0x1

    aget v8, v4, v8

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Lcom/didi/frame/carpool/CarPoolTriggerView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 62
    new-instance v0, Lx/ImageView;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v7

    invoke-direct {v0, v7}, Lx/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, carPoolCenter:Lx/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v7}, Lx/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    const v7, 0x7f0200e1

    invoke-virtual {v0, v7}, Lx/ImageView;->setImageResource(I)V

    .line 65
    const v7, 0x7f070044

    invoke-virtual {v0, v7}, Lx/ImageView;->setBackgroundResource(I)V

    .line 66
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const v7, 0x7f090342

    invoke-static {v7}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v7

    float-to-int v7, v7

    const v8, 0x7f090340

    invoke-static {v8}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v2, centerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xe

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    const v7, 0x7f090341

    invoke-static {v7}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 70
    invoke-virtual {v0, v2}, Lx/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v1, v5}, Lx/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v7, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->rootView:Lx/RelativeLayout;

    invoke-virtual {v7, v1, v5}, Lx/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v7, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->rootView:Lx/RelativeLayout;

    invoke-virtual {v7, v0, v2}, Lx/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v7, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->rootView:Lx/RelativeLayout;

    iget-object v8, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopTouchLister:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Lx/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public disMissGuide()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    .line 107
    :cond_0
    return-void
.end method

.method public realease()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->showGuideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {p0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->disMissGuide()V

    .line 112
    return-void
.end method

.method public showGuide()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 79
    invoke-direct {p0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->initPopupWindow()V

    .line 80
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->rootView:Lx/RelativeLayout;

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 84
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 85
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 86
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 87
    return-void
.end method

.method public showGuideDelay()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$1;-><init>(Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;)V

    iput-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->showGuideRunnable:Ljava/lang/Runnable;

    .line 98
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->showGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method

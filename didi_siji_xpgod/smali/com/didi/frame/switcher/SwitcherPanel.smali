.class public Lcom/didi/frame/switcher/SwitcherPanel;
.super Lcom/didi/common/base/BaseLayout;
.source "SwitcherPanel.java"


# instance fields
.field private adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

.field private consumed:Z

.field private currentIndex:I

.field private downX:F

.field private downY:F

.field private intersectedIndex:I

.field private itemWidth:I

.field private locked:Z

.field private mControlPanel:Lcom/didi/frame/controlpanel/ControlPanel;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08056b
    .end annotation
.end field

.field private mIntersectedView:Landroid/view/View;

.field private mLayoutSwitcherBg:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080569
    .end annotation
.end field

.field private mLayoutSwitcherContent:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08056a
    .end annotation
.end field

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private switcherOffsetLeft:I

.field private switching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/didi/frame/switcher/SwitcherPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/frame/switcher/SwitcherPanel;)Lcom/didi/frame/switcher/SwitcherAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    return-object v0
.end method

.method private activate(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 187
    iget-object v3, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 188
    .local v0, count:I
    const/4 v2, 0x0

    .line 189
    .local v2, targetItem:Lcom/didi/frame/switcher/SwitcherItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 190
    iget-object v3, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #targetItem:Lcom/didi/frame/switcher/SwitcherItem;
    check-cast v2, Lcom/didi/frame/switcher/SwitcherItem;

    .line 191
    .restart local v2       #targetItem:Lcom/didi/frame/switcher/SwitcherItem;
    if-ne v1, p1, :cond_0

    .line 192
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/frame/switcher/SwitcherItem;->activate(Ljava/lang/Runnable;)V

    .line 189
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v2}, Lcom/didi/frame/switcher/SwitcherItem;->deactivate()V

    goto :goto_1

    .line 198
    :cond_1
    return-void
.end method

.method private canSwitchTo(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v3}, Lcom/didi/frame/switcher/SwitcherAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    iget v3, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    if-eq v3, p1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->hasWaitingItem(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->switch_tab:Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    iget v3, v3, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->is_open:I

    if-ne v3, v2, :cond_2

    .line 206
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog;

    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/ui/component/CommonDialog;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, dialog:Lcom/didi/common/ui/component/CommonDialog;
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/CommonDialog;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 208
    const/4 v2, 0x0

    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->switch_tab:Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/didi/common/ui/component/CommonDialog;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/beatles/model/BtsConfig;->switch_tab:Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    iget-object v2, v2, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->cancel_button:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/CommonDialog;->setCancelBtnText(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/beatles/model/BtsConfig;->switch_tab:Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    iget-object v2, v2, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->confirm_button:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/CommonDialog;->setSubmitBtnText(Ljava/lang/String;)V

    .line 211
    new-instance v2, Lcom/didi/frame/switcher/SwitcherPanel$2;

    invoke-direct {v2, p0}, Lcom/didi/frame/switcher/SwitcherPanel$2;-><init>(Lcom/didi/frame/switcher/SwitcherPanel;)V

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/CommonDialog;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 239
    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog;->show()V

    goto :goto_0

    .end local v0           #dialog:Lcom/didi/common/ui/component/CommonDialog;
    :cond_2
    move v1, v2

    .line 242
    goto :goto_0
.end method

.method private getInternalEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3
    .parameter "event"

    .prologue
    .line 412
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 413
    .local v0, innerMotionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 414
    return-object v0
.end method

.method private getIntersectedView(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "event"

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->getInternalEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, item:Lcom/didi/frame/switcher/SwitcherItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #item:Lcom/didi/frame/switcher/SwitcherItem;
    check-cast v1, Lcom/didi/frame/switcher/SwitcherItem;

    .line 422
    .restart local v1       #item:Lcom/didi/frame/switcher/SwitcherItem;
    invoke-static {v1, p1}, Lcom/didi/common/util/WindowUtil;->intersects(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iput-object v1, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mIntersectedView:Landroid/view/View;

    .line 424
    invoke-virtual {v1}, Lcom/didi/frame/switcher/SwitcherItem;->getIndex()I

    move-result v2

    .line 428
    :goto_1
    return v2

    .line 420
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/didi/frame/switcher/SwitcherPanel$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/SwitcherPanel$1;-><init>(Lcom/didi/frame/switcher/SwitcherPanel;)V

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method

.method private move(I)I
    .locals 8
    .parameter "index"

    .prologue
    .line 292
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    sub-int/2addr v0, p1

    iget v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->itemWidth:I

    mul-int v1, v0, v2

    .line 293
    .local v1, offset:I
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v6, v0, 0x28

    .line 294
    .local v6, duration:I
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switcherOffsetLeft:I

    .line 295
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    int-to-long v3, v6

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-static/range {v0 .. v5}, Lcom/didi/common/util/AnimationUtil;->move(Landroid/view/View;IIJLandroid/view/animation/Interpolator;)Z

    move-result v7

    .line 296
    .local v7, moved:Z
    if-eqz v7, :cond_0

    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->setCurrentIndex(IZ)V

    .line 300
    :cond_0
    return v6
.end method

.method private setCurrentIndex(IZ)V
    .locals 2
    .parameter "index"
    .parameter "trigger"

    .prologue
    .line 304
    iput p1, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitcherPanel--setCurrentIndex trigger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 306
    if-eqz p2, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->triggerSwitch(I)V

    .line 309
    :cond_0
    return-void
.end method

.method private swipe(Z)V
    .locals 1
    .parameter "left"

    .prologue
    .line 438
    if-eqz p1, :cond_1

    .line 439
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->canSwitchTo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherPanel;->switchToPrev()V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->canSwitchTo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherPanel;->switchToNext()V

    goto :goto_0
.end method

.method private triggerSwitch(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 317
    new-instance v0, Lcom/didi/frame/switcher/SwitcherPanel$4;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel$4;-><init>(Lcom/didi/frame/switcher/SwitcherPanel;I)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    return-void
.end method


# virtual methods
.method public getControlPanel()Lcom/didi/frame/controlpanel/ControlPanel;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mControlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    return-object v0
.end method

.method public getCurrentBusiness()Lcom/didi/frame/business/Business;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    iget v1, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/didi/frame/switcher/SwitcherAdapter;->getBusiness(I)Lcom/didi/frame/business/Business;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentItem()Lcom/didi/frame/switcher/SwitcherItem;
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    invoke-virtual {p0, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->getItem(I)Lcom/didi/frame/switcher/SwitcherItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/didi/frame/switcher/SwitcherItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/switcher/SwitcherItem;

    return-object v0
.end method

.method public getItemByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/switcher/SwitcherItem;
    .locals 2
    .parameter "business"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->getItemIndex(Lcom/didi/frame/business/Business;)I

    move-result v0

    .line 145
    .local v0, index:I
    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/switcher/SwitcherItem;

    return-object v1
.end method

.method public getItemIndex(Lcom/didi/frame/business/Business;)I
    .locals 1
    .parameter "business"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->getIndexByBusinexx(Lcom/didi/frame/business/Business;)I

    move-result v0

    return v0
.end method

.method public getLayoutSwitcherHeight()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->locked:Z

    .line 475
    return-void
.end method

.method public notifyChanged()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {p0, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->setAdapter(Lcom/didi/frame/switcher/SwitcherAdapter;)V

    .line 483
    return-void
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 454
    const v0, 0x7f09033d

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->itemWidth:I

    .line 455
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 449
    const v0, 0x7f0300f9

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 461
    invoke-super/range {p0 .. p5}, Lcom/didi/common/base/BaseLayout;->onLayout(ZIIII)V

    .line 462
    iget v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switcherOffsetLeft:I

    if-eqz v2, :cond_0

    .line 463
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    .line 464
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 465
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switcherOffsetLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switcherOffsetLeft:I

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 467
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #measuredWidth:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 353
    iget-boolean v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->locked:Z

    if-eqz v7, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v6

    .line 355
    :cond_1
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 357
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 358
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 361
    .local v4, y:F
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_2

    .line 362
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 363
    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 365
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 366
    iput-boolean v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->consumed:Z

    .line 367
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mIntersectedView:Landroid/view/View;

    .line 368
    invoke-direct {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->getIntersectedView(Landroid/view/MotionEvent;)I

    move-result v5

    iput v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->intersectedIndex:I

    .line 369
    iput v3, p0, Lcom/didi/frame/switcher/SwitcherPanel;->downX:F

    .line 370
    iput v4, p0, Lcom/didi/frame/switcher/SwitcherPanel;->downY:F

    goto :goto_0

    .line 373
    :pswitch_1
    iget-boolean v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->consumed:Z

    if-nez v7, :cond_0

    .line 375
    iget v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->downX:F

    sub-float v1, v3, v7

    .line 376
    .local v1, distanceX:F
    iget v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->downY:F

    sub-float v2, v4, v7

    .line 377
    .local v2, distanceY:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Lcom/didi/common/helper/TouchHelper;->getTouchSlop()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Lcom/didi/common/helper/TouchHelper;->getTouchSlop()F

    move-result v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 379
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 381
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 382
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Lcom/didi/common/helper/TouchHelper;->getScaledMinimumFlingVelocity()F

    move-result v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 384
    iput-boolean v6, p0, Lcom/didi/frame/switcher/SwitcherPanel;->consumed:Z

    .line 385
    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-lez v7, :cond_4

    move v5, v6

    :cond_4
    invoke-direct {p0, v5}, Lcom/didi/frame/switcher/SwitcherPanel;->swipe(Z)V

    goto/16 :goto_0

    .line 389
    .end local v1           #distanceX:F
    .end local v2           #distanceY:F
    :pswitch_2
    iget-object v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_5

    .line 390
    iget-object v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 392
    :cond_5
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    .line 393
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/wait/WaitOperator;->hideContentPins()V

    .line 394
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/carpool/CarPoolOperator;->hideContentPins()V

    .line 395
    iget-boolean v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->consumed:Z

    if-nez v5, :cond_0

    .line 397
    iget-object v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mIntersectedView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->getInternalEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/didi/common/util/WindowUtil;->intersects(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 398
    iget v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->intersectedIndex:I

    invoke-direct {p0, v5}, Lcom/didi/frame/switcher/SwitcherPanel;->canSwitchTo(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 399
    iget v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->intersectedIndex:I

    invoke-virtual {p0, v5}, Lcom/didi/frame/switcher/SwitcherPanel;->switchTo(I)V

    goto/16 :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public select(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 170
    iget-boolean v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switching:Z

    if-eqz v7, :cond_0

    .line 184
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/didi/frame/switcher/SwitcherPanel;->itemWidth:I

    mul-int/2addr v8, p1

    add-int v5, v7, v8

    .line 173
    .local v5, targetItemLeft:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/didi/frame/switcher/SwitcherPanel;->itemWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 174
    .local v1, centerStubLeft:I
    sub-int v3, v1, v5

    .line 176
    .local v3, offset:I
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v7

    add-int v2, v7, v3

    .line 177
    .local v2, left:I
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    .line 178
    .local v6, top:I
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    add-int v4, v7, v3

    .line 179
    .local v4, right:I
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    .line 180
    .local v0, bottom:I
    iput v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switcherOffsetLeft:I

    .line 181
    iget-object v7, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2, v6, v4, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 182
    invoke-direct {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->activate(I)V

    .line 183
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/didi/frame/switcher/SwitcherPanel;->setCurrentIndex(IZ)V

    goto :goto_0
.end method

.method public select(Lcom/didi/frame/business/Business;)V
    .locals 2
    .parameter "business"

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitcherPanel---select---biz:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/frame/business/Business;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->getItemIndex(Lcom/didi/frame/business/Business;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->select(I)V

    .line 162
    return-void
.end method

.method public setAdapter(Lcom/didi/frame/switcher/SwitcherAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->setAdapter(Lcom/didi/frame/switcher/SwitcherAdapter;Z)V

    .line 77
    return-void
.end method

.method public setAdapter(Lcom/didi/frame/switcher/SwitcherAdapter;Z)V
    .locals 4
    .parameter "adapter"
    .parameter "resizeItemView"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 81
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitcherCityAdapter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 85
    const-string v2, "SwitcherCityAdapterInvisible"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherBg:Landroid/view/View;

    const v3, 0x7f070044

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->invisible(Landroid/view/View;)V

    .line 117
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherBg:Landroid/view/View;

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitcherCityAdapterShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 95
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    invoke-virtual {p1}, Lcom/didi/frame/switcher/SwitcherAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 96
    new-instance v1, Lcom/didi/frame/switcher/SwitcherItem;

    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/didi/frame/switcher/SwitcherItem;-><init>(Landroid/content/Context;)V

    .line 98
    .local v1, item:Lcom/didi/frame/switcher/SwitcherItem;
    invoke-virtual {p1, v0}, Lcom/didi/frame/switcher/SwitcherAdapter;->getBusiness(I)Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/didi/frame/switcher/SwitcherAdapter;->getBusiness(I)Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_3

    .line 99
    :cond_1
    invoke-virtual {p1, v0}, Lcom/didi/frame/switcher/SwitcherAdapter;->getIconResUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/switcher/SwitcherItem;->setIcon(Ljava/lang/String;)V

    .line 108
    :goto_2
    invoke-virtual {p1, v0}, Lcom/didi/frame/switcher/SwitcherAdapter;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/switcher/SwitcherItem;->setText(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v0}, Lcom/didi/frame/switcher/SwitcherItem;->setIndex(I)V

    .line 110
    if-eqz p2, :cond_2

    .line 111
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->mLayoutSwitcherContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p1, v0}, Lcom/didi/frame/switcher/SwitcherAdapter;->getIconResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/switcher/SwitcherItem;->setIcon(I)V

    goto :goto_2

    .line 116
    .end local v1           #item:Lcom/didi/frame/switcher/SwitcherItem;
    :cond_4
    invoke-direct {p0}, Lcom/didi/frame/switcher/SwitcherPanel;->init()V

    goto :goto_0
.end method

.method public switchTo(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 251
    iget v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    if-eq v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switching:Z

    if-eqz v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iput-boolean v6, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switching:Z

    .line 254
    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherPanel;->getCurrentItem()Lcom/didi/frame/switcher/SwitcherItem;

    move-result-object v0

    .line 255
    .local v0, currentItem:Lcom/didi/frame/switcher/SwitcherItem;
    invoke-virtual {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->getItem(I)Lcom/didi/frame/switcher/SwitcherItem;

    move-result-object v1

    .line 256
    .local v1, targetItem:Lcom/didi/frame/switcher/SwitcherItem;
    if-eqz v1, :cond_0

    .line 259
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherItem;->deactivate()V

    .line 262
    :cond_2
    invoke-direct {p0, p1}, Lcom/didi/frame/switcher/SwitcherPanel;->move(I)I

    .line 263
    new-instance v2, Lcom/didi/frame/switcher/SwitcherPanel$3;

    invoke-direct {v2, p0}, Lcom/didi/frame/switcher/SwitcherPanel$3;-><init>(Lcom/didi/frame/switcher/SwitcherPanel;)V

    const-wide/16 v3, 0x28a

    invoke-static {v2, v3, v4}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    iput-boolean v5, p0, Lcom/didi/frame/switcher/SwitcherPanel;->switching:Z

    .line 271
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/frame/switcher/SwitcherItem;->activate(Ljava/lang/Runnable;)V

    .line 274
    if-nez p1, :cond_4

    .line 275
    const-string v2, "pxxg_ck"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    sget-object v3, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-virtual {v2, v3}, Lcom/didi/frame/switcher/SwitcherAdapter;->getIndexByBusinexx(Lcom/didi/frame/business/Business;)I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 281
    const-string v2, "tab_beatles_click"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_4
    if-ne p1, v6, :cond_3

    .line 277
    const-string v2, "pxxt_ck"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_5
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v2, v3}, Lcom/didi/frame/switcher/SwitcherAdapter;->getIndexByBusinexx(Lcom/didi/frame/business/Business;)I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 283
    const-string v2, "tab_flier_click"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_6
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v2, v3}, Lcom/didi/frame/switcher/SwitcherAdapter;->getIndexByBusinexx(Lcom/didi/frame/business/Business;)I

    move-result v2

    if-ne v2, p1, :cond_7

    .line 285
    const-string v2, "tab_taxi_click"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_7
    iget-object v2, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v2, v3}, Lcom/didi/frame/switcher/SwitcherAdapter;->getIndexByBusinexx(Lcom/didi/frame/business/Business;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 287
    const-string v2, "tab_car_click"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchToNext()V
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherPanel;->adapter:Lcom/didi/frame/switcher/SwitcherAdapter;

    invoke-virtual {v1}, Lcom/didi/frame/switcher/SwitcherAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->switchTo(I)V

    goto :goto_0
.end method

.method public switchToPrev()V
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    if-gtz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/didi/frame/switcher/SwitcherPanel;->switchTo(I)V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/switcher/SwitcherPanel;->locked:Z

    .line 479
    return-void
.end method

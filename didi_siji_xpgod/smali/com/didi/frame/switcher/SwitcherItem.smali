.class public Lcom/didi/frame/switcher/SwitcherItem;
.super Lcom/didi/common/base/BaseLayout;
.source "SwitcherItem.java"


# instance fields
.field private index:I

.field private mImageDot:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080564
    .end annotation
.end field

.field private mImageIcon:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080565
    .end annotation
.end field

.field private mImgTipDot:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080568
    .end annotation
.end field

.field private mTxtChannelName:Lx/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080566
    .end annotation
.end field

.field private mTxtChannelNameMedium:Lx/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080567
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/switcher/SwitcherItem;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImageIcon:Lx/ImageView;

    return-object v0
.end method


# virtual methods
.method public activate(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitcherItem-- activate--runnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImageIcon:Lx/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/common/util/AnimationUtil;->boom(Landroid/view/View;I)V

    .line 61
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImageDot:Lx/ImageView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->invisible(Landroid/view/View;)V

    .line 62
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImageIcon:Lx/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/util/AnimationUtil;->shrink(Landroid/view/View;I)V

    .line 69
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImageDot:Lx/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;I)V

    .line 70
    return-void
.end method

.method public getDeactivateTime()J
    .locals 2

    .prologue
    .line 128
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDotTop()F
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImageDot:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getTop()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->index:I

    return v0
.end method

.method public invisibleFirstDot()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImgTipDot:Lx/ImageView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->invisible(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 80
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f0300f8

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;->onMeasure(II)V

    .line 95
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "iconResId"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImageIcon:Lx/ImageView;

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageResource(I)V

    .line 99
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "iconResUrl"

    .prologue
    .line 104
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/didi/frame/switcher/SwitcherItem$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/switcher/SwitcherItem$1;-><init>(Lcom/didi/frame/switcher/SwitcherItem;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetchCallback(Ljava/lang/String;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 55
    iput p1, p0, Lcom/didi/frame/switcher/SwitcherItem;->index:I

    .line 56
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mTxtChannelName:Lx/TextView;

    invoke-virtual {v0, p1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mTxtChannelNameMedium:Lx/TextView;

    invoke-virtual {v0, p1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public showFirstDot()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem;->mImgTipDot:Lx/ImageView;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 137
    return-void
.end method

.class public Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;
.super Lcom/didi/common/base/BaseLayout;
.source "CarWaitForArrivalCancelTripView.java"


# instance fields
.field mImgIcon:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080262
    .end annotation
.end field

.field mLayoutDriver:Landroid/widget/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08026a
    .end annotation
.end field

.field mTxtFeedback:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08026c
    .end annotation
.end field

.field mTxtLabel:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080266
    .end annotation
.end field

.field mTxtTipPassenger:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080269
    .end annotation
.end field

.field mTxtTitle:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080263
    .end annotation
.end field

.field mViewLinePassenger:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080268
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private hideOtherView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 76
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mLayoutDriver:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mViewLinePassenger:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mTxtTipPassenger:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f03006b

    return v0
.end method

.method public setCancelTrip(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 3
    .parameter "cancelTrip"

    .prologue
    const/16 v2, 0x8

    .line 82
    if-eqz p1, :cond_2

    .line 83
    const/4 v0, 0x1

    iget v1, p1, Lcom/didi/car/model/CarCancelTrip;->isCancel:I

    if-ne v0, v1, :cond_4

    .line 84
    iget v0, p1, Lcom/didi/car/model/CarCancelTrip;->feedback:I

    if-nez v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mImgIcon:Lx/ImageView;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 92
    :goto_0
    iget-object v0, p1, Lcom/didi/car/model/CarCancelTrip;->feedbackTitle:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mTxtTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarCancelTrip;->feedbackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    iget-object v0, p1, Lcom/didi/car/model/CarCancelTrip;->canelLabel:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mTxtLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarCancelTrip;->canelLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarCancelTrip;->feedbackTips:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mTxtFeedback:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarCancelTrip;->feedbackTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    :goto_1
    return-void

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mImgIcon:Lx/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mTxtTipPassenger:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mViewLinePassenger:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mLayoutDriver:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCancelTripText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 69
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->hideOtherView()V

    .line 73
    return-void
.end method

.method public setCancelTripText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "feedback"

    .prologue
    .line 58
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-static {p2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->mTxtFeedback:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalCancelTripView;->hideOtherView()V

    goto :goto_0
.end method

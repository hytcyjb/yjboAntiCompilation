.class public Lcom/didi/ddrive/ui/component/DDriveCancelView;
.super Lcom/didi/common/base/BaseLayout;
.source "DDriveCancelView.java"


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
    .line 47
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method private hideOtherView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 69
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelView;->mLayoutDriver:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelView;->mViewLinePassenger:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method


# virtual methods
.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f030089

    return v0
.end method

.method public setCancelTripText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 62
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelView;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelView;->hideOtherView()V

    .line 66
    return-void
.end method

.method public setCancelTripText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "feedback"

    .prologue
    .line 51
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelView;->mTxtLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    invoke-static {p2}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelView;->mTxtFeedback:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelView;->hideOtherView()V

    goto :goto_0
.end method

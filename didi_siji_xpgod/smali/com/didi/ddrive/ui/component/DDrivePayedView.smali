.class public Lcom/didi/ddrive/ui/component/DDrivePayedView;
.super Lcom/didi/common/base/BaseLayout;
.source "DDrivePayedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;
    }
.end annotation


# instance fields
.field private mLayoutOp:Landroid/widget/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080356
    .end annotation
.end field

.field private mLayoutPaidTips:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080359
    .end annotation
.end field

.field private mListener:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;

.field private mPayType:Ljava/lang/String;

.field private mTxtCost:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080354
    .end annotation
.end field

.field private mTxtCostYuan:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080355
    .end annotation
.end field

.field private mTxtDetail:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCostDetailClicked"
        id = 0x7f080357
    .end annotation
.end field

.field private mTxtPayTipFirst:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802cf
    .end annotation
.end field

.field private mTxtPayTipSecond:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802d0
    .end annotation
.end field

.field private mTxtPayTypeTip:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080261
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->initView()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->initView()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->initView()V

    .line 56
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method private showPaidFailureView()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mLayoutPaidTips:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->show(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mLayoutOp:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->hide(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtCostYuan:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->hide(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->hide(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method private showPaidSuccessView()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mLayoutOp:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->show(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtCostYuan:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->show(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->show(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mLayoutPaidTips:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->hide(Landroid/view/View;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onApplyRefundClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mListener:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;

    .line 152
    .local v0, l:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;->onPaidApplyRefund()V

    .line 155
    :cond_0
    return-void
.end method

.method public onCostDetailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mListener:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;

    .line 138
    .local v0, l:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;->onPaidCostDetailClicked()V

    .line 141
    :cond_0
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f030097

    return v0
.end method

.method public onInvoiceClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mListener:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;

    .line 145
    .local v0, l:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;->onPaidInvoiceClicked()V

    .line 148
    :cond_0
    return-void
.end method

.method public onPayBtnClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mListener:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;

    .line 159
    .local v0, l:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;->onPaidPayClicked()V

    .line 162
    :cond_0
    return-void
.end method

.method public setListener(Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mListener:Lcom/didi/ddrive/ui/component/DDrivePayedView$PayedListener;

    .line 78
    return-void
.end method

.method public setOnPayClicked(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 82
    return-void
.end method

.method public showPaidFailureView(Ljava/lang/String;)V
    .locals 1
    .parameter "cost"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->showPaidFailureView()V

    .line 87
    return-void
.end method

.method public showPaidSuccessView(ILjava/lang/String;)V
    .locals 2
    .parameter "subTitle"
    .parameter "cost"

    .prologue
    .line 90
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtPayTypeTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->showPaidSuccessView()V

    .line 95
    return-void
.end method

.method public showPaidSuccessView(Ljava/lang/String;)V
    .locals 2
    .parameter "cost"

    .prologue
    .line 98
    const v0, 0x7f0b02e7

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtPayTypeTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->showPaidSuccessView()V

    .line 103
    return-void
.end method

.method public showPaidUpdateView(Lcom/didi/car/model/CarWxAgentPayStatus;)V
    .locals 2
    .parameter "payStatus"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const v0, 0x7f0b02e7

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    .line 109
    :cond_0
    if-eqz p1, :cond_2

    .line 110
    iget v0, p1, Lcom/didi/car/model/CarWxAgentPayStatus;->status:I

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtPayTipFirst:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtPayTipSecond:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtPayTypeTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->showPaidFailureView()V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mTxtPayTypeTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDrivePayedView;->mPayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDrivePayedView;->showPaidSuccessView()V

    goto :goto_0
.end method

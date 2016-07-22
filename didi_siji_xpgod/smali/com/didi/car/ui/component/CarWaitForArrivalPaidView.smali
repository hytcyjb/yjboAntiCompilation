.class public Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;
.super Lcom/didi/common/base/BaseLayout;
.source "CarWaitForArrivalPaidView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;
    }
.end annotation


# instance fields
.field private mImgRefund:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802cd
    .end annotation
.end field

.field private mLayoutOp:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802c6
    .end annotation
.end field

.field private mLayoutPaidTips:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802ce
    .end annotation
.end field

.field private mLayoutRefund:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onApplyRefundClicked"
        id = 0x7f0802cb
    .end annotation
.end field

.field private mListener:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;

.field private mPayType:Ljava/lang/String;

.field private mTxtCost:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802c4
    .end annotation
.end field

.field private mTxtCostYuan:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802c5
    .end annotation
.end field

.field private mTxtDetail:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCostDetailClicked"
        id = 0x7f0802c7
    .end annotation
.end field

.field private mTxtInvoice:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onInvoiceClicked"
        id = 0x7f0802c9
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
    .line 75
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->initView()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->initView()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->initView()V

    .line 67
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierInvoiceSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtInvoice:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtInvoice:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPaidFailureView()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mLayoutPaidTips:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->show(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mLayoutOp:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->hide(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtCostYuan:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->hide(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->hide(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method private showPaidSuccessView()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mLayoutOp:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->show(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtCostYuan:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->show(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->show(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mLayoutPaidTips:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->hide(Landroid/view/View;)V

    .line 159
    return-void
.end method


# virtual methods
.method public onApplyRefundClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;

    .line 186
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;
    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;->onPaidApplyRefund()V

    .line 189
    :cond_0
    return-void
.end method

.method public onCostDetailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;

    .line 163
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;->onPaidCostDetailClicked()V

    .line 166
    :cond_0
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f030071

    return v0
.end method

.method public onInvoiceClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;

    .line 179
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;->onPaidInvoiceClicked()V

    .line 182
    :cond_0
    return-void
.end method

.method public onPayBtnClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;

    .line 193
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;->onPaidPayClicked()V

    .line 196
    :cond_0
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;

    .line 94
    return-void
.end method

.method public setOnPayClicked(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 98
    return-void
.end method

.method public showPaidFailureView(Ljava/lang/String;)V
    .locals 1
    .parameter "cost"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidFailureView()V

    .line 103
    return-void
.end method

.method public showPaidSuccessView(Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/model/CarWxAgentPayStatus;)V
    .locals 2
    .parameter "cost"
    .parameter "payType"
    .parameter "payStatus"

    .prologue
    .line 107
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iput-object p2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtCost:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    if-eqz p3, :cond_3

    iget v0, p3, Lcom/didi/car/model/CarWxAgentPayStatus;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtPayTypeTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtPayTipFirst:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b05ac

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtPayTipSecond:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b05ad

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidFailureView()V

    .line 128
    :goto_3
    return-void

    .line 110
    :cond_0
    const v0, 0x7f0b02e7

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p3, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentSubject:Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p3, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentMsg:Ljava/lang/String;

    goto :goto_2

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtPayTypeTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidSuccessView()V

    goto :goto_3
.end method

.method public showPaidUpdateView(Lcom/didi/car/model/CarWxAgentPayStatus;)V
    .locals 2
    .parameter "payStatus"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const v0, 0x7f0b02e7

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    .line 134
    :cond_0
    if-eqz p1, :cond_2

    .line 135
    iget v0, p1, Lcom/didi/car/model/CarWxAgentPayStatus;->status:I

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtPayTipFirst:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtPayTipSecond:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtPayTypeTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidFailureView()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mTxtPayTypeTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mPayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->showPaidSuccessView()V

    goto :goto_0
.end method

.method public showRefundLayout(IZ)V
    .locals 1
    .parameter "visible"
    .parameter "enabled"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mLayoutRefund:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mLayoutRefund:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 175
    return-void
.end method

.method public updateRefundImg(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->mImgRefund:Lx/ImageView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalPaidView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    return-void
.end method

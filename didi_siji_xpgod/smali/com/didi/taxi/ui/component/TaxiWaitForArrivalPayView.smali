.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
.super Lx/RelativeLayout;
.source "TaxiWaitForArrivalPayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;
    }
.end annotation


# static fields
.field private static final PAY_TICKET_CHEAT:I = 0x1000

.field private static final PAY_TICKET_CLOSE:I = 0x1

.field private static final REFRESH_SALE_DELAY:J = 0x320L


# instance fields
.field private mActivityTxt:Landroid/widget/TextView;

.field private mCarPoolDetailLayout:Landroid/view/View;

.field private mConfirmBtn:Lx/Button;

.field private mConfirmBtnDisableDrawable:Landroid/graphics/drawable/Drawable;

.field private mConfirmBtnOrangeSelector:Landroid/graphics/drawable/Drawable;

.field private mInputLayout:Lx/RelativeLayout;

.field private mIntegralLayout:Landroid/view/View;

.field mIsFirstShown:Z

.field private mListPriceLayout:Lx/RelativeLayout;

.field private mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

.field private mModifyCount:I

.field private mNoticeView:Landroid/widget/TextView;

.field private mOrder:Lcom/didi/taxi/model/TaxiOrder;

.field private mPaidEnterpriseIcon:Landroid/widget/ImageView;

.field private mPaidEnterpriseLabelView:Landroid/widget/TextView;

.field private mPaidEnterpriseLayout:Landroid/view/ViewGroup;

.field private mPaidLayout:Lx/RelativeLayout;

.field private mPaidOPLayout:Landroid/view/View;

.field private mPaidSaleView:Landroid/widget/TextView;

.field private mPaidView:Landroid/widget/TextView;

.field private mPay:I

.field private mPayBalanceLayout:Landroid/view/ViewGroup;

.field private mPayBalanceTxt:Landroid/widget/TextView;

.field private mPayCloseLayout:Lx/RelativeLayout;

.field private mPayCloseTxt:Landroid/widget/TextView;

.field private mPayEnterpriseLabelView:Landroid/widget/TextView;

.field private mPayEnterpriseLayout:Landroid/view/ViewGroup;

.field private mPayEnterpriseStatusView:Landroid/widget/CheckBox;

.field private mPayIconBtn:Landroid/view/View;

.field private mPayOutTimeSuView:Landroid/widget/TextView;

.field private mPayOutTimeView:Landroid/widget/TextView;

.field private mPayTicketLayout:Landroid/view/ViewGroup;

.field private mPayTicketTxt:Landroid/widget/TextView;

.field private mPayTypeTipView:Landroid/widget/TextView;

.field private mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

.field private mPayWayLineLayout:Landroid/view/ViewGroup;

.field private mPriceEdit:Landroid/widget/EditText;

.field private mPriceFilter:Landroid/text/InputFilter;

.field private mSaleLayout:Landroid/view/ViewGroup;

.field private mSaleLayout2:Landroid/view/ViewGroup;

.field private mTicketStateFlag:I

.field private mYuan:Ljava/lang/String;

.field private priceWatcher:Landroid/text/TextWatcher;

.field private refreshRunnbale:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mIsFirstShown:Z

    .line 754
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceFilter:Landroid/text/InputFilter;

    .line 794
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->priceWatcher:Landroid/text/TextWatcher;

    .line 912
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshRunnbale:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;

    .line 143
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->init()V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mIsFirstShown:Z

    .line 754
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceFilter:Landroid/text/InputFilter;

    .line 794
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->priceWatcher:Landroid/text/TextWatcher;

    .line 912
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshRunnbale:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;

    .line 148
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->init()V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mIsFirstShown:Z

    .line 754
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceFilter:Landroid/text/InputFilter;

    .line 794
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->priceWatcher:Landroid/text/TextWatcher;

    .line 912
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$5;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshRunnbale:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;

    .line 153
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->init()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isLegal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showEditError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)Lx/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;ILcom/didi/taxi/model/TaxiLivePaySale;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->onSaleRefreshed(ILcom/didi/taxi/model/TaxiLivePaySale;)V

    return-void
.end method

.method private getAmountText(I)Ljava/lang/String;
    .locals 3
    .parameter "sale"

    .prologue
    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, price:Ljava/lang/String;
    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_0

    .line 1159
    div-int/lit8 v1, p1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mYuan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1161
    :cond_0
    int-to-float v1, p1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getConfirmAmountText(I)Ljava/lang/String;
    .locals 4
    .parameter "amount"

    .prologue
    .line 1110
    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_0

    .line 1111
    div-int/lit8 v0, p1, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1113
    :goto_0
    return-object v0

    :cond_0
    int-to-double v0, p1

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDeductionText(I)Ljava/lang/String;
    .locals 2
    .parameter "sale"

    .prologue
    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getAmountText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPayConfirmLabel()I
    .locals 2

    .prologue
    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, sid:I
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->getCurrentPayChannelId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1183
    :goto_0
    :pswitch_0
    return v0

    .line 1170
    :pswitch_1
    const v0, 0x7f0b0440

    .line 1171
    goto :goto_0

    .line 1173
    :pswitch_2
    const v0, 0x7f0b0443

    .line 1174
    goto :goto_0

    .line 1176
    :pswitch_3
    const v0, 0x7f0b0445

    .line 1177
    goto :goto_0

    .line 1179
    :pswitch_4
    const v0, 0x7f0b0441

    goto :goto_0

    .line 1168
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getTicketId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1047
    const/4 v0, 0x0

    .line 1048
    .local v0, ticketId:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v0, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    .line 1051
    :cond_0
    return-object v0
.end method

.method private getTicketSelectionLabel()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 1129
    const v1, 0x7f0b04e3

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, selection:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getTicketSelectionLabel(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1
.end method

.method private getTicketSelectionLabel(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .parameter "content"

    .prologue
    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1136
    .local v0, format:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string v1, " &gt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1
.end method

.method private hidePayIcon()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayIconBtn:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030107

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTypeTipView:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f0805c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mInputLayout:Lx/RelativeLayout;

    .line 161
    const v1, 0x7f0805cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mNoticeView:Landroid/widget/TextView;

    .line 163
    const v1, 0x7f0805cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListPriceLayout:Lx/RelativeLayout;

    .line 164
    const v1, 0x7f0805ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    .line 165
    const v1, 0x7f0805da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    .line 168
    const v1, 0x7f0805dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidLayout:Lx/RelativeLayout;

    .line 169
    const v1, 0x7f0805dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidView:Landroid/widget/TextView;

    .line 170
    const v1, 0x7f0805de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidSaleView:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f0805e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseLabelView:Landroid/widget/TextView;

    .line 172
    const v1, 0x7f0805e8

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseLayout:Landroid/view/ViewGroup;

    .line 173
    const v1, 0x7f0805ea

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseIcon:Landroid/widget/ImageView;

    .line 176
    const v1, 0x7f0805df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayOutTimeView:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f0805e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayOutTimeSuView:Landroid/widget/TextView;

    .line 180
    const v1, 0x7f0805e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayCloseLayout:Lx/RelativeLayout;

    .line 181
    const v1, 0x7f0805e3

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayCloseTxt:Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->priceWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceFilter:Landroid/text/InputFilter;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 188
    const v1, 0x7f0805c7

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayIconBtn:Landroid/view/View;

    .line 189
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayIconBtn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v1, 0x7f0805cf

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout:Landroid/view/ViewGroup;

    .line 192
    const v1, 0x7f0805d6

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout2:Landroid/view/ViewGroup;

    .line 193
    const v1, 0x7f0805d0

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceLayout:Landroid/view/ViewGroup;

    .line 194
    const v1, 0x7f0805d2

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceTxt:Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v1, 0x7f0805d5

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketTxt:Landroid/widget/TextView;

    .line 199
    const v1, 0x7f0805d3

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketLayout:Landroid/view/ViewGroup;

    .line 200
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v1, 0x7f080580

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLineLayout:Landroid/view/ViewGroup;

    .line 203
    const v1, 0x7f080584

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    .line 204
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;)V

    .line 206
    const v1, 0x7f0805db

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mActivityTxt:Landroid/widget/TextView;

    .line 208
    const v1, 0x7f0805e4

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidOPLayout:Landroid/view/View;

    .line 210
    const v1, 0x7f0805d7

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseLayout:Landroid/view/ViewGroup;

    .line 211
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v1, 0x7f0805d8

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    .line 213
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 214
    const v1, 0x7f0805d9

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseLabelView:Landroid/widget/TextView;

    .line 216
    const v1, 0x7f0805e5

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mCarPoolDetailLayout:Landroid/view/View;

    .line 217
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mCarPoolDetailLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v1, 0x7f0805eb

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mIntegralLayout:Landroid/view/View;

    .line 220
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mIntegralLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v1, 0x7f020107

    invoke-static {v1}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtnOrangeSelector:Landroid/graphics/drawable/Drawable;

    .line 223
    const v1, 0x7f0200f0

    invoke-static {v1}, Lcom/didi/common/helper/XmlAttibuteHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtnDisableDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    const v1, 0x7f0b0476

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mYuan:Ljava/lang/String;

    .line 226
    return-void
.end method

.method private isLegal(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1120
    const-string v2, "^[0-9|.{0,1}]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1121
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1122
    .local v0, isNuMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1123
    const/4 v2, 0x1

    .line 1125
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onPayEnterpriseStatusViewClicked()V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZ)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePreSaleText()V

    goto :goto_0
.end method

.method private onSaleRefreshed(ILcom/didi/taxi/model/TaxiLivePaySale;)V
    .locals 7
    .parameter "oprationCount"
    .parameter "sale"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1055
    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    if-eq p1, v1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiLivePaySale;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1059
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceTxt:Landroid/widget/TextView;

    const v2, 0x7f0b04b9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1063
    :cond_2
    invoke-virtual {p0, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updateSaleText(Lcom/didi/taxi/model/TaxiLivePaySale;)V

    .line 1065
    iget v1, p2, Lcom/didi/taxi/model/TaxiLivePaySale;->payAmount:I

    if-lez v1, :cond_4

    .line 1066
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayWayLayoutIfNeed()V

    .line 1068
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getPayConfirmLabel()I

    move-result v0

    .line 1069
    .local v0, sid:I
    if-nez v0, :cond_3

    const v0, 0x7f0b0444

    .line 1071
    :cond_3
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p2, Lcom/didi/taxi/model/TaxiLivePaySale;->payAmount:I

    invoke-direct {p0, v4}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getConfirmAmountText(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    .end local v0           #sid:I
    :goto_1
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->isLoadingDialogShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0

    .line 1074
    :cond_4
    iget v1, p2, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseFee:I

    if-lez v1, :cond_5

    .line 1075
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayWayLayoutIfNeed()V

    .line 1076
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0446

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p2, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseFee:I

    invoke-direct {p0, v5}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getConfirmAmountText(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1082
    :cond_5
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0442

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private refreshEditTextToPay(Ljava/lang/String;)V
    .locals 3
    .parameter "edit"

    .prologue
    .line 1028
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v0, editPrice:Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    iput v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPay:I

    .line 1034
    .end local v0           #editPrice:Ljava/math/BigDecimal;
    :goto_0
    return-void

    .line 1032
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPay:I

    goto :goto_0
.end method

.method private savePayInfoData(Lcom/didi/taxi/model/TaxiLivePaySale;)V
    .locals 2
    .parameter "paySale"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketFlag:I

    iput v1, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketFlag:I

    .line 509
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketId:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketPageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketPageUrl:Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketAmount:I

    iput v1, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketAmount:I

    goto :goto_0
.end method

.method private setViewByOrder(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 6
    .parameter "order"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 877
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 879
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v2

    iget v2, v2, Lcom/didi/taxi/model/TaxiCoupon;->totalFee:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPaidView()V

    .line 889
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getTipFee()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getTipFee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, notiText:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    .end local v0           #notiText:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showRePayView()V

    goto :goto_0
.end method

.method private showEditError(Ljava/lang/String;)V
    .locals 3
    .parameter "edit"

    .prologue
    .line 846
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, con:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtnDisableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lx/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 849
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    const v2, 0x7f070021

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lx/Button;->setTextColor(I)V

    .line 850
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    :goto_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 855
    return-void

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private showPaidView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 676
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mInputLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mActivityTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {v0, v1}, Lx/Button;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayCloseLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLineLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiPayInfo;->mSaleTxt:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidSaleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    :goto_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePaidOpView()V

    .line 694
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidSaleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidSaleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiPayInfo;->mSaleTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPayOutTimeView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "sum"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 734
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mInputLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListPriceLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {v0, v1}, Lx/Button;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mActivityTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayOutTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayOutTimeSuView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayOutTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayOutTimeSuView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    return-void
.end method

.method private showPayWayLayoutIfNeed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->payWays:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->payWays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1100
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setVisibility(I)V

    .line 1103
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLineLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLineLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPayingView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mNoticeView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListPriceLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {v0, v2}, Lx/Button;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mActivityTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayWayLayoutIfNeed()V

    .line 657
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEditView.requestFocus() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEditView.isFocusable() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEditView.isFocusableInTouchMode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocusableInTouchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 662
    iput v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    .line 663
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->hidePayIcon()V

    .line 665
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 672
    return-void
.end method

.method private showRePayView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 361
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mNoticeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mActivityTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListPriceLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {v0, v2}, Lx/Button;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLineLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayShown()V

    .line 370
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method

.method private updateConfirmBtnStyle()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtnDisableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 942
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    const v1, 0x7f070021

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/Button;->setTextColor(I)V

    .line 943
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    :goto_0
    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtnOrangeSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 946
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    const v1, 0x7f070047

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/Button;->setTextColor(I)V

    .line 947
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {v0, p0}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateEnterpriseLayout(IZLjava/lang/String;)Z
    .locals 4
    .parameter "enterpriseStatus"
    .parameter "isEnterpriseChecked"
    .parameter "enterpriseDesc"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 529
    if-eqz p1, :cond_2

    .line 530
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    if-ne p1, v0, :cond_0

    .line 533
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseLayout:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 534
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v2, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->enableEnterprisePayWay(Z)V

    .line 537
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 539
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->disableEnterprisePayWay()V

    .line 540
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->showAllValidPayWayViews()V

    .line 543
    :cond_1
    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 552
    :goto_0
    return v0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    move v0, v1

    .line 552
    goto :goto_0
.end method

.method private updatePayState()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    .line 730
    return-void
.end method

.method private updatePayTicketIfCheated()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 558
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mTicketStateFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketTxt:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketTxt:Landroid/widget/TextView;

    const v1, 0x7f0b0469

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 561
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketTxt:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getTicketSelectionLabel()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTicketLayout(ILjava/lang/String;I)V
    .locals 4
    .parameter "ticketFlag"
    .parameter "ticketId"
    .parameter "ticketAmount"

    .prologue
    const/4 v3, 0x0

    .line 568
    if-nez p1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 574
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 575
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketTxt:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getTicketSelectionLabel()Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 578
    :cond_2
    invoke-direct {p0, p3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getDeductionText(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, deduction:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketTxt:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getTicketSelectionLabel(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 584
    .end local v0           #deduction:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 587
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketTxt:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTicketTxt:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getDeductionText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public clearPrice()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method

.method public disableEnterprisePayIfNeed()V
    .locals 3

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v0, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    .line 1038
    .local v0, status:I
    if-nez v0, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1040
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1041
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->disableEnterprisePayWay()V

    .line 1042
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->showAllValidPayWayViews()V

    .line 1044
    :cond_0
    return-void
.end method

.method public getEnterpriseStatus()I
    .locals 2

    .prologue
    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, enterpriseStatus:I
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v0, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 976
    const/4 v0, 0x0

    .line 978
    :cond_1
    return v0
.end method

.method public getPaidText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPay()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPay:I

    return v0
.end method

.method public getPayChannelId()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->getCurrentPayChannelId()I

    move-result v0

    return v0
.end method

.method public getPayText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mYuan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideEditView()V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showRePayView()V

    .line 312
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayEditHidden()V

    .line 313
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->hideInputMethod()Z

    .line 314
    return-void
.end method

.method public hideInputMethod()Z
    .locals 3

    .prologue
    .line 865
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 866
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    return v1
.end method

.method public isEnterpriseChecked()Z
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isInputMethodActive()Z
    .locals 3

    .prologue
    .line 870
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 871
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method public isPaying()Z
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListPriceLayout:Lx/RelativeLayout;

    invoke-virtual {v0}, Lx/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 899
    const/4 v0, 0x1

    .line 901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 246
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 250
    :sswitch_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayInputClicked()V

    goto :goto_0

    .line 254
    :sswitch_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayClicked()V

    goto :goto_0

    .line 257
    :sswitch_2
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayInputClicked()V

    goto :goto_0

    .line 260
    :sswitch_3
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayTaxiTicketClicked()V

    goto :goto_0

    .line 263
    :sswitch_4
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZ)V

    goto :goto_0

    .line 266
    :sswitch_5
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 267
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->onPayEnterpriseStatusViewClicked()V

    goto :goto_0

    .line 270
    :sswitch_6
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onEnterpriseReimbursementClicked()V

    goto :goto_0

    .line 273
    :sswitch_7
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onCarPoolDetailClicked()V

    goto :goto_0

    .line 276
    :sswitch_8
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onIntegralClicked()V

    goto :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x7f0805c7 -> :sswitch_2
        0x7f0805cb -> :sswitch_0
        0x7f0805d0 -> :sswitch_4
        0x7f0805d3 -> :sswitch_3
        0x7f0805d7 -> :sswitch_5
        0x7f0805da -> :sswitch_1
        0x7f0805e5 -> :sswitch_7
        0x7f0805e8 -> :sswitch_6
        0x7f0805eb -> :sswitch_8
    .end sparse-switch
.end method

.method public onEnterPrisePayWayChanged(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->onPayEnterpriseStatusViewClicked()V

    .line 297
    return-void
.end method

.method public onTicketCheatingFound(Z)V
    .locals 3
    .parameter "closeTicket"

    .prologue
    .line 955
    if-eqz p1, :cond_0

    .line 956
    const/16 v0, 0x1001

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mTicketStateFlag:I

    .line 961
    :goto_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    .line 962
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZZ)V

    .line 963
    return-void

    .line 958
    :cond_0
    const/16 v0, 0x1000

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mTicketStateFlag:I

    goto :goto_0
.end method

.method public payToPaid(Ljava/lang/String;)V
    .locals 5
    .parameter "paid"

    .prologue
    const/4 v1, 0x4

    .line 318
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePayState()V

    .line 319
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->hideInputMethod()Z

    .line 320
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayFinishShown()V

    .line 321
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListPriceLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPay:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPaidView()V

    .line 325
    return-void
.end method

.method public refreshSale()V
    .locals 3

    .prologue
    .line 932
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZZ)V

    .line 933
    return-void
.end method

.method public refreshSale(IZ)V
    .locals 1
    .parameter "oprationCount"
    .parameter "forceRefresh"

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZZ)V

    .line 937
    return-void
.end method

.method public refreshSale(IZZ)V
    .locals 8
    .parameter "oprationCount"
    .parameter "forceRefresh"
    .parameter "showLoading"

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updateConfirmBtnStyle()V

    .line 990
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 991
    .local v7, edit:Ljava/lang/String;
    invoke-static {v7}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 994
    :cond_0
    if-eqz p3, :cond_2

    .line 995
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b044e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1003
    :goto_0
    invoke-direct {p0, v7}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshEditTextToPay(Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getTicketId()Ljava/lang/String;

    move-result-object v3

    .line 1005
    .local v3, ticketId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getEnterpriseStatus()I

    move-result v4

    .line 1007
    .local v4, enterpriseStatus:I
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPay:I

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v2

    iget v2, v2, Lcom/didi/taxi/model/TaxiCoupon;->couponId:I

    new-instance v5, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$6;

    invoke-direct {v5, p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$6;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;I)V

    invoke-static/range {v0 .. v5}, Lcom/didi/taxi/net/TaxiRequest;->getPaySaleInfo(Ljava/lang/String;IILjava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    .line 1019
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    const v1, 0x7f0b0442

    invoke-virtual {v0, v1}, Lx/Button;->setText(I)V

    .line 1025
    .end local v3           #ticketId:Ljava/lang/String;
    .end local v4           #enterpriseStatus:I
    :cond_1
    :goto_1
    return-void

    .line 1000
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceTxt:Landroid/widget/TextView;

    const v1, 0x7f0b044d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v6

    .line 1021
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1022
    invoke-direct {p0, v7}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showEditError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public refreshSaleDelayed(I)V
    .locals 3
    .parameter "modifyCount"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshRunnbale:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;->operate(I)V

    .line 927
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshRunnbale:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 928
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshRunnbale:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$RefreshRunnable;

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    return-void
.end method

.method public resetTicketState()V
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mTicketStateFlag:I

    .line 967
    return-void
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    .line 230
    return-void
.end method

.method public setOrder(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "order"

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->setViewByOrder(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 894
    return-void
.end method

.method public setPayClostText(Ljava/lang/String;)V
    .locals 1
    .parameter "closeText"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayCloseTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method public setPayTypeTip(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTypeTipView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayTypeTipView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public showEditView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mInputLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 304
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayingView()V

    .line 305
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayEditShown()V

    .line 306
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showInputMethod()V

    .line 307
    return-void
.end method

.method public showInputMethod()V
    .locals 3

    .prologue
    .line 859
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 860
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 861
    return-void
.end method

.method public showPayClose()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 603
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayCloseLayout:Lx/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayIconBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mInputLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;

    invoke-virtual {v0, v2}, Lx/Button;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mActivityTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLineLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 612
    return-void
.end method

.method public showPayIcon()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 594
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayIconBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mInputLayout:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mSaleLayout2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLineLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 600
    return-void
.end method

.method public showPayOrCloseIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 616
    const/4 v1, 0x0

    .line 617
    .local v1, prePayInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;
    const/4 v0, 0x0

    .line 619
    .local v0, coupon:Lcom/didi/taxi/model/TaxiCoupon;
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    .line 623
    :cond_0
    if-eqz v0, :cond_1

    .line 624
    iget-object v1, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getIsOrderFinished()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 629
    const v2, 0x7f0b0432

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->setPayTypeTip(I)V

    .line 630
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayCloseTxt:Landroid/widget/TextView;

    const v3, 0x7f0b0451

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 631
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayClose()V

    .line 632
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePaidOpView()V

    .line 640
    :goto_0
    return-void

    .line 634
    :cond_2
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->payOff:I

    if-ne v2, v3, :cond_3

    .line 635
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayClose()V

    goto :goto_0

    .line 638
    :cond_3
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayIcon()V

    goto :goto_0
.end method

.method public showTempClosedView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "sum"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/didi/taxi/model/TaxiCoupon;->tempclosed:I

    .line 750
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;->onPayFinishShown()V

    .line 751
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayOutTimeView(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public updatePaidEnterpriseView()V
    .locals 6

    .prologue
    const v5, 0x7f0b042a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 708
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getIsVip()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 709
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getVipPayStatus()I

    move-result v1

    if-nez v1, :cond_1

    .line 713
    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseLabelView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseIcon:Landroid/widget/ImageView;

    const v2, 0x7f02027d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 719
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getVipPayStatus()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 720
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseLabelView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 721
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidEnterpriseIcon:Landroid/widget/ImageView;

    const v2, 0x7f02016b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 725
    :cond_2
    return-void
.end method

.method public updatePaidOpView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 697
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPaidOPLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mIntegralLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mCarPoolDetailLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePaidEnterpriseView()V

    .line 705
    return-void
.end method

.method public updatePayWayView()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->payWays:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->initPayWayItems(Ljava/util/List;)V

    .line 381
    return-void
.end method

.method public updatePreSaleText()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 389
    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v6}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v6

    iget-object v0, v6, Lcom/didi/taxi/model/TaxiCoupon;->activityInfo:Ljava/lang/String;

    .line 390
    .local v0, activityInfo:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 391
    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mActivityTxt:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_0
    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v6}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v6

    iget-object v2, v6, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    .line 395
    .local v2, prePayInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;
    if-nez v2, :cond_1

    .line 447
    :goto_0
    return-void

    .line 400
    :cond_1
    iget v6, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->payOff:I

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v6}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v6

    iget v6, v6, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-eq v6, v7, :cond_2

    .line 401
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mActivityTxt:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->showPayClose()V

    goto :goto_0

    .line 413
    :cond_2
    iget-boolean v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mIsFirstShown:Z

    if-eqz v6, :cond_3

    iget v6, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    if-eqz v6, :cond_3

    .line 414
    iput-boolean v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mIsFirstShown:Z

    .line 415
    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    :cond_3
    const/4 v1, 0x1

    .line 419
    .local v1, balanceFlag:Z
    const/4 v4, 0x0

    .line 420
    .local v4, ticketClosed:Z
    iget v6, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    iget-object v7, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    iget-object v8, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseDesc:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updateEnterpriseLayout(IZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 424
    const/4 v1, 0x0

    .line 425
    iput v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mTicketStateFlag:I

    .line 426
    const/4 v4, 0x1

    .line 430
    :cond_4
    iget v6, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->balance:I

    if-lez v6, :cond_5

    if-eqz v1, :cond_5

    .line 431
    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 432
    const v6, 0x7f0b01e9

    invoke-static {v6}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, suffix:Ljava/lang/String;
    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceTxt:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->balance:I

    invoke-direct {p0, v8}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getAmountText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    .end local v3           #suffix:Ljava/lang/String;
    :goto_1
    iget v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mTicketStateFlag:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_6

    .line 440
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePayTicketIfCheated()V

    goto :goto_0

    .line 435
    :cond_5
    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceLayout:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 444
    :cond_6
    if-eqz v4, :cond_7

    :goto_2
    iget-object v6, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    iget v7, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketAmount:I

    invoke-direct {p0, v5, v6, v7}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updateTicketLayout(ILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget v5, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketFlag:I

    goto :goto_2
.end method

.method public updateSaleText(Lcom/didi/taxi/model/TaxiLivePaySale;)V
    .locals 8
    .parameter "paySale"

    .prologue
    const/4 v4, 0x0

    .line 450
    if-nez p1, :cond_0

    .line 501
    :goto_0
    return-void

    .line 454
    :cond_0
    const/4 v1, 0x1

    .line 455
    .local v1, balanceFlag:Z
    const/4 v3, 0x0

    .line 457
    .local v3, ticketCloseFlag:Z
    iget v5, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseStatus:I

    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayEnterpriseStatusView:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    iget-object v7, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseDesc:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updateEnterpriseLayout(IZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 461
    const/4 v1, 0x0

    .line 462
    iput v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mTicketStateFlag:I

    .line 463
    const/4 v3, 0x1

    .line 467
    :cond_1
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v5}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-nez v5, :cond_2

    .line 468
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v5}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v5

    new-instance v6, Lcom/didi/taxi/model/TaxiPrePayInfo;

    invoke-direct {v6}, Lcom/didi/taxi/model/TaxiPrePayInfo;-><init>()V

    iput-object v6, v5, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    .line 471
    :cond_2
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->savePayInfoData(Lcom/didi/taxi/model/TaxiLivePaySale;)V

    .line 475
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v5}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v0, v5, Lcom/didi/taxi/model/TaxiPrePayInfo;->balance:I

    .line 478
    .local v0, balance:I
    if-gtz v0, :cond_3

    iget v5, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->balanceAmount:I

    if-lez v5, :cond_5

    :cond_3
    if-eqz v1, :cond_5

    .line 481
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 482
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 483
    const v5, 0x7f0b01e9

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, suffix:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceTxt:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getAmountText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    .end local v2           #suffix:Ljava/lang/String;
    :goto_1
    iget v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mTicketStateFlag:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_6

    .line 494
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updatePayTicketIfCheated()V

    goto :goto_0

    .line 486
    :cond_4
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceTxt:Landroid/widget/TextView;

    iget v6, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->balanceAmount:I

    invoke-direct {p0, v6}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->getDeductionText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 489
    :cond_5
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPayBalanceLayout:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 498
    :cond_6
    if-eqz v3, :cond_7

    :goto_2
    iget-object v5, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketId:Ljava/lang/String;

    iget v6, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketAmount:I

    invoke-direct {p0, v4, v5, v6}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->updateTicketLayout(ILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget v4, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketFlag:I

    goto :goto_2
.end method

.method public updateState(Lcom/didi/common/model/PayParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiCoupon;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    .line 354
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v1, p1, Lcom/didi/common/model/PayParams;->share:Lcom/didi/taxi/model/TaxiPayShare;

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    .line 356
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSaleDelayed(I)V

    .line 357
    return-void
.end method

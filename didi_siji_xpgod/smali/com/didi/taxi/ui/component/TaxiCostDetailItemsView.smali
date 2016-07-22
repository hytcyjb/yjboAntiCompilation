.class public Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;
.super Landroid/widget/RelativeLayout;
.source "TaxiCostDetailItemsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;,
        Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;,
        Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;
    }
.end annotation


# static fields
.field private static final PAY_TICKET_CHEAT:I = 0x1000

.field private static final PAY_TICKET_CLOSE:I = 0x1


# instance fields
.field private btPayConfirm:Lx/Button;

.field private cbCompanyAccout:Landroid/widget/CheckBox;

.field private enterpriseStatus:I

.field private firstRequstPayInfo:Z

.field private imgTicketArrow:Landroid/view/View;

.field private line:Lx/ImageView;

.field private mListener:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;

.field private mTicketStateFlag:I

.field private payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

.field private payWayLineLayout:Landroid/view/ViewGroup;

.field private rlTaxiDeduction:Lx/RelativeLayout;

.field private rlTaxiTicket:Lx/RelativeLayout;

.field private taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

.field private taxiFeeDetailListView:Landroid/widget/ListView;

.field private taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

.field private ticketId:Ljava/lang/String;

.field private tvCompanyPayInfo:Landroid/widget/TextView;

.field private tvTaxiDeduction:Landroid/widget/TextView;

.field private tvTaxiTicket:Landroid/widget/TextView;

.field private tvTaxiTotalFee:Landroid/widget/TextView;

.field private tvTaxiTotalFeeName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->ticketId:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->firstRequstPayInfo:Z

    .line 69
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->ticketId:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->firstRequstPayInfo:Z

    .line 74
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->ticketId:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->firstRequstPayInfo:Z

    .line 79
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->init()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->mListener:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;Lcom/didi/taxi/model/TaxiLivePaySale;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->updateCompanyInfo(Lcom/didi/taxi/model/TaxiLivePaySale;)V

    return-void
.end method

.method private getPayConfirmLabel()I
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, sid:I
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->getCurrentPayChannelId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 357
    :goto_0
    :pswitch_0
    return v0

    .line 344
    :pswitch_1
    const v0, 0x7f0b0440

    .line 345
    goto :goto_0

    .line 347
    :pswitch_2
    const v0, 0x7f0b0443

    .line 348
    goto :goto_0

    .line 350
    :pswitch_3
    const v0, 0x7f0b0445

    .line 351
    goto :goto_0

    .line 353
    :pswitch_4
    const v0, 0x7f0b0441

    goto :goto_0

    .line 342
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

.method private init()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->initViews()V

    .line 84
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->setListeners()V

    .line 85
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300fc

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080571

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetailListView:Landroid/widget/ListView;

    .line 136
    const v1, 0x7f080573

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTotalFeeName:Landroid/widget/TextView;

    .line 137
    const v1, 0x7f080574

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTotalFee:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f08057b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiTicket:Lx/RelativeLayout;

    .line 139
    const v1, 0x7f08057e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->imgTicketArrow:Landroid/view/View;

    .line 140
    const v1, 0x7f08057d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTicket:Landroid/widget/TextView;

    .line 141
    const v1, 0x7f080570

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    .line 142
    const v1, 0x7f080586

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    .line 143
    const v1, 0x7f080585

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->btPayConfirm:Lx/Button;

    .line 144
    const v1, 0x7f080577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiDeduction:Lx/RelativeLayout;

    .line 145
    const v1, 0x7f080579

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiDeduction:Landroid/widget/TextView;

    .line 146
    const v1, 0x7f080576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->line:Lx/ImageView;

    .line 148
    const v1, 0x7f080580

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLineLayout:Landroid/view/ViewGroup;

    .line 149
    const v1, 0x7f080584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    .line 150
    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method private isEnterpriseAvaible(Lcom/didi/taxi/model/TaxiLivePaySale;)Z
    .locals 2
    .parameter "t"

    .prologue
    const/4 v0, 0x1

    .line 361
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private peformPaySaleInfo(Lcom/didi/taxi/model/TaxiFeeDetail;)V
    .locals 7
    .parameter "taxiFeeDetail"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 158
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 159
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->ticketId:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    .line 164
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->payWays:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->initPayWayItems(Ljava/util/List;)V

    .line 166
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->payWays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLineLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    :cond_0
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    if-ne v0, v2, :cond_1

    .line 172
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    new-instance v1, Lcom/didi/taxi/model/TaxiCoupon;

    invoke-direct {v1}, Lcom/didi/taxi/model/TaxiCoupon;-><init>()V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setCoupon(Lcom/didi/taxi/model/TaxiCoupon;)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_4

    .line 181
    const/4 v6, 0x0

    .line 182
    .local v6, status:I
    iget-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->firstRequstPayInfo:Z

    if-eqz v0, :cond_5

    .line 183
    iget v6, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    .line 184
    if-eqz v6, :cond_3

    .line 185
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v2

    iget v2, v2, Lcom/didi/taxi/model/TaxiCoupon;->couponId:I

    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->ticketId:Ljava/lang/String;

    iget v4, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    new-instance v5, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$6;

    invoke-direct {v5, p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$6;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V

    invoke-static/range {v0 .. v5}, Lcom/didi/taxi/net/TaxiRequest;->getPaySaleInfo(Ljava/lang/String;IILjava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    .line 200
    .end local v6           #status:I
    :cond_4
    return-void

    .line 188
    .restart local v6       #status:I
    :cond_5
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getEnterpriseStatus()I

    move-result v6

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->btPayConfirm:Lx/Button;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$1;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$1;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiTicket:Lx/RelativeLayout;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$2;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$3;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$3;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$4;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$4;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$5;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$5;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;)V

    .line 130
    return-void
.end method

.method private updateCompanyInfo(Lcom/didi/taxi/model/TaxiLivePaySale;)V
    .locals 11
    .parameter "t"

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 243
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    new-instance v2, Lcom/didi/taxi/model/TaxiPrePayInfo;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiPrePayInfo;-><init>()V

    iput-object v2, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->isEnterpriseAvaible(Lcom/didi/taxi/model/TaxiLivePaySale;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketId:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v2, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketFlag:I

    iput v2, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketFlag:I

    .line 250
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketPageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketPageUrl:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v2, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketAmount:I

    iput v2, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketAmount:I

    .line 252
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->ticketId:Ljava/lang/String;

    .line 255
    :cond_1
    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->mTicketStateFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    .line 256
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiTicket:Lx/RelativeLayout;

    invoke-virtual {v1, v6}, Lx/RelativeLayout;->setVisibility(I)V

    .line 258
    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->mTicketStateFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 259
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTicket:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTicket:Landroid/widget/TextView;

    const v2, 0x7f0b0469

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiTicket:Lx/RelativeLayout;

    invoke-virtual {v1, v6}, Lx/RelativeLayout;->setClickable(Z)V

    .line 262
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->imgTicketArrow:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :goto_0
    iget-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->firstRequstPayInfo:Z

    if-eqz v1, :cond_2

    .line 284
    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseStatus:I

    if-nez v1, :cond_c

    .line 285
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_1
    iput-boolean v6, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->firstRequstPayInfo:Z

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :cond_3
    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->payAmount:I

    if-lez v1, :cond_d

    .line 301
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getPayConfirmLabel()I

    move-result v0

    .line 302
    .local v0, sid:I
    if-nez v0, :cond_4

    const v0, 0x7f0b0444

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->btPayConfirm:Lx/Button;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->payAmount:I

    invoke-static {v4}, Lcom/didi/common/util/NumberUtil;->changeF2Y(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .end local v0           #sid:I
    :goto_2
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->isEnterpriseAvaible(Lcom/didi/taxi/model/TaxiLivePaySale;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 312
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiDeduction:Lx/RelativeLayout;

    invoke-virtual {v1, v9}, Lx/RelativeLayout;->setVisibility(I)V

    .line 326
    :goto_3
    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    if-ne v1, v8, :cond_11

    .line 327
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->enableEnterprisePayWay(Z)V

    .line 338
    :cond_5
    :goto_4
    return-void

    .line 264
    :cond_6
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTicket:Landroid/widget/TextView;

    const v2, 0x7f0b04e3

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :cond_7
    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketFlag:I

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->isEnterpriseAvaible(Lcom/didi/taxi/model/TaxiLivePaySale;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 267
    :cond_8
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiTicket:Lx/RelativeLayout;

    invoke-virtual {v1, v9}, Lx/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 269
    :cond_9
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiTicket:Lx/RelativeLayout;

    invoke-virtual {v1, v6}, Lx/RelativeLayout;->setVisibility(I)V

    .line 270
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 271
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTicket:Landroid/widget/TextView;

    const v2, 0x7f0b04e3

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 273
    :cond_a
    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketFlag:I

    if-ne v1, v10, :cond_b

    .line 274
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTicket:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiTicket:Lx/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->imgTicketArrow:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_b
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTicket:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->ticketAmount:I

    invoke-static {v3}, Lcom/didi/common/util/NumberUtil;->changeF2Y(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b01d2

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 288
    :cond_c
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 305
    :cond_d
    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseFee:I

    if-lez v1, :cond_e

    .line 306
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->btPayConfirm:Lx/Button;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0446

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->enterpriseFee:I

    invoke-static {v5}, Lcom/didi/common/util/NumberUtil;->changeF2Y(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 308
    :cond_e
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->btPayConfirm:Lx/Button;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0442

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 314
    :cond_f
    iget v1, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->balanceAmount:I

    if-lez v1, :cond_10

    .line 315
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->line:Lx/ImageView;

    invoke-virtual {v1, v6}, Lx/ImageView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiDeduction:Lx/RelativeLayout;

    invoke-virtual {v1, v6}, Lx/RelativeLayout;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiDeduction:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/didi/taxi/model/TaxiLivePaySale;->balanceAmount:I

    invoke-static {v3}, Lcom/didi/common/util/NumberUtil;->changeF2Y(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b01d2

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 319
    :cond_10
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->line:Lx/ImageView;

    invoke-virtual {v1, v9}, Lx/ImageView;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->rlTaxiDeduction:Lx/RelativeLayout;

    invoke-virtual {v1, v9}, Lx/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 331
    :cond_11
    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    if-ne v1, v10, :cond_5

    .line 332
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->disableEnterprisePayWay()V

    .line 335
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->showAllValidPayWayViews()V

    goto/16 :goto_4
.end method


# virtual methods
.method public getEnterpriseStatus()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFinalPayTotal()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    iget v0, v0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    goto :goto_0
.end method

.method public getPayChannelId()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->getCurrentPayChannelId()I

    move-result v0

    return v0
.end method

.method public isEnterpriseChecked()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onTicketCheatingFound(Z)V
    .locals 2
    .parameter "closeTicket"

    .prologue
    .line 440
    if-eqz p1, :cond_0

    .line 441
    const/16 v0, 0x1001

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->mTicketStateFlag:I

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    .line 447
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->updateConfirmButton()V

    .line 448
    return-void

    .line 443
    :cond_0
    const/16 v0, 0x1000

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->mTicketStateFlag:I

    goto :goto_0
.end method

.method public peformPaySaleInfo()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->peformPaySaleInfo(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 206
    :cond_0
    return-void
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->mListener:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;

    .line 367
    return-void
.end method

.method public setTaxiFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;)V
    .locals 1
    .parameter "taxiFeeDetail"

    .prologue
    .line 390
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->setTaxiFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    .line 391
    return-void
.end method

.method public setTaxiFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V
    .locals 4
    .parameter "taxiFeeDetail"
    .parameter "requestPayInfo"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    .line 372
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 373
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetailListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 374
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;Landroid/content/Context;Ljava/util/ArrayList;Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$1;)V

    .line 375
    .local v0, taxiAdatpter:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetailListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 376
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTotalFeeName:Landroid/widget/TextView;

    const v2, 0x7f0b02e8

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .end local v0           #taxiAdatpter:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;
    :goto_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetailListView:Landroid/widget/ListView;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 383
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTotalFee:Landroid/widget/TextView;

    iget v2, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    invoke-static {v2}, Lcom/didi/common/util/NumberUtil;->changeF2Y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    if-eqz p2, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->peformPaySaleInfo(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 387
    :cond_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetailListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvTaxiTotalFeeName:Landroid/widget/TextView;

    const v2, 0x7f0b02e9

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateConfirmButton()V
    .locals 6

    .prologue
    .line 212
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 213
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->ticketId:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->enterpriseStatus:I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    iget v1, v1, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v2

    iget v2, v2, Lcom/didi/taxi/model/TaxiCoupon;->couponId:I

    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->ticketId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->getEnterpriseStatus()I

    move-result v4

    new-instance v5, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$7;

    invoke-direct {v5, p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$7;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V

    invoke-static/range {v0 .. v5}, Lcom/didi/taxi/net/TaxiRequest;->getPaySaleInfo(Ljava/lang/String;IILjava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    .line 227
    :cond_1
    return-void
.end method

.method public updateConfirmButtonErrorHandle()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 233
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->tvCompanyPayInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->payWayLayout:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView;->disableEnterprisePayWay()V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->updateConfirmButton()V

    .line 239
    return-void
.end method

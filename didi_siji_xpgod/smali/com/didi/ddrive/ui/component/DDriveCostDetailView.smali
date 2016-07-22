.class public Lcom/didi/ddrive/ui/component/DDriveCostDetailView;
.super Lcom/didi/common/base/BaseLayout;
.source "DDriveCostDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;
    }
.end annotation


# instance fields
.field private mBtnPay:Lx/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onPayClicked"
        id = 0x7f08032c
    .end annotation
.end field

.field private mDetailTypeTip:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801dd
    .end annotation
.end field

.field private mFeeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;

.field private mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;

.field private mPayMethodView:Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080332
    .end annotation
.end field

.field private mTotalTip:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080328
    .end annotation
.end field

.field private mTxtCost:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080327
    .end annotation
.end field

.field private mViewDetailItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08032f
    .end annotation
.end field

.field private mViewOrderPay:Lcom/didi/ddrive/ui/component/DDriveOrderPayView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080331
    .end annotation
.end field

.field private voucherLine:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080330
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->init()V

    .line 69
    return-void
.end method

.method private getChannelChoosed(Lcom/didi/ddrive/net/http/response/OrderBill;)Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    .locals 3
    .parameter "bill"

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, item:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    iget-boolean v1, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->isNew:Z

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 120
    iget-object v1, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 124
    :cond_0
    return-object v0
.end method

.method private getItemClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "url"

    .prologue
    .line 261
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$2;

    invoke-direct {v0, p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailView;Ljava/lang/String;)V

    return-object v0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resid"
    .parameter "formatArgs"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTicketClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "url"

    .prologue
    .line 245
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailView;Ljava/lang/String;)V

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method private isValid(D)Z
    .locals 2
    .parameter "fee"

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    return-void
.end method

.method private updateFeeItem([Lcom/didi/ddrive/net/http/response/FeeItem;)V
    .locals 10
    .parameter "originItems"

    .prologue
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, fees:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;>;"
    const v8, 0x7f0b0476

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v8, v9}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, yuan:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 195
    move-object v0, p1

    .local v0, arr$:[Lcom/didi/ddrive/net/http/response/FeeItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 196
    .local v4, originItem:Lcom/didi/ddrive/net/http/response/FeeItem;
    iget-wide v8, v4, Lcom/didi/ddrive/net/http/response/FeeItem;->money:D

    invoke-direct {p0, v8, v9}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->isValid(D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 197
    iget-wide v8, v4, Lcom/didi/ddrive/net/http/response/FeeItem;->money:D

    double-to-float v8, v8

    invoke-static {v8}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, value:Ljava/lang/String;
    new-instance v6, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/didi/ddrive/net/http/response/FeeItem;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/didi/ddrive/net/http/response/FeeItem;->detail:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v6, viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    .end local v0           #arr$:[Lcom/didi/ddrive/net/http/response/FeeItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #originItem:Lcom/didi/ddrive/net/http/response/FeeItem;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 205
    iget-object v8, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mViewDetailItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-virtual {v8, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setItems(Ljava/util/List;)V

    .line 207
    :cond_2
    return-void
.end method

.method private updatePayMethodView([Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V
    .locals 7
    .parameter "channelItems"
    .parameter "select"

    .prologue
    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 131
    .local v2, item:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    iget v5, v2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 132
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v2           #item:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    :cond_1
    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mPayMethodView:Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;

    invoke-virtual {v5, v4}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->setData(Ljava/util/List;)V

    .line 137
    iget-object v5, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mPayMethodView:Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;

    invoke-virtual {v5, p2}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->setSelection(Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V

    .line 138
    return-void
.end method

.method private updateVoucherView(Lcom/didi/ddrive/model/OrderState;JD)V
    .locals 8
    .parameter "currentState"
    .parameter "vid"
    .parameter "voucherAmount"

    .prologue
    const-wide/16 v6, 0x0

    const v5, 0x7f0b0154

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 141
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mViewOrderPay:Lcom/didi/ddrive/ui/component/DDriveOrderPayView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->removeAllViews()V

    .line 142
    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    if-ne p1, v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->voucherLine:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->hide(Landroid/view/View;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->voucherLine:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->hide(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->voucherLine:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->show(Landroid/view/View;)V

    .line 151
    cmp-long v1, p2, v6

    if-nez v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mViewOrderPay:Lcom/didi/ddrive/ui/component/DDriveOrderPayView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v5, v2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getTicketClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->addPayItemView(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 154
    :cond_3
    cmp-long v1, p2, v6

    if-lez v1, :cond_0

    .line 155
    invoke-static {p4, p5}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(D)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, cuponValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mViewOrderPay:Lcom/didi/ddrive/ui/component/DDriveOrderPayView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v5, v2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getTicketClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/didi/ddrive/ui/component/DDriveOrderPayView;->addPayItemView(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f03008f

    return v0
.end method

.method public onInstructionClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;

    .line 222
    .local v0, l:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;->onCostDetailInstructionClicked()V

    .line 225
    :cond_0
    return-void
.end method

.method public onPayClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;

    .line 215
    .local v0, l:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;->onCostDetailPayClicked()V

    .line 218
    :cond_0
    return-void
.end method

.method public onPayCouponsViewClicked(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "url"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;

    .line 255
    .local v0, l:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0, p2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;->onCostDetailCouponsClicked(Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onPayItemViewClicked(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "url"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;

    .line 271
    .local v0, l:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;->onItemTypeChecked(Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onPayTypeChecked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;

    .line 278
    .local v0, l:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;
    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;->onCostDetailPayTypeChecked()V

    .line 281
    :cond_0
    return-void
.end method

.method public setListener(Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;

    .line 91
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mPayMethodView:Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;

    check-cast p1, Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->setOnSelectionListener(Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;)V

    .line 92
    return-void
.end method

.method public setOrderDetailTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mDetailTypeTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public setOrderTotalCount(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/model/OrderState;)V
    .locals 7
    .parameter "bill"
    .parameter "currentState"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mTxtCost:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->totalMoney:D

    double-to-float v1, v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    if-eq p2, v0, :cond_0

    .line 98
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->feeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mFeeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;

    .line 99
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mFeeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->updateFeeItem([Lcom/didi/ddrive/net/http/response/FeeItem;)V

    .line 100
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mTotalTip:Landroid/widget/TextView;

    const v1, 0x7f0b013f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->voucherId:J

    iget-wide v4, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->voucherAmount:D

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->updateVoucherView(Lcom/didi/ddrive/model/OrderState;JD)V

    .line 106
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getChannelChoosed(Lcom/didi/ddrive/net/http/response/OrderBill;)Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    move-result-object v6

    .line 108
    .local v6, item:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/didi/ddrive/payment/PaymentManager;->setPayChannel(Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V

    .line 110
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    invoke-direct {p0, v0, v6}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->updatePayMethodView([Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V

    .line 112
    invoke-virtual {p0, p1, v6}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->updatePayBtnInformation(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V

    .line 113
    return-void

    .line 102
    .end local v6           #item:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mTotalTip:Landroid/widget/TextView;

    const v1, 0x7f0b01be

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updatePayBtnInformation(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V
    .locals 7
    .parameter "bill"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, shouldPay:Ljava/lang/String;
    iget-wide v1, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->shouldPayFee:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 178
    const-string v0, "0"

    .line 182
    :goto_0
    if-nez p2, :cond_2

    .line 183
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mBtnPay:Lx/Button;

    const v2, 0x7f0b014e

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-direct {p0, v2, v3}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_1
    return-void

    .line 180
    :cond_1
    iget-wide v1, p1, Lcom/didi/ddrive/net/http/response/OrderBill;->shouldPayFee:D

    double-to-float v1, v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_2
    iget v1, p2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    if-ne v1, v5, :cond_3

    .line 185
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mBtnPay:Lx/Button;

    const v2, 0x7f0b0137

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-direct {p0, v2, v3}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_3
    iget v1, p2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->mBtnPay:Lx/Button;

    const v2, 0x7f0b0157

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-direct {p0, v2, v3}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

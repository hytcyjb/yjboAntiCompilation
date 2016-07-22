.class public Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;
.super Lcom/didi/common/base/BaseLayout;
.source "DDriveCostDetailControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$3;,
        Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;,
        Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;
    }
.end annotation


# instance fields
.field private mDissent:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;

.field private mLayoutInstruction:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801e2
    .end annotation
.end field

.field private mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801da
    .end annotation
.end field

.field private mTotalCost:Landroid/view/ViewGroup;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080325
    .end annotation
.end field

.field private mTotalCostFee:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080327
    .end annotation
.end field

.field private mTxtPaidCost:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801de
    .end annotation
.end field

.field private mTxtTips:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801e0
    .end annotation
.end field

.field private mTypeTip:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801dd
    .end annotation
.end field

.field private mViewCouponItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801e1
    .end annotation
.end field

.field private mViewItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801df
    .end annotation
.end field

.field private mYuan:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080324
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 133
    sget-object v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mDissent:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;

    .line 147
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->init()V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    sget-object v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mDissent:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;

    .line 142
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->init()V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    sget-object v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mDissent:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;

    .line 137
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->init()V

    .line 138
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resid"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 152
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f0b0429

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 153
    new-instance v1, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$1;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 160
    sget-object v1, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;->NO_DISSENT:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$Dissent;->getTextId()I

    move-result v1

    new-instance v2, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$2;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 168
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mLayoutInstruction:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 270
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method public hideRuleEntrance()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mLayoutInstruction:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public hideTitle()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setVisibility(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mLayoutInstruction:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;->onCostDetailInstructionClicked(Landroid/view/View;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 173
    const v0, 0x7f03008d

    return v0
.end method

.method protected onTitleLeftClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;->onTitleLeftClicked(Landroid/view/View;)V

    .line 281
    return-void
.end method

.method protected onTitleRightClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;->onTitleRightClicked(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method public setListener(Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mListener:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$CostDetailControllerListener;

    .line 178
    return-void
.end method

.method public setTipText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTypeTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public setup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V
    .locals 17
    .parameter "predict"

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTypeTip:Landroid/widget/TextView;

    const v14, 0x7f0b0142

    invoke-static {v14}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->totalMoney:D

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v9, v13

    .line 233
    .local v9, total:I
    const v13, 0x7f0b0476

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 235
    .local v12, yuan:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v3, fees:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->feeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;

    .line 238
    .local v2, feeItems:[Lcom/didi/ddrive/net/http/response/FeeItem;
    if-eqz v2, :cond_1

    .line 239
    move-object v1, v2

    .local v1, arr$:[Lcom/didi/ddrive/net/http/response/FeeItem;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v5, v1, v4

    .line 240
    .local v5, item:Lcom/didi/ddrive/net/http/response/FeeItem;
    iget-wide v13, v5, Lcom/didi/ddrive/net/http/response/FeeItem;->money:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_0

    .line 241
    iget-wide v13, v5, Lcom/didi/ddrive/net/http/response/FeeItem;->money:D

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v8, v13

    .line 242
    .local v8, money:I
    new-instance v10, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    iget-object v13, v5, Lcom/didi/ddrive/net/http/response/FeeItem;->label:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v10, viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v8           #money:I
    .end local v10           #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    .end local v1           #arr$:[Lcom/didi/ddrive/net/http/response/FeeItem;
    .end local v4           #i$:I
    .end local v5           #item:Lcom/didi/ddrive/net/http/response/FeeItem;
    .end local v7           #len$:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mViewItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-virtual {v13, v3}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setItems(Ljava/util/List;)V

    .line 250
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v6, items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;>;"
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->voucherLimit:D

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_2

    .line 253
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->voucherLimit:D

    invoke-static {v13, v14}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(D)Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, voucher:Ljava/lang/String;
    new-instance v10, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    const v13, 0x7f0b0154

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .restart local v10       #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    const v13, 0x7f07002f

    iput v13, v10, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->color:I

    .line 256
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v10           #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    .end local v11           #voucher:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mViewCouponItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-virtual {v13, v6}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setItems(Ljava/util/List;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mViewCouponItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setVisibility(I)V

    .line 265
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTotalCostFee:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTotalCost:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 267
    return-void

    .line 262
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mViewCouponItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setup([Lcom/didi/ddrive/net/http/response/FeeItem;DDDD)V
    .locals 16
    .parameter "feeItems"
    .parameter "total"
    .parameter "voucherAmount"
    .parameter "payedChannel"
    .parameter "payed"

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTxtPaidCost:Landroid/widget/TextView;

    move-wide/from16 v0, p2

    double-to-float v13, v0

    invoke-static {v13}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 182
    const v12, 0x7f0b0476

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, yuan:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v4, fees:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;>;"
    if-eqz p1, :cond_1

    .line 187
    move-object/from16 v2, p1

    .local v2, arr$:[Lcom/didi/ddrive/net/http/response/FeeItem;
    array-length v8, v2

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v6, v2, v5

    .line 188
    .local v6, item:Lcom/didi/ddrive/net/http/response/FeeItem;
    iget-wide v12, v6, Lcom/didi/ddrive/net/http/response/FeeItem;->money:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_0

    .line 189
    iget-wide v12, v6, Lcom/didi/ddrive/net/http/response/FeeItem;->money:D

    double-to-float v12, v12

    invoke-static {v12}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, value:Ljava/lang/String;
    new-instance v10, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v6, Lcom/didi/ddrive/net/http/response/FeeItem;->label:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/didi/ddrive/net/http/response/FeeItem;->detail:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v10, viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v9           #value:Ljava/lang/String;
    .end local v10           #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .end local v2           #arr$:[Lcom/didi/ddrive/net/http/response/FeeItem;
    .end local v5           #i$:I
    .end local v6           #item:Lcom/didi/ddrive/net/http/response/FeeItem;
    .end local v8           #len$:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mViewItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-virtual {v12, v4}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setItems(Ljava/util/List;)V

    .line 198
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;>;"
    const-wide/16 v12, 0x0

    cmpl-double v12, p4, v12

    if-lez v12, :cond_2

    .line 201
    move-wide/from16 v0, p4

    double-to-float v12, v0

    invoke-static {v12}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v9

    .line 202
    .restart local v9       #value:Ljava/lang/String;
    new-instance v10, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    const v12, 0x7f0b0154

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .restart local v10       #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    const v12, 0x7f07002f

    iput v12, v10, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->color:I

    .line 204
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v9           #value:Ljava/lang/String;
    .end local v10           #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    :cond_2
    const-wide/16 v12, 0x0

    cmpl-double v12, p8, v12

    if-lez v12, :cond_4

    .line 208
    const/4 v3, 0x0

    .line 209
    .local v3, channel:Ljava/lang/String;
    const-wide/high16 v12, 0x3ff0

    cmpl-double v12, p6, v12

    if-nez v12, :cond_6

    .line 210
    const v12, 0x7f0b0138

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    :cond_3
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 218
    move-wide/from16 v0, p8

    double-to-float v12, v0

    invoke-static {v12}, Lcom/didi/common/util/Utils;->transferToTwoDicmal(F)Ljava/lang/String;

    move-result-object v9

    .line 219
    .restart local v9       #value:Ljava/lang/String;
    new-instance v10, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v3, v12}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .restart local v10       #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    const v12, 0x7f07002f

    iput v12, v10, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->color:I

    .line 221
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v3           #channel:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    .end local v10           #viewItem:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mViewCouponItems:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-virtual {v12, v7}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setItems(Ljava/util/List;)V

    .line 228
    :cond_5
    return-void

    .line 211
    .restart local v3       #channel:Ljava/lang/String;
    :cond_6
    const-wide/high16 v12, 0x4000

    cmpl-double v12, p6, v12

    if-nez v12, :cond_7

    .line 212
    const v12, 0x7f0b0158

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 213
    :cond_7
    const-wide/high16 v12, 0x4008

    cmpl-double v12, p6, v12

    if-nez v12, :cond_3

    .line 214
    const v12, 0x7f0b013c

    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public showTotalCost()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 86
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mTxtPaidCost:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->mYuan:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void
.end method

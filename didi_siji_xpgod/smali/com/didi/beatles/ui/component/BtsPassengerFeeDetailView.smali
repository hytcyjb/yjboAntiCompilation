.class public Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;
.super Landroid/widget/LinearLayout;
.source "BtsPassengerFeeDetailView.java"


# instance fields
.field private btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

.field private btsTotalFeeTVLabel:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private discountFeeContainer:Landroid/widget/LinearLayout;

.field private freeStamp:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private normalFeeContainer:Landroid/widget/LinearLayout;

.field private totalFeeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->context:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->discountFeeContainer:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->btsTotalFeeTVLabel:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->totalFeeTV:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->btsTotalFeeTVLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 67
    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->freeStamp:Landroid/widget/ImageView;

    .line 68
    return-void
.end method

.method public setFeeData(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 18
    .parameter "order"

    .prologue
    .line 72
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isFree:Z

    if-eqz v14, :cond_1

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->freeStamp:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :goto_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    .line 79
    .local v11, pd:Lcom/didi/beatles/model/order/BtsPrice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    invoke-virtual {v11, v14}, Lcom/didi/beatles/model/order/BtsPrice;->equals(Lcom/didi/beatles/model/order/BtsPrice;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 139
    :cond_0
    return-void

    .line 75
    .end local v11           #pd:Lcom/didi/beatles/model/order/BtsPrice;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->freeStamp:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 81
    .restart local v11       #pd:Lcom/didi/beatles/model/order/BtsPrice;
    :cond_2
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    if-lez v14, :cond_3

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 84
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->discountFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    if-lez v14, :cond_4

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->discountFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 86
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->totalFeeTV:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/didi/beatles/model/order/BtsPrice;->getTotalPrice()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    if-eqz v11, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v14, :cond_5

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->context:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    :cond_5
    invoke-virtual {v11}, Lcom/didi/beatles/model/order/BtsPrice;->getNormalPriceList()Ljava/util/List;

    move-result-object v10

    .line 93
    .local v10, npList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 94
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;

    .line 95
    .local v9, np:Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f03002b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 96
    .local v13, view:Landroid/view/View;
    const v14, 0x7f08013d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 97
    .local v6, feeLabelTV:Landroid/widget/TextView;
    const v14, 0x7f08013e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 98
    .local v7, feeValueTV:Landroid/widget/TextView;
    iget-object v14, v9, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->name:Ljava/lang/String;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v15, v9, Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;->price:D

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 103
    .end local v6           #feeLabelTV:Landroid/widget/TextView;
    .end local v7           #feeValueTV:Landroid/widget/TextView;
    .end local v9           #np:Lcom/didi/beatles/model/order/BtsPrice$NormalPrice;
    .end local v13           #view:Landroid/view/View;
    :cond_6
    invoke-virtual {v11}, Lcom/didi/beatles/model/order/BtsPrice;->getDiscountPriceList()Ljava/util/List;

    move-result-object v5

    .line 105
    .local v5, dpList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;>;"
    const/4 v8, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 106
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;

    .line 107
    .local v4, dp:Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f030014

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->discountFeeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 108
    .restart local v13       #view:Landroid/view/View;
    const v14, 0x7f0800b2

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 109
    .local v12, rightArrowIV:Landroid/widget/ImageView;
    const v14, 0x7f0800b0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, btsLabelTV:Landroid/widget/TextView;
    const v14, 0x7f0800b1

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 111
    .local v3, btsValueTV:Landroid/widget/TextView;
    iget-object v14, v4, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->selectUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    iget v14, v4, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->type:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 113
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    new-instance v14, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView$1;-><init>(Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_7
    :goto_3
    iget-object v14, v4, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->name:Ljava/lang/String;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v14, v4, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->price:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->discountFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 128
    :cond_8
    iget v14, v4, Lcom/didi/beatles/model/order/BtsPrice$DiscountPrice;->type:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 129
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3
.end method

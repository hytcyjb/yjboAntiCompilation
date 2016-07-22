.class public Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;
.super Landroid/widget/LinearLayout;
.source "BtsDriverFeeDetailView.java"


# instance fields
.field private btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

.field private btsTotalFeeTVLabel:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private discountFeeContainer:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private normalFeeContainer:Landroid/widget/LinearLayout;

.field private totalFeeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->context:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    .line 53
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->discountFeeContainer:Landroid/widget/LinearLayout;

    .line 55
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->btsTotalFeeTVLabel:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->totalFeeTV:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public setFeeData(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 10
    .parameter "order"

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 86
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v6, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 65
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 66
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67
    :cond_2
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->discountFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 68
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->discountFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    :cond_3
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->totalFeeTV:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->priceDetails:Ljava/util/ArrayList;

    .line 71
    .local v4, pdList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;>;"
    if-eqz v4, :cond_0

    .line 72
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v6, :cond_4

    .line 73
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 76
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;

    .line 77
    .local v3, np:Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03002b

    iget-object v8, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 78
    .local v5, view:Landroid/view/View;
    const v6, 0x7f08013d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, feeLabelTV:Landroid/widget/TextView;
    const v6, 0x7f08013e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, feeValueTV:Landroid/widget/TextView;
    iget-object v6, v3, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v6, v3, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;->price:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v6, p0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->normalFeeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

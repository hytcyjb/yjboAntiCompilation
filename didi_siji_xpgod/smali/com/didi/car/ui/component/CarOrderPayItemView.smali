.class public Lcom/didi/car/ui/component/CarOrderPayItemView;
.super Landroid/widget/RelativeLayout;
.source "CarOrderPayItemView.java"


# instance fields
.field private carOrderPayItemArrow:Landroid/widget/ImageView;

.field private carOrderPayItemKey:Landroid/widget/TextView;

.field private carOrderPayItemValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarOrderPayItemView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarOrderPayItemView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarOrderPayItemView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarOrderPayItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030062

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemKey:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f080246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemValue:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f080247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemArrow:Landroid/widget/ImageView;

    .line 47
    return-void
.end method


# virtual methods
.method public fillData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemKey:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemValue:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public getCarOrderPayItemValue()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemValue:Landroid/widget/TextView;

    return-object v0
.end method

.method public setCarOderPayItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/component/CarOrderPayItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public showArrowImage(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateItemView(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public updateItemViewKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/car/ui/component/CarOrderPayItemView;->carOrderPayItemKey:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

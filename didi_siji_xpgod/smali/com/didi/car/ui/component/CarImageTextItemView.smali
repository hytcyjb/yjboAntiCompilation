.class public Lcom/didi/car/ui/component/CarImageTextItemView;
.super Landroid/widget/RelativeLayout;
.source "CarImageTextItemView.java"


# instance fields
.field private carItemImage:Landroid/widget/ImageView;

.field private carItemLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarImageTextItemView;->init()V

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
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarImageTextItemView;->init()V

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
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarImageTextItemView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarImageTextItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005d

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarImageTextItemView;->carItemImage:Landroid/widget/ImageView;

    .line 44
    const v1, 0x7f080228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarImageTextItemView;->carItemLabel:Landroid/widget/TextView;

    .line 46
    return-void
.end method


# virtual methods
.method public fillData(ILjava/lang/String;)V
    .locals 1
    .parameter "resId"
    .parameter "value"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/car/ui/component/CarImageTextItemView;->carItemImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v0, p0, Lcom/didi/car/ui/component/CarImageTextItemView;->carItemLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public setTextStyle()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/car/ui/component/CarImageTextItemView;->carItemLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarImageTextItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c006d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

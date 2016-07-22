.class public Lcom/didi/car/ui/component/CancelTripReasonView;
.super Landroid/widget/RelativeLayout;
.source "CancelTripReasonView.java"


# instance fields
.field private check:Lx/ImageView;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private icon:Lx/ImageView;

.field private listener:Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;

.field private title:Landroid/widget/TextView;

.field private txtMark:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Lcom/didi/car/ui/component/CancelTripReasonView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CancelTripReasonView$2;-><init>(Lcom/didi/car/ui/component/CancelTripReasonView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 45
    invoke-direct {p0}, Lcom/didi/car/ui/component/CancelTripReasonView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Lcom/didi/car/ui/component/CancelTripReasonView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CancelTripReasonView$2;-><init>(Lcom/didi/car/ui/component/CancelTripReasonView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 40
    invoke-direct {p0}, Lcom/didi/car/ui/component/CancelTripReasonView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Lcom/didi/car/ui/component/CancelTripReasonView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CancelTripReasonView$2;-><init>(Lcom/didi/car/ui/component/CancelTripReasonView;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 35
    invoke-direct {p0}, Lcom/didi/car/ui/component/CancelTripReasonView;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CancelTripReasonView;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->icon:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/component/CancelTripReasonView;)Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->listener:Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CancelTripReasonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004d

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->icon:Lx/ImageView;

    .line 51
    const v1, 0x7f0801c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->title:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->check:Lx/ImageView;

    .line 53
    const v1, 0x7f0801c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->txtMark:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CancelTripReasonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->check:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->check:Lx/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->check:Lx/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->check:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImgIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 74
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/didi/car/ui/component/CancelTripReasonView$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CancelTripReasonView$1;-><init>(Lcom/didi/car/ui/component/CancelTripReasonView;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;)V
    .locals 3
    .parameter "t"
    .parameter "listener"

    .prologue
    .line 60
    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 61
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, array:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->txtMark:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .end local v0           #array:[Ljava/lang/String;
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->listener:Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;

    .line 70
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/component/CancelTripReasonView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

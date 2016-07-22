.class public Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;
.super Landroid/widget/RelativeLayout;
.source "DDriveCancelTripReasonView.java"


# instance fields
.field private check:Lx/ImageView;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private icon:Lx/ImageView;

.field private listener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;

.field private title:Landroid/widget/TextView;

.field private txtMark:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 46
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 41
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->clickListener:Landroid/view/View$OnClickListener;

    .line 36
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->icon:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->listener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03008b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->icon:Lx/ImageView;

    .line 52
    const v1, 0x7f0801c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->title:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->check:Lx/ImageView;

    .line 54
    const v1, 0x7f0801c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->txtMark:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->icon:Lx/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lx/ImageView;->setVisibility(I)V

    .line 56
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "morning"

    const-string v1, "check is  called"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->check:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->check:Lx/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->check:Lx/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->check:Lx/ImageView;

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
    .line 76
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;)V
    .locals 3
    .parameter "t"
    .parameter "listener"

    .prologue
    .line 62
    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 63
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, array:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->txtMark:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v0           #array:[Ljava/lang/String;
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->listener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;

    .line 72
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class public Lcom/didi/car/ui/component/CarPayBasicFeeView;
.super Landroid/widget/RelativeLayout;
.source "CarPayBasicFeeView.java"


# instance fields
.field private mContentView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarPayBasicFeeView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private generatePayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarPayBasicFeeItemView;
    .locals 2
    .parameter "title"
    .parameter "value"

    .prologue
    .line 68
    new-instance v0, Lcom/didi/car/ui/component/CarPayBasicFeeItemView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/car/ui/component/CarPayBasicFeeItemView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, itemView:Lcom/didi/car/ui/component/CarPayBasicFeeItemView;
    invoke-virtual {v0, p1, p2}, Lcom/didi/car/ui/component/CarPayBasicFeeItemView;->fillData(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 71
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030064

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mContentView:Landroid/widget/LinearLayout;

    .line 51
    return-void
.end method


# virtual methods
.method public addPayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarPayBasicFeeItemView;
    .locals 2
    .parameter "title"
    .parameter "value"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->generatePayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarPayBasicFeeItemView;

    move-result-object v0

    .line 63
    .local v0, itemView:Lcom/didi/car/ui/component/CarPayBasicFeeItemView;
    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    return-object v0
.end method

.method public setItems(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "setItems"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iput-object p1, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mItems:Ljava/util/Map;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setItems size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, view:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 83
    new-instance v2, Lcom/didi/car/ui/component/CarPayBasicFeeView$1;

    invoke-direct {v2, p0, v1}, Lcom/didi/car/ui/component/CarPayBasicFeeView$1;-><init>(Lcom/didi/car/ui/component/CarPayBasicFeeView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v2, 0x7f080248

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, txtView:Landroid/widget/TextView;
    const v2, 0x7f0b0232

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v2, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showAllBasicView()V
    .locals 4

    .prologue
    .line 54
    iget-object v2, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView;->mItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->addPayItemView(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/car/ui/component/CarPayBasicFeeItemView;

    goto :goto_0

    .line 59
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

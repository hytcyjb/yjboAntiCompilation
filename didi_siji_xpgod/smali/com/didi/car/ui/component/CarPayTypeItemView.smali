.class public Lcom/didi/car/ui/component/CarPayTypeItemView;
.super Landroid/widget/RelativeLayout;
.source "CarPayTypeItemView.java"


# instance fields
.field private mCBPaySelect:Landroid/widget/CheckBox;

.field private mImgViewPayIcon:Landroid/widget/ImageView;

.field private mTxtPayExt:Landroid/widget/TextView;

.field private mTxtPayTitle:Landroid/widget/TextView;

.field private mTxtPayValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarPayTypeItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mImgViewPayIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030065

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mImgViewPayIcon:Landroid/widget/ImageView;

    .line 52
    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayTitle:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f08024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayExt:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f080249

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayValue:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f08024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mCBPaySelect:Landroid/widget/CheckBox;

    .line 57
    return-void
.end method


# virtual methods
.method public fillData(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "drawableId"
    .parameter "title"
    .parameter "value"

    .prologue
    const/16 v2, 0x8

    .line 80
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mImgViewPayIcon:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayExt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mCBPaySelect:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayValue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayValue:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->setTag(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public fillData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "iconUrl"
    .parameter "title"
    .parameter "ext"

    .prologue
    .line 60
    new-instance v0, Lcom/didi/car/ui/component/CarPayTypeItemView$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarPayTypeItemView$1;-><init>(Lcom/didi/car/ui/component/CarPayTypeItemView;)V

    invoke-static {p2, v0}, Lcom/didi/common/helper/ImageFetcher;->fetchCallback(Ljava/lang/String;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V

    .line 69
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {p4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayExt:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayExt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->setTag(Ljava/lang/Object;)V

    .line 77
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mTxtPayExt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mCBPaySelect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setCarOderPayItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/component/CarPayTypeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mCBPaySelect:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    return-void
.end method

.method public toogle()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mCBPaySelect:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 96
    .local v0, isChecked:Z
    iget-object v2, p0, Lcom/didi/car/ui/component/CarPayTypeItemView;->mCBPaySelect:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

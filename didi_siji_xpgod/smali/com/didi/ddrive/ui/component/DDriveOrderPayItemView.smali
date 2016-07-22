.class public Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;
.super Lx/RelativeLayout;
.source "DDriveOrderPayItemView.java"


# instance fields
.field private mArrowIcon:Landroid/view/View;

.field private payItemKey:Landroid/widget/TextView;

.field private payItemValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030094

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->payItemKey:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f080350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->payItemValue:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f08034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->mArrowIcon:Landroid/view/View;

    .line 46
    return-void
.end method


# virtual methods
.method public fillData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->payItemKey:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v1, 0x7f0b0476

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, yuan:Ljava/lang/String;
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->payItemValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->payItemValue:Landroid/widget/TextView;

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getPayItemValue()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->payItemValue:Landroid/widget/TextView;

    return-object v0
.end method

.method public setPayItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public showArrowImage(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayItemView;->mArrowIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

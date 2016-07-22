.class public Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;
.super Landroid/widget/RelativeLayout;
.source "BtsFreeDeliverCheckBox.java"


# instance fields
.field private freeDesc:Landroid/widget/TextView;

.field private isFreeCheck:Landroid/widget/CheckBox;

.field private payDesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->initView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->initView(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->switchFreeOrNot()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->isFreeCheck:Landroid/widget/CheckBox;

    .line 66
    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->freeDesc:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0800c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->payDesc:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->addView(Landroid/view/View;)V

    .line 70
    new-instance v1, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox$1;-><init>(Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method private switchFreeOrNot()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->isFreeCheck:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->isFreeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isFreeChecked()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->isFreeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setFreeDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->freeDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public setPayDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->payDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

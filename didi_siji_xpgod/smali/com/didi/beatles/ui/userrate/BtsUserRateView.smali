.class public Lcom/didi/beatles/ui/userrate/BtsUserRateView;
.super Landroid/widget/LinearLayout;
.source "BtsUserRateView.java"


# instance fields
.field private mChoiceView:Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/ui/userrate/BtsUserRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, -0x2

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 26
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f07000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->setBackgroundColor(I)V

    .line 27
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->setOrientation(I)V

    .line 28
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->setGravity(I)V

    .line 30
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mTextView:Landroid/widget/TextView;

    .line 31
    iget-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mTextView:Landroid/widget/TextView;

    const/high16 v4, 0x4140

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    iget-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f07001e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    new-instance v3, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;

    invoke-direct {v3, p1}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mChoiceView:Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;

    .line 35
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 37
    .local v2, textViewLp:Landroid/widget/LinearLayout$LayoutParams;
    const v3, 0x7f090047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 38
    iget-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v0, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 41
    .local v0, choiceViewLp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mChoiceView:Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;

    invoke-virtual {p0, v3, v0}, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void
.end method


# virtual methods
.method public setItem(Lcom/didi/beatles/model/order/BtsUserRate;)V
    .locals 2
    .parameter "userRate"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsUserRate;->mRateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->mChoiceView:Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->setItem(Lcom/didi/beatles/model/order/BtsUserRate;)V

    goto :goto_0
.end method

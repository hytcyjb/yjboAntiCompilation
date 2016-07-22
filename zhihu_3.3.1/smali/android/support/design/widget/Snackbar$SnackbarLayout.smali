.class public Landroid/support/design/widget/Snackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnackbarLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$SnackbarLayout$a;,
        Landroid/support/design/widget/Snackbar$SnackbarLayout$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:I

.field private d:I

.field private e:Landroid/support/design/widget/Snackbar$SnackbarLayout$b;

.field private f:Landroid/support/design/widget/Snackbar$SnackbarLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 659
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 662
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 663
    sget-object v0, Landroid/support/design/a$i;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 664
    sget v1, Landroid/support/design/a$i;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c:I

    .line 665
    sget v1, Landroid/support/design/a$i;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->d:I

    .line 667
    sget v1, Landroid/support/design/a$i;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    sget v1, Landroid/support/design/a$i;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 671
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 673
    invoke-virtual {p0, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setClickable(Z)V

    .line 678
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/design/a$f;->design_layout_snackbar_include:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 680
    invoke-static {p0, v3}, Landroid/support/v4/view/ah;->d(Landroid/view/View;I)V

    .line 682
    invoke-static {p0, v3}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 684
    return-void
.end method

.method private static a(Landroid/view/View;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 807
    invoke-static {p0}, Landroid/support/v4/view/ah;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    invoke-static {p0}, Landroid/support/v4/view/ah;->m(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroid/support/v4/view/ah;->n(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v0, p1, v1, p2}, Landroid/support/v4/view/ah;->b(Landroid/view/View;IIII)V

    .line 815
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 793
    const/4 v0, 0x0

    .line 794
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getOrientation()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 795
    invoke-virtual {p0, p1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOrientation(I)V

    move v0, v1

    .line 798
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    if-eq v2, p3, :cond_2

    .line 800
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0, p2, p3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(Landroid/view/View;II)V

    move v0, v1

    .line 803
    :cond_2
    return v0
.end method


# virtual methods
.method a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v1, 0x0

    .line 736
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 737
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/bc;->a(F)Landroid/support/v4/view/bc;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->a(J)Landroid/support/v4/view/bc;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->b(J)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->c()V

    .line 740
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 742
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/bc;->a(F)Landroid/support/v4/view/bc;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->a(J)Landroid/support/v4/view/bc;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->b(J)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->c()V

    .line 745
    :cond_0
    return-void
.end method

.method b(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 749
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(F)Landroid/support/v4/view/bc;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->a(J)Landroid/support/v4/view/bc;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->b(J)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->c()V

    .line 752
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-static {v0, v4}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 754
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-static {v0}, Landroid/support/v4/view/ah;->s(Landroid/view/View;)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(F)Landroid/support/v4/view/bc;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->a(J)Landroid/support/v4/view/bc;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/bc;->b(J)Landroid/support/v4/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bc;->c()V

    .line 757
    :cond_0
    return-void
.end method

.method getActionView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    return-object v0
.end method

.method getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 769
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 770
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Landroid/support/design/widget/Snackbar$SnackbarLayout$a;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Landroid/support/design/widget/Snackbar$SnackbarLayout$a;

    invoke-interface {v0, p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout$a;->a(Landroid/view/View;)V

    .line 773
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 777
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 778
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Landroid/support/design/widget/Snackbar$SnackbarLayout$a;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Landroid/support/design/widget/Snackbar$SnackbarLayout$a;

    invoke-interface {v0, p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout$a;->b(Landroid/view/View;)V

    .line 781
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 689
    sget v0, Landroid/support/design/a$e;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    .line 690
    sget v0, Landroid/support/design/a$e;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    .line 691
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 761
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 762
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->e:Landroid/support/design/widget/Snackbar$SnackbarLayout$b;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->e:Landroid/support/design/widget/Snackbar$SnackbarLayout$b;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/design/widget/Snackbar$SnackbarLayout$b;->a(Landroid/view/View;IIII)V

    .line 765
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 703
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 705
    iget v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c:I

    if-le v0, v1, :cond_0

    .line 706
    iget v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 707
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 710
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/a$d;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 712
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroid/support/design/a$d;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 714
    iget-object v4, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-le v4, v2, :cond_2

    move v4, v2

    .line 717
    :goto_0
    if-eqz v4, :cond_3

    iget v5, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->d:I

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->d:I

    if-le v5, v6, :cond_3

    .line 719
    sub-int v1, v0, v1

    invoke-direct {p0, v2, v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 730
    :goto_1
    if-eqz v0, :cond_1

    .line 731
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 733
    :cond_1
    return-void

    :cond_2
    move v4, v3

    .line 714
    goto :goto_0

    .line 724
    :cond_3
    if-eqz v4, :cond_4

    .line 725
    :goto_2
    invoke-direct {p0, v3, v0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 726
    goto :goto_1

    :cond_4
    move v0, v1

    .line 724
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method setOnAttachStateChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$a;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Landroid/support/design/widget/Snackbar$SnackbarLayout$a;

    .line 789
    return-void
.end method

.method setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$b;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->e:Landroid/support/design/widget/Snackbar$SnackbarLayout$b;

    .line 785
    return-void
.end method

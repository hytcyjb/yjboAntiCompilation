.class Landroid/support/v7/widget/AppCompatSpinner$b;
.super Landroid/support/v7/widget/ListPopupWindow;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/AppCompatSpinner;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/ListAdapter;

.field private final e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    .line 696
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 693
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->e:Landroid/graphics/Rect;

    .line 698
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Landroid/view/View;)V

    .line 699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Z)V

    .line 700
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(I)V

    .line 702
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$b$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$b$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner$b;Landroid/support/v7/widget/AppCompatSpinner;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 713
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/AppCompatSpinner$b;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/AppCompatSpinner$b;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 690
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$b;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/AppCompatSpinner$b;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->c()V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 821
    invoke-static {p1}, Landroid/support/v4/view/ah;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    invoke-super {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 718
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->d:Landroid/widget/ListAdapter;

    .line 719
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->c:Ljava/lang/CharSequence;

    .line 728
    return-void
.end method

.method b()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 731
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$b;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 733
    if-eqz v1, :cond_1

    .line 734
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->b(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 735
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/as;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->b(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move v1, v0

    .line 741
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getPaddingLeft()I

    move-result v3

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getPaddingRight()I

    move-result v4

    .line 743
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getWidth()I

    move-result v5

    .line 744
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->c(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 745
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->d:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$b;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v2, v0, v6}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/support/v7/widget/AppCompatSpinner;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 747
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v6}, Landroid/support/v7/widget/AppCompatSpinner;->b(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v6}, Landroid/support/v7/widget/AppCompatSpinner;->b(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    .line 749
    if-le v2, v0, :cond_5

    .line 752
    :goto_2
    sub-int v2, v5, v3

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->f(I)V

    .line 759
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/as;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 760
    sub-int v0, v5, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$b;->h()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 764
    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->b(I)V

    .line 765
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->b(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    .line 738
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v1}, Landroid/support/v7/widget/AppCompatSpinner;->b(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v2}, Landroid/support/v7/widget/AppCompatSpinner;->b(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v1, v0

    goto/16 :goto_1

    .line 754
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->c(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 755
    sub-int v0, v5, v3

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->f(I)V

    goto :goto_3

    .line 757
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->c(Landroid/support/v7/widget/AppCompatSpinner;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->f(I)V

    goto :goto_3

    .line 762
    :cond_4
    add-int v0, v1, v3

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public c()V
    .locals 3

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$b;->k()Z

    move-result v0

    .line 770
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$b;->b()V

    .line 772
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatSpinner$b;->g(I)V

    .line 773
    invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->c()V

    .line 774
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$b;->m()Landroid/widget/ListView;

    move-result-object v1

    .line 775
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 776
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatSpinner$b;->h(I)V

    .line 778
    if-eqz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$b;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_0

    .line 789
    new-instance v1, Landroid/support/v7/widget/AppCompatSpinner$b$2;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/AppCompatSpinner$b$2;-><init>(Landroid/support/v7/widget/AppCompatSpinner$b;)V

    .line 804
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 805
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$b$3;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/AppCompatSpinner$b$3;-><init>(Landroid/support/v7/widget/AppCompatSpinner$b;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$b;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method

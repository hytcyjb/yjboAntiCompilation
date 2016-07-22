.class Landroid/support/v7/preference/d$a;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/preference/d;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/d;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Landroid/support/v7/preference/d$a;->a:Landroid/support/v7/preference/d;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/d;Landroid/support/v7/preference/d$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 623
    invoke-direct {p0, p1}, Landroid/support/v7/preference/d$a;-><init>(Landroid/support/v7/preference/d;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 662
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g()I

    move-result v1

    if-nez v1, :cond_0

    check-cast v0, Landroid/support/v7/preference/h;

    invoke-virtual {v0}, Landroid/support/v7/preference/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 668
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/h;

    .line 671
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 672
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 673
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 674
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/h;

    .line 676
    invoke-virtual {v1}, Landroid/support/v7/preference/h;->a()Z

    move-result v1

    .line 678
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 692
    iput p1, p0, Landroid/support/v7/preference/d$a;->c:I

    .line 693
    iget-object v0, p0, Landroid/support/v7/preference/d$a;->a:Landroid/support/v7/preference/d;

    invoke-static {v0}, Landroid/support/v7/preference/d;->b(Landroid/support/v7/preference/d;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 694
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-object v0, p0, Landroid/support/v7/preference/d$a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 648
    :cond_0
    return-void

    .line 633
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 634
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    move v0, v1

    .line 635
    :goto_0
    if-ge v0, v2, :cond_0

    .line 636
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 637
    invoke-direct {p0, v4, p2}, Landroid/support/v7/preference/d$a;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 638
    invoke-static {v4}, Landroid/support/v4/view/ah;->u(Landroid/view/View;)F

    move-result v5

    float-to-int v5, v5

    .line 639
    iget-object v6, p0, Landroid/support/v7/preference/d$a;->b:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Landroid/support/v7/preference/d$a;->c:I

    add-int/2addr v7, v5

    invoke-virtual {v6, v1, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 640
    iget-object v5, p0, Landroid/support/v7/preference/d$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 642
    :cond_2
    invoke-direct {p0, v4, p2}, Landroid/support/v7/preference/d$a;->b(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 643
    invoke-static {v4}, Landroid/support/v4/view/ah;->u(Landroid/view/View;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v5

    .line 644
    iget-object v5, p0, Landroid/support/v7/preference/d$a;->b:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/support/v7/preference/d$a;->c:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v1, v4, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 645
    iget-object v4, p0, Landroid/support/v7/preference/d$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 635
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 653
    invoke-direct {p0, p2, p3}, Landroid/support/v7/preference/d$a;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget v0, p0, Landroid/support/v7/preference/d$a;->c:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 656
    :cond_0
    invoke-direct {p0, p2, p3}, Landroid/support/v7/preference/d$a;->b(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    iget v0, p0, Landroid/support/v7/preference/d$a;->c:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 659
    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 682
    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/d$a;->c:I

    .line 687
    :goto_0
    iput-object p1, p0, Landroid/support/v7/preference/d$a;->b:Landroid/graphics/drawable/Drawable;

    .line 688
    iget-object v0, p0, Landroid/support/v7/preference/d$a;->a:Landroid/support/v7/preference/d;

    invoke-static {v0}, Landroid/support/v7/preference/d;->b(Landroid/support/v7/preference/d;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 689
    return-void

    .line 685
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/preference/d$a;->c:I

    goto :goto_0
.end method

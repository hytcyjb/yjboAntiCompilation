.class Landroid/support/v7/widget/ActionMenuPresenter$d;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private final b:[F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 610
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 611
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/a/a$a;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 608
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$d;->b:[F

    .line 613
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setClickable(Z)V

    .line 614
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setFocusable(Z)V

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setVisibility(I)V

    .line 616
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setEnabled(Z)V

    .line 618
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$d$1;

    invoke-direct {v0, p0, p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$d$1;-><init>(Landroid/support/v7/widget/ActionMenuPresenter$d;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 647
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 651
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :goto_0
    return v1

    .line 655
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->playSoundEffect(I)V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 672
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result v0

    .line 675
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 676
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 677
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 678
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getWidth()I

    move-result v1

    .line 679
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getHeight()I

    move-result v3

    .line 680
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 681
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 682
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 683
    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 684
    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 685
    sub-int v5, v1, v4

    sub-int v6, v3, v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    invoke-static {v2, v5, v6, v1, v3}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 689
    :cond_0
    return v0
.end method

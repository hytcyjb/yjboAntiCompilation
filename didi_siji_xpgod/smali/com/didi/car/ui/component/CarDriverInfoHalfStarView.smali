.class public Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;
.super Landroid/widget/RelativeLayout;
.source "CarDriverInfoHalfStarView.java"


# instance fields
.field private mHalfStarImage:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mSelectStarImage:I

.field private mUnSelectStarImage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mSelectStarImage:I

    .line 13
    const v0, 0x7f0201a4

    iput v0, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mUnSelectStarImage:I

    .line 14
    const v0, 0x7f0201a6

    iput v0, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mHalfStarImage:I

    .line 18
    const v0, 0x7f030057

    invoke-static {p1, v0, p0}, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    const v0, 0x7f0801e8

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mLayout:Landroid/widget/RelativeLayout;

    .line 20
    return-void
.end method


# virtual methods
.method public setLevel(F)V
    .locals 6
    .parameter "level"

    .prologue
    .line 24
    iget-object v4, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    .line 26
    .local v3, startCount:I
    int-to-float v4, v3

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    int-to-float v4, v3

    :goto_0
    float-to-int v2, v4

    .line 27
    .local v2, select:I
    add-int/lit8 v4, v2, 0x1

    if-gt v4, v3, :cond_3

    const/high16 v4, 0x3f80

    rem-float v4, p1, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v0, 0x1

    .line 29
    .local v0, hasHalf:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 33
    if-ge v1, v2, :cond_4

    .line 34
    iget-object v4, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lx/ImageView;

    iget v5, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mSelectStarImage:I

    invoke-virtual {v4, v5}, Lx/ImageView;->setImageResource(I)V

    .line 38
    :goto_3
    if-eqz v0, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lx/ImageView;

    iget v5, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mHalfStarImage:I

    invoke-virtual {v4, v5}, Lx/ImageView;->setImageResource(I)V

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #hasHalf:Z
    .end local v1           #i:I
    .end local v2           #select:I
    :cond_2
    move v4, p1

    .line 26
    goto :goto_0

    .line 27
    .restart local v2       #select:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 36
    .restart local v0       #hasHalf:Z
    .restart local v1       #i:I
    :cond_4
    iget-object v4, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lx/ImageView;

    iget v5, p0, Lcom/didi/car/ui/component/CarDriverInfoHalfStarView;->mUnSelectStarImage:I

    invoke-virtual {v4, v5}, Lx/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 42
    :cond_5
    return-void
.end method

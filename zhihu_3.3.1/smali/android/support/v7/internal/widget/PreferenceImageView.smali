.class public Landroid/support/v7/internal/widget/PreferenceImageView;
.super Landroid/widget/ImageView;
.source "PreferenceImageView.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7fffffff

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v2, p0, Landroid/support/v7/internal/widget/PreferenceImageView;->a:I

    .line 32
    iput v2, p0, Landroid/support/v7/internal/widget/PreferenceImageView;->b:I

    .line 45
    sget-object v0, Landroid/support/v7/preference/i$d;->PreferenceImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    sget v1, Landroid/support/v7/preference/i$d;->PreferenceImageView_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/PreferenceImageView;->setMaxWidth(I)V

    .line 51
    sget v1, Landroid/support/v7/preference/i$d;->PreferenceImageView_maxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/PreferenceImageView;->setMaxHeight(I)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/support/v7/internal/widget/PreferenceImageView;->b:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/support/v7/internal/widget/PreferenceImageView;->a:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7fffffff

    const/high16 v3, -0x8000

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 85
    if-eq v0, v3, :cond_0

    if-nez v0, :cond_2

    .line 86
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/PreferenceImageView;->getMaxWidth()I

    move-result v2

    .line 88
    if-eq v2, v4, :cond_2

    if-lt v2, v1, :cond_1

    if-nez v0, :cond_2

    .line 90
    :cond_1
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 94
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 95
    if-eq v0, v3, :cond_3

    if-nez v0, :cond_5

    .line 96
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/PreferenceImageView;->getMaxHeight()I

    move-result v2

    .line 98
    if-eq v2, v4, :cond_5

    if-lt v2, v1, :cond_4

    if-nez v0, :cond_5

    .line 100
    :cond_4
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 104
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 105
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput p1, p0, Landroid/support/v7/internal/widget/PreferenceImageView;->b:I

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 76
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Landroid/support/v7/internal/widget/PreferenceImageView;->a:I

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 66
    return-void
.end method

.class public Lcom/didi/beatles/ui/component/BtsSquareLayout;
.super Landroid/widget/RelativeLayout;
.source "BtsSquareLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-static {v3, p1}, Lcom/didi/beatles/ui/component/BtsSquareLayout;->getDefaultSize(II)I

    move-result v2

    invoke-static {v3, p2}, Lcom/didi/beatles/ui/component/BtsSquareLayout;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/didi/beatles/ui/component/BtsSquareLayout;->setMeasuredDimension(II)V

    .line 31
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsSquareLayout;->getMeasuredWidth()I

    move-result v1

    .line 32
    .local v1, childWidthSize:I
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsSquareLayout;->getMeasuredHeight()I

    move-result v0

    .line 34
    .local v0, childHeightSize:I
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move p2, p1

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 36
    return-void
.end method

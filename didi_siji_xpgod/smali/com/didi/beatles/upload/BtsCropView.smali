.class public Lcom/didi/beatles/upload/BtsCropView;
.super Landroid/view/View;
.source "BtsCropView.java"


# static fields
.field public static final BORDERDISTANCE:I = 0x32


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/upload/BtsCropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/didi/beatles/upload/BtsCropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/high16 v9, 0x4248

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropView;->getWidth()I

    move-result v8

    .line 41
    .local v8, width:I
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropView;->getHeight()I

    move-result v7

    .line 44
    .local v7, height:I
    add-int/lit8 v6, v8, -0x64

    .line 46
    .local v6, borderlength:I
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x5600

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    int-to-float v3, v8

    sub-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    sub-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 57
    add-int/lit8 v0, v6, 0x32

    int-to-float v1, v0

    sub-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    int-to-float v3, v8

    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    sub-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    add-int/lit8 v0, v8, -0x32

    int-to-float v3, v0

    sub-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    add-int/lit8 v0, v8, -0x32

    int-to-float v3, v0

    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    sub-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v9

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    add-int/lit8 v0, v8, -0x32

    int-to-float v1, v0

    sub-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    add-int/lit8 v0, v8, -0x32

    int-to-float v3, v0

    add-int v0, v7, v6

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/didi/beatles/upload/BtsCropView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method

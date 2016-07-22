.class public Lcom/didi/common/util/CustomBorderDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "CustomBorderDrawable.java"


# static fields
.field private static final DEFAULT_STROKE_WIDTH:I = 0x2


# instance fields
.field private fillpaint:Landroid/graphics/Paint;

.field private strokepaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 3
    .parameter "context"
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 16
    invoke-virtual {p0}, Lcom/didi/common/util/CustomBorderDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->fillpaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/didi/common/util/CustomBorderDrawable;->fillpaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->strokepaint:Landroid/graphics/Paint;

    .line 19
    iget-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->strokepaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->strokepaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/didi/common/util/ShortCutUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->strokepaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 22
    return-void
.end method


# virtual methods
.method public getFillpaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->fillpaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getStrokepaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->strokepaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "shape"
    .parameter "canvas"
    .parameter "fillpaint"

    .prologue
    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 27
    iget-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->strokepaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 28
    return-void
.end method

.method public setFillColour(I)V
    .locals 1
    .parameter "c"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/common/util/CustomBorderDrawable;->fillpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    return-void
.end method

.method public setFillpaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "fillpaint"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/didi/common/util/CustomBorderDrawable;->fillpaint:Landroid/graphics/Paint;

    .line 40
    return-void
.end method

.method public setStrokepaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "strokepaint"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/didi/common/util/CustomBorderDrawable;->strokepaint:Landroid/graphics/Paint;

    .line 48
    return-void
.end method

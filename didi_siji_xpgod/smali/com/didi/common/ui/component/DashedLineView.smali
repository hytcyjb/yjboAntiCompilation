.class public Lcom/didi/common/ui/component/DashedLineView;
.super Landroid/view/View;
.source "DashedLineView.java"


# instance fields
.field private density:F

.field private effects:Landroid/graphics/PathEffect;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DashedLineView;->init(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DashedLineView;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/DashedLineView;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/DashedLineView;->getDisplayDensity(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/didi/common/ui/component/DashedLineView;->density:F

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/component/DashedLineView;->paint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/didi/common/ui/component/DashedLineView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/didi/common/ui/component/DashedLineView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/didi/common/ui/component/DashedLineView;->density:F

    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/component/DashedLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/component/DashedLineView;->path:Landroid/graphics/Path;

    .line 41
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/didi/common/ui/component/DashedLineView;->effects:Landroid/graphics/PathEffect;

    .line 43
    return-void

    .line 41
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0xc0t 0x40t
    .end array-data
.end method


# virtual methods
.method public getDisplayDensity(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v2, p0, Lcom/didi/common/ui/component/DashedLineView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/didi/common/ui/component/DashedLineView;->effects:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 49
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DashedLineView;->getMeasuredHeight()I

    move-result v0

    .line 50
    .local v0, measuredHeight:I
    invoke-virtual {p0}, Lcom/didi/common/ui/component/DashedLineView;->getMeasuredWidth()I

    move-result v1

    .line 51
    .local v1, measuredWidth:I
    if-gt v0, v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/didi/common/ui/component/DashedLineView;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    iget-object v2, p0, Lcom/didi/common/ui/component/DashedLineView;->path:Landroid/graphics/Path;

    int-to-float v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v2, p0, Lcom/didi/common/ui/component/DashedLineView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/didi/common/ui/component/DashedLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/component/DashedLineView;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 57
    iget-object v2, p0, Lcom/didi/common/ui/component/DashedLineView;->path:Landroid/graphics/Path;

    int-to-float v3, v0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget-object v2, p0, Lcom/didi/common/ui/component/DashedLineView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/didi/common/ui/component/DashedLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

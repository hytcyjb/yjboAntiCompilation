.class public Lcom/didi/frame/realtime/voice/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final VOLUME_MAX:F = 40.0f


# instance fields
.field private minRadius:F

.field private radius:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private checkRadius()V
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->x:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 84
    :cond_0
    iget v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->x:F

    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->y:F

    :goto_0
    iput v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    .line 85
    :cond_1
    iget v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->minRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 86
    iget v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->minRadius:F

    iput v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    .line 87
    :cond_2
    return-void

    .line 84
    :cond_3
    iget v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->x:F

    goto :goto_0
.end method

.method private setMultiple()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 91
    .local v1, mDisplay:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 92
    .local v0, W:I
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/didi/frame/realtime/voice/CircleView;->x:F

    .line 93
    return-void
.end method

.method private setRadius(D)V
    .locals 3
    .parameter "v"

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->y:F

    double-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x4220

    div-float v0, v1, v2

    .line 73
    .local v0, ra:F
    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->minRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 74
    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->minRadius:F

    iput v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->y:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 76
    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->y:F

    iput v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    goto :goto_0

    .line 78
    :cond_1
    iput v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    goto :goto_0
.end method


# virtual methods
.method public drawCircle(D)V
    .locals 0
    .parameter "v"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/realtime/voice/CircleView;->setRadius(D)V

    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/realtime/voice/CircleView;->invalidate()V

    .line 61
    return-void
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    return v0
.end method

.method public init(III)V
    .locals 2
    .parameter "h"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/CircleView;->setMultiple()V

    .line 65
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->y:F

    .line 66
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/didi/frame/realtime/voice/CircleView;->minRadius:F

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->minRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 49
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    invoke-virtual {p0}, Lcom/didi/frame/realtime/voice/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-direct {p0}, Lcom/didi/frame/realtime/voice/CircleView;->checkRadius()V

    .line 55
    iget v1, p0, Lcom/didi/frame/realtime/voice/CircleView;->x:F

    iget v2, p0, Lcom/didi/frame/realtime/voice/CircleView;->y:F

    iget v3, p0, Lcom/didi/frame/realtime/voice/CircleView;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    return-void
.end method

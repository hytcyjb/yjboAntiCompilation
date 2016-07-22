.class public Lcom/facebook/imagepipeline/animated/impl/e;
.super Ljava/lang/Object;
.source "AnimatedDrawableDiagnosticsImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/e;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/imagepipeline/animated/b/a;

.field private final c:Landroid/util/DisplayMetrics;

.field private final d:Landroid/text/TextPaint;

.field private final e:Ljava/lang/StringBuilder;

.field private final f:Lcom/facebook/imagepipeline/animated/impl/g;

.field private final g:Lcom/facebook/imagepipeline/animated/impl/g;

.field private h:Lcom/facebook/imagepipeline/animated/base/d;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/imagepipeline/animated/base/e;

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/e;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/b/a;Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->b:Lcom/facebook/imagepipeline/animated/b/a;

    .line 48
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/e;->c:Landroid/util/DisplayMetrics;

    .line 49
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/g;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/impl/g;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->f:Lcom/facebook/imagepipeline/animated/impl/g;

    .line 50
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/g;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/impl/g;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->g:Lcom/facebook/imagepipeline/animated/impl/g;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    .line 52
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/impl/e;->c(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 55
    return-void
.end method

.method private c(I)I
    .locals 3
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/e;->c:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->i:J

    .line 65
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->f:Lcom/facebook/imagepipeline/animated/impl/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/g;->a(I)V

    .line 91
    if-lez p1, :cond_0

    .line 92
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/e;->a:Ljava/lang/Class;

    const-string v1, "Dropped %d frames"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->f:Lcom/facebook/imagepipeline/animated/impl/g;

    invoke-virtual {v0, v3}, Lcom/facebook/imagepipeline/animated/impl/g;->b(I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->g:Lcom/facebook/imagepipeline/animated/impl/g;

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/animated/impl/g;->b(I)I

    move-result v1

    .line 116
    add-int/2addr v0, v1

    .line 117
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/animated/impl/e;->c(I)I

    move-result v7

    .line 119
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/animated/impl/e;->c(I)I

    move-result v8

    .line 120
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/animated/impl/e;->c(I)I

    move-result v10

    .line 121
    if-lez v0, :cond_2

    .line 122
    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    .line 123
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    int-to-float v4, v7

    int-to-float v5, v8

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 127
    int-to-float v0, v7

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 128
    add-int/2addr v0, v10

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->h:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/d;->j()I

    move-result v1

    .line 133
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/e;->b:Lcom/facebook/imagepipeline/animated/b/a;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v1}, Lcom/facebook/imagepipeline/animated/b/a;->a(Ljava/lang/StringBuilder;I)V

    .line 135
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v11

    .line 136
    int-to-float v1, v0

    add-float/2addr v1, v11

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 138
    int-to-float v0, v8

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    int-to-float v3, v10

    add-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    move v8, v0

    move v9, v7

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v8

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 141
    int-to-float v0, v9

    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 142
    add-int/2addr v0, v10

    .line 145
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->h:Lcom/facebook/imagepipeline/animated/base/d;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Lcom/facebook/imagepipeline/animated/base/d;->a(Ljava/lang/StringBuilder;)V

    .line 147
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 148
    int-to-float v3, v0

    add-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 150
    int-to-float v0, v8

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    int-to-float v3, v10

    add-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v8, v0

    .line 152
    :goto_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    int-to-float v4, v7

    int-to-float v5, v8

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/e;->d:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 153
    return-void

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    move v9, v0

    goto :goto_1

    :cond_2
    move v0, v7

    goto/16 :goto_0
.end method

.method public a(Lcom/facebook/imagepipeline/animated/base/d;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/e;->h:Lcom/facebook/imagepipeline/animated/base/d;

    .line 60
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/e;->i:J

    sub-long/2addr v0, v2

    .line 70
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 71
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/e;->a:Ljava/lang/Class;

    const-string v3, "onStart took %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->g:Lcom/facebook/imagepipeline/animated/impl/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/g;->a(I)V

    .line 99
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->i:J

    .line 78
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/e;->i:J

    sub-long/2addr v0, v2

    .line 83
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 84
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/e;->a:Ljava/lang/Class;

    const-string v3, "onNextFrame took %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/e;->i:J

    .line 104
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/e;->i:J

    sub-long/2addr v0, v2

    .line 109
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/e;->a:Ljava/lang/Class;

    const-string v3, "draw took %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

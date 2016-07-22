.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dp;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/do;
.source "GLPolygonOverlay.java"


# instance fields
.field protected a:Ljava/nio/FloatBuffer;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

.field private f:Ljava/nio/FloatBuffer;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    .line 25
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->g:Z

    .line 48
    return-void
.end method

.method private d()[F
    .locals 5

    .prologue
    .line 262
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    new-array v0, v3, [F

    .line 263
    .local v0, array:[F
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 264
    mul-int/lit8 v2, v1, 0x3

    .line 265
    .local v2, startIndex:I
    add-int/lit8 v4, v2, 0x0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aput v3, v0, v4

    .line 266
    add-int/lit8 v4, v2, 0x1

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v0, v4

    .line 267
    add-int/lit8 v3, v2, 0x2

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v2           #startIndex:I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;)V
    .locals 5
    .parameter "opts"

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->b(I)V

    .line 78
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a(I)V

    .line 79
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d(F)V

    .line 81
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c(F)V

    .line 82
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->isVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->I:Z

    .line 84
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, listLatlng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, ptsAdd:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/bg;>;"
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    if-nez v3, :cond_1

    .line 71
    :cond_0
    return-void

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 55
    if-eqz p1, :cond_0

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    .local v2, iSize:I
    if-lez v2, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, geoPt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #geoPt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 66
    .restart local v0       #geoPt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    if-eqz v0, :cond_2

    .line 67
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/16 v6, 0xde1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->I:Z

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->g:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 120
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->g:Z

    .line 121
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->b()V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->f:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 129
    invoke-interface {p1, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 131
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->F:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->F:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v1

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->F:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v2

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->F:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v3

    invoke-interface {p1, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/16 v0, 0x1406

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->f:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    invoke-interface {p1, v1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 133
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->G:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->G:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v1

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->G:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v2

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->G:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v3

    invoke-interface {p1, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->E:F

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    const/16 v0, 0x1406

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 136
    invoke-interface {p1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 138
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->I:Z

    .line 157
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->I:Z

    return v0
.end method

.method public final a(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 168
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    if-nez v3, :cond_0

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    .line 173
    :goto_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 174
    .local v2, iSize:I
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 197
    :goto_1
    return-void

    .line 171
    .end local v2           #iSize:I
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 177
    .restart local v2       #iSize:I
    :cond_1
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 181
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 182
    if-eqz v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 189
    :cond_3
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d()[F

    move-result-object v0

    .line 190
    .local v0, fPtArrs:[F
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->f:Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 193
    :cond_4
    invoke-static {v0}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->f:Ljava/nio/FloatBuffer;

    .line 195
    invoke-static {v0}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a:Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->c:Ljava/util/List;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->d:Ljava/util/List;

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    if-eqz v0, :cond_2

    .line 344
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->f:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 348
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->f:Ljava/nio/FloatBuffer;

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    .line 351
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 352
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a:Ljava/nio/FloatBuffer;

    .line 354
    :cond_4
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 355
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->p()V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->g:Z

    .line 324
    return-void
.end method

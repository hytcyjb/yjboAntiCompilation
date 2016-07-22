.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fs;
.super Ljava/lang/Object;
.source "LogoMarker.java"


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

.field private C:Z

.field private final D:[B

.field public a:I

.field public b:I

.field private c:I

.field private d:I

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private final o:F

.field private final p:F

.field private final q:F

.field private final r:F

.field private final s:F

.field private final t:F

.field private u:F

.field private v:F

.field private w:F

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    .line 22
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    .line 23
    const-string v0, "logo.png"

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->e:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    .line 28
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    .line 30
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->h:I

    .line 31
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->i:I

    .line 33
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    .line 34
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->n:I

    .line 36
    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a:I

    .line 37
    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->b:I

    .line 39
    const v0, 0x3ca3d70a

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->o:F

    .line 40
    const v0, 0x3cb43958

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->p:F

    .line 41
    const v0, 0x3c978d50

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->q:F

    .line 43
    const v0, 0x3f2ae148

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->r:F

    .line 44
    const v0, 0x3f2c49ba

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->s:F

    .line 45
    const v0, 0x3f2f6fd2

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->t:F

    .line 52
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->u:F

    .line 53
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->v:F

    .line 54
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->w:F

    .line 56
    const v0, 0x3c449ba6

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->x:F

    .line 57
    const v0, 0x3c4ccccd

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->y:F

    .line 58
    const v0, 0x3c2a64c3

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->z:F

    .line 62
    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    .line 63
    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    .line 65
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->C:Z

    .line 66
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->D:[B

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 297
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->n:I

    .line 298
    return-void
.end method

.method public final a(IFLandroid/content/Context;)V
    .locals 2
    .parameter "iType"
    .parameter "fRate"
    .parameter "mcontex"

    .prologue
    const/4 v1, 0x1

    .line 69
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 70
    const/4 p2, 0x0

    .line 72
    :cond_0
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 73
    const/high16 p2, 0x3f80

    .line 75
    :cond_1
    if-nez p1, :cond_3

    .line 76
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->u:F

    .line 82
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->C:Z

    .line 83
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    invoke-virtual {p0, v0, v1, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a(IILandroid/content/Context;)V

    .line 84
    return-void

    .line 77
    :cond_3
    if-ne p1, v1, :cond_4

    .line 78
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->v:F

    goto :goto_0

    .line 79
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 80
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->w:F

    goto :goto_0
.end method

.method public final a(IILandroid/content/Context;)V
    .locals 9
    .parameter "width"
    .parameter "high"
    .parameter "mContex"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x1

    .line 201
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    if-eq v5, p1, :cond_2

    .line 208
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    .line 210
    :cond_2
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    if-eq v5, p2, :cond_3

    .line 211
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    .line 214
    :cond_3
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-ne v5, v7, :cond_5

    .line 215
    :cond_4
    const-string v5, "logo.png"

    invoke-static {p3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    .line 216
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 220
    :cond_5
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 221
    .local v4, iBitmapWidth:I
    if-nez v4, :cond_6

    .line 222
    const/4 v4, 0x1

    .line 224
    :cond_6
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 225
    .local v3, iBitmapHigh:I
    if-nez v3, :cond_7

    .line 226
    const/4 v3, 0x1

    .line 238
    :cond_7
    const v1, 0x3ca3d70a

    .line 239
    .local v1, fLeftRate:F
    const v2, 0x3f2ae148

    .line 240
    .local v2, fRightRate:F
    const v0, 0x3c449ba6

    .line 242
    .local v0, fBottomRate:F
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    const/16 v6, 0x438

    if-lt v5, v6, :cond_10

    .line 243
    const v1, 0x3c978d50

    .line 244
    const v2, 0x3f2f6fd2

    .line 245
    const v0, 0x3c2a64c3

    .line 252
    :cond_8
    :goto_1
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->u:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_9

    .line 253
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->u:F

    .line 255
    :cond_9
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->v:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_a

    .line 256
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->v:F

    .line 258
    :cond_a
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->w:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_b

    .line 259
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->w:F

    .line 262
    :cond_b
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    .line 263
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    .line 265
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    .line 266
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    mul-int/2addr v5, v3

    div-int/2addr v5, v4

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    .line 268
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    if-nez v5, :cond_c

    .line 269
    iput v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    .line 271
    :cond_c
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    if-nez v5, :cond_d

    .line 272
    iput v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    .line 275
    :cond_d
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    .line 276
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    .line 279
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a:I

    .line 280
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->b:I

    .line 282
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->h:I

    if-ltz v5, :cond_e

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->h:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    if-ge v5, v6, :cond_e

    .line 283
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->h:I

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    .line 284
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    .line 286
    :cond_e
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->i:I

    if-ltz v5, :cond_f

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->i:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    if-ge v5, v6, :cond_f

    .line 287
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->i:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    .line 288
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    .line 291
    :cond_f
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->D:[B

    monitor-enter v6

    .line 292
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->C:Z

    .line 293
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 246
    :cond_10
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    const/16 v6, 0x2d0

    if-lt v5, v6, :cond_8

    .line 247
    const v1, 0x3cb43958

    .line 248
    const v2, 0x3f2c49ba

    .line 249
    const v0, 0x3c4ccccd

    goto/16 :goto_1
.end method

.method public final a(ILandroid/content/Context;)V
    .locals 2
    .parameter "ileftPixels"
    .parameter "mcontex"

    .prologue
    .line 191
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->h:I

    .line 192
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a(IILandroid/content/Context;)V

    .line 193
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 10
    .parameter "gl"
    .parameter "mapview"

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 87
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->C:Z

    if-ne v1, v2, :cond_5

    .line 92
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->C:Z

    if-ne v1, v2, :cond_3

    .line 93
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->D:[B

    monitor-enter v3

    .line 94
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->C:Z

    .line 95
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_3
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-ne v4, v2, :cond_6

    .line 100
    .local v0, mapTip:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    .line 104
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 107
    .end local v0           #mapTip:Landroid/graphics/Bitmap;
    :cond_5
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 109
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g()F

    move-result v3

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->n:I

    if-gtz v1, :cond_9

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    :goto_3
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->f:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->g:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int v1, v4, v1

    int-to-float v2, v2

    int-to-float v1, v1

    neg-float v3, v3

    invoke-interface {p1, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 110
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->b(Ljavax/microedition/khronos/opengles/GL10;)Z

    .line 111
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 98
    :cond_6
    if-eqz v6, :cond_4

    if-gtz v3, :cond_c

    move v4, v2

    :goto_4
    if-gtz v1, :cond_7

    move v1, v2

    :cond_7
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v8, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9, v9, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v3

    goto/16 :goto_1

    .line 104
    .restart local v0       #mapTip:Landroid/graphics/Bitmap;
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 109
    .end local v0           #mapTip:Landroid/graphics/Bitmap;
    :cond_9
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->n:I

    if-gt v1, v2, :cond_a

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    sub-int v2, v1, v2

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    goto/16 :goto_3

    :cond_a
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->n:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_b

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    sub-int v2, v1, v2

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    sub-int/2addr v1, v4

    goto/16 :goto_3

    :cond_b
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->j:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->m:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->l:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->k:I

    sub-int/2addr v1, v4

    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto :goto_4
.end method

.method public final b(I)F
    .locals 6
    .parameter "itype"

    .prologue
    const/4 v5, 0x1

    .line 301
    const v1, 0x3ca3d70a

    .line 302
    .local v1, fLeftRate:F
    const v2, 0x3f2ae148

    .line 303
    .local v2, fRightRate:F
    const v0, 0x3c449ba6

    .line 305
    .local v0, fBottomRate:F
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    const/16 v4, 0x438

    if-lt v3, v4, :cond_4

    .line 306
    const v1, 0x3c978d50

    .line 307
    const v2, 0x3f2f6fd2

    .line 308
    const v0, 0x3c2a64c3

    .line 315
    :cond_0
    :goto_0
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->u:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    .line 316
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->u:F

    .line 318
    :cond_1
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->v:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    .line 319
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->v:F

    .line 321
    :cond_2
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->w:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3

    .line 322
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->w:F

    .line 325
    :cond_3
    if-nez p1, :cond_5

    .line 333
    .end local v1           #fLeftRate:F
    :goto_1
    return v1

    .line 309
    .restart local v1       #fLeftRate:F
    :cond_4
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_0

    .line 310
    const v1, 0x3cb43958

    .line 311
    const v2, 0x3f2c49ba

    .line 312
    const v0, 0x3c4ccccd

    goto :goto_0

    .line 327
    :cond_5
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    move v1, v2

    .line 328
    goto :goto_1

    .line 329
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    move v1, v0

    .line 330
    goto :goto_1

    .line 333
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final b(ILandroid/content/Context;)V
    .locals 2
    .parameter "ibottomPixels"
    .parameter "mcontex"

    .prologue
    .line 196
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->i:I

    .line 197
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->c:I

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->d:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a(IILandroid/content/Context;)V

    .line 198
    return-void
.end method

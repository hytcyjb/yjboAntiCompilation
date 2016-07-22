.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dn;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
.source "GLMarkerOverlay3D.java"


# instance fields
.field public C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 1
    .parameter "glview"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->I:Z

    return v0
.end method

.method public final a(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v0

    .line 178
    .local v0, p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a(FFLcom/tencent/tencentmap/mapsdk/maps/a/bf;)Z

    move-result v1

    goto :goto_0
.end method

.method protected final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "gl"

    .prologue
    .line 20
    iget-boolean v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->I:Z

    .line 21
    if-nez v9, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    if-eqz v9, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->d()V

    .line 28
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v9, :cond_0

    .line 32
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 33
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 35
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->k()Z

    .line 37
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->m()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->o()Z

    move-result v9

    if-nez v9, :cond_7

    .line 39
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->n()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-double v9, v9

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->n()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-double v11, v11

    invoke-direct {v1, v9, v10, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 48
    .local v1, p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :goto_1
    iget-wide v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    .line 49
    .local v5, x:D
    iget-wide v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    .line 55
    .local v7, y:D
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v9, v9, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    div-int/lit8 v9, v9, 0x2

    int-to-double v9, v9

    sub-double/2addr v5, v9

    .line 56
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v9, v9, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    div-int/lit8 v9, v9, 0x2

    int-to-double v9, v9

    sub-double v7, v9, v7

    .line 59
    double-to-float v9, v5

    double-to-float v10, v7

    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g()F

    move-result v11

    neg-float v11, v11

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 62
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l()F

    move-result v9

    const/high16 v10, -0x4080

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 66
    iget v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->g:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, px:F
    const/4 v3, 0x0

    .line 69
    .local v3, py:F
    const/high16 v4, -0x4080

    .line 70
    .local v4, pz:F
    iget-boolean v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->h:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 71
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->i:F

    .line 72
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->j:F

    .line 73
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->k:F

    .line 74
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->h:Z

    .line 76
    :cond_2
    iget v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->g:F

    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->g()F

    move-result v10

    add-float/2addr v9, v10

    invoke-interface {p1, v9, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 80
    .end local v2           #px:F
    .end local v3           #py:F
    .end local v4           #pz:F
    :cond_3
    const/4 v0, 0x0

    .line 81
    .local v0, boSetAlpha:Z
    iget v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->s:F

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_4

    .line 82
    iget v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->s:F

    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->s:F

    iget v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->s:F

    iget v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->s:F

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 83
    const/4 v0, 0x1

    .line 86
    :cond_4
    iget v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->t:F

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    iget v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->u:F

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6

    .line 87
    :cond_5
    iget v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->t:F

    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->u:F

    const/high16 v11, 0x3f80

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 90
    :cond_6
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v9, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b(Ljavax/microedition/khronos/opengles/GL10;)Z

    .line 92
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 93
    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 94
    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto/16 :goto_0

    .line 41
    .end local v0           #boSetAlpha:Z
    .end local v1           #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .end local v5           #x:D
    .end local v7           #y:D
    :cond_7
    iget-boolean v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->w:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 42
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v1

    .restart local v1       #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    goto/16 :goto_1

    .line 44
    .end local v1           #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :cond_8
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-interface {v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v1

    .restart local v1       #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    goto/16 :goto_1
.end method

.method public final c(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    if-nez v0, :cond_2

    .line 100
    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->d:[B

    monitor-enter v7

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->m:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->f()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, strIconId:Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v0, v6}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v5

    .line 105
    .local v5, texName:I
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->e:F

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->f:F

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFI)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    .line 108
    if-nez v5, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->d()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->n:I

    .line 115
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->o:I

    .line 117
    .end local v5           #texName:I
    .end local v6           #strIconId:Ljava/lang/String;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->e:F

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->f:F

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a(FF)V

    .line 121
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->d:[B

    monitor-enter v1

    .line 122
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->c:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->c:Z

    .line 125
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->m:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->f()Ljava/lang/String;

    move-result-object v6

    .line 127
    .restart local v6       #strIconId:Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v0, v6}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v5

    .line 129
    .restart local v5       #texName:I
    if-nez v5, :cond_3

    .line 130
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->d()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->n:I

    .line 140
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->o:I

    .line 141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 143
    .end local v5           #texName:I
    .end local v6           #strIconId:Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 136
    .restart local v5       #texName:I
    .restart local v6       #strIconId:Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a(I)V

    .line 137
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 143
    .end local v5           #texName:I
    .end local v6           #strIconId:Ljava/lang/String;
    :cond_4
    monitor-exit v1

    .line 145
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->f()Ljava/lang/String;

    move-result-object v6

    .line 146
    .restart local v6       #strIconId:Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v0, v6}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v5

    .line 147
    .restart local v5       #texName:I
    if-nez v5, :cond_5

    .line 148
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 151
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->d()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->n:I

    .line 154
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->o:I

    goto/16 :goto_0

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a(I)V

    goto/16 :goto_0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->c()F

    move-result v0

    return v0
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e()F

    move-result v0

    return v0
.end method

.method public final i()F
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dn;->C:Lcom/tencent/tencentmap/mapsdk/maps/a/ek;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->f()F

    move-result v0

    return v0
.end method

.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dk;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/dm;
.source "GLMarkerInfoWindowOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;
    }
.end annotation


# instance fields
.field private C:F

.field private J:F

.field private K:F

.field private L:Landroid/graphics/Bitmap;

.field private M:Z

.field private N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:I

.field private T:I

.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 3
    .parameter "glview"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    .line 19
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->C:F

    .line 20
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->J:F

    .line 21
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->K:F

    .line 23
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a:I

    .line 24
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->L:Landroid/graphics/Bitmap;

    .line 27
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->M:Z

    .line 33
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    .line 35
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->O:Z

    .line 36
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->P:Z

    .line 37
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->Q:Z

    .line 42
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->R:Z

    .line 43
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->S:I

    .line 44
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->T:I

    .line 50
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->v:Z

    .line 57
    return-void
.end method


# virtual methods
.method public final a(FFF)V
    .locals 0
    .parameter "fLeft"
    .parameter "fRight"
    .parameter "fTop"

    .prologue
    .line 173
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->C:F

    .line 174
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->J:F

    .line 175
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->K:F

    .line 176
    return-void
.end method

.method public final a(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 453
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->S:I

    .line 454
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->T:I

    .line 455
    return-void
.end method

.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bmp"

    .prologue
    .line 268
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->f:[B

    monitor-enter v3

    .line 269
    :try_start_0
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 272
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    const-string v4, "android.graphics.Bitmap"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 277
    .local v1, ibmpwidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 278
    .local v0, ibmphigh:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    .line 283
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0           #ibmphigh:I
    .end local v1           #ibmpwidth:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 0
    .parameter "geoNext"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 303
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x3f80

    .line 420
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a()Z

    move-result v0

    .line 421
    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->f:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v3, v0}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    invoke-direct {v4, p1, v5, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->d()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->n:I

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->o:I

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->f()V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->k()Z

    move-result v3

    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->R:Z

    if-ne v0, v9, :cond_d

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->S:I

    int-to-double v4, v1

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->T:I

    int-to-double v6, v1

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    :goto_2
    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->J:F

    iget v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->C:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v4, v6

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->K:F

    float-to-double v6, v6

    sub-double/2addr v0, v6

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v6, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    sub-double/2addr v4, v6

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v6, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    sub-double v0, v6, v0

    double-to-float v4, v4

    double-to-float v0, v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g()F

    move-result v1

    neg-float v1, v1

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->g:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    const/high16 v0, -0x4080

    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->h:Z

    if-ne v1, v9, :cond_e

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->i:F

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->j:F

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->k:F

    iput-boolean v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->h:Z

    :goto_3
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->g:F

    invoke-interface {p1, v4, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_4
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->s:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->s:F

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->s:F

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->s:F

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->s:F

    invoke-interface {p1, v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    :cond_5
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->t:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_6

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->u:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->t:F

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->u:F

    invoke-interface {p1, v0, v1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b(Ljavax/microedition/khronos/opengles/GL10;)Z

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    if-ne v3, v9, :cond_0

    invoke-interface {p1, v8, v8, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto/16 :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->f:[B

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->e:Z

    if-ne v0, v9, :cond_a

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->e:Z

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v3, v0}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->d()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    :goto_4
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->n:I

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->o:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :cond_a
    monitor-exit v1

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->M:Z

    if-ne v3, v9, :cond_b

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->L:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_press"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->L:Landroid/graphics/Bitmap;

    :cond_b
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v3, v1}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v3, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->d()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->n:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->o:I

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a(I)V

    goto/16 :goto_1

    .line 425
    :cond_d
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    move v1, v2

    goto/16 :goto_3
.end method

.method public final a(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 135
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    if-nez v4, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->R:Z

    if-ne v4, v9, :cond_1

    .line 145
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->S:I

    int-to-double v4, v4

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->T:I

    int-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 154
    .local v3, p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :goto_1
    iget-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->J:F

    iget v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->C:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    .line 155
    iget-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->K:F

    float-to-double v6, v6

    sub-double/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    .line 157
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v4, p1, p2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a(FFLcom/tencent/tencentmap/mapsdk/maps/a/bf;)Z

    move-result v0

    .line 158
    .local v0, boHit:Z
    if-ne v0, v9, :cond_2

    .line 159
    iget-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    double-to-int v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->n:I

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 160
    .local v1, iLeftX:I
    iget-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    double-to-int v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->o:I

    sub-int v2, v4, v5

    .line 162
    .local v2, iLeftY:I
    float-to-int v4, p1

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a:I

    .line 163
    float-to-int v4, p2

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b:I

    goto :goto_0

    .line 147
    .end local v0           #boHit:Z
    .end local v1           #iLeftX:I
    .end local v2           #iLeftY:I
    .end local v3           #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :cond_1
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-interface {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v3

    .restart local v3       #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    goto :goto_1

    .line 165
    .restart local v0       #boHit:Z
    :cond_2
    iput v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a:I

    .line 166
    iput v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b:I

    goto :goto_0
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 287
    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(Landroid/graphics/Bitmap;)V

    .line 296
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->O:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->g()V

    goto :goto_0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 3
    .parameter "geo"

    .prologue
    .line 306
    if-nez p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v0, :cond_2

    .line 317
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 325
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->O:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->h()V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 321
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 0
    .parameter "boShould"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->P:Z

    .line 180
    return-void
.end method

.method public final c(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->L:Landroid/graphics/Bitmap;

    .line 341
    return-void
.end method

.method public final declared-synchronized c(Z)V
    .locals 2
    .parameter "boFirst"

    .prologue
    const/4 v1, 0x1

    .line 183
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->P:Z

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->g()V

    .line 185
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->h()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->O:Z

    .line 187
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :cond_1
    if-ne p1, v1, :cond_2

    .line 191
    :try_start_1
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    .line 193
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->Q:Z

    if-nez v0, :cond_3

    .line 194
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    .line 199
    :cond_3
    if-ne p1, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->b()V

    .line 202
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;->onAnimationEnd()V

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    .line 212
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    if-ne v0, v1, :cond_5

    .line 213
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    .line 214
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V

    .line 216
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->j()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 220
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    if-ne v0, v1, :cond_7

    .line 221
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    .line 222
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v0, :cond_6

    .line 223
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V

    .line 224
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->j()Z

    goto :goto_0

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->g()V

    .line 228
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->h()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->O:Z

    .line 230
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    if-ne v0, v1, :cond_0

    .line 234
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    .line 235
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V

    .line 237
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->j()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    if-ne v0, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->g()V

    .line 247
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->h()V

    .line 248
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/dk$a;

    if-eq v0, v1, :cond_1

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c(Z)V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->O:Z

    .line 255
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 0
    .parameter "boShow"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->Q:Z

    .line 261
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    if-eqz v0, :cond_0

    .line 332
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 335
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->d:Landroid/graphics/Bitmap;

    .line 337
    :cond_1
    return-void
.end method

.method public final e(Z)V
    .locals 0
    .parameter "boShould"

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->O:Z

    .line 265
    return-void
.end method

.method public final f(Z)Z
    .locals 4
    .parameter "press"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 409
    iget-boolean v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->M:Z

    if-ne v3, p1, :cond_1

    move v0, v1

    .line 410
    .local v0, boUpdate:Z
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->M:Z

    .line 411
    iget-boolean v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->M:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->O:Z

    if-nez v3, :cond_0

    .line 412
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->M:Z

    .line 414
    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    .end local v0           #boUpdate:Z
    :cond_1
    move v0, v2

    .line 409
    goto :goto_0

    .restart local v0       #boUpdate:Z
    :cond_2
    move v1, v2

    .line 414
    goto :goto_1
.end method

.method public final g(Z)V
    .locals 0
    .parameter "boFix"

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->R:Z

    .line 450
    return-void
.end method

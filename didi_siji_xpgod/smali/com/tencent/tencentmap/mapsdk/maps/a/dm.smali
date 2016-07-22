.class public Lcom/tencent/tencentmap/mapsdk/maps/a/dm;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/do;
.source "GLMarkerOverlay3.java"


# instance fields
.field protected A:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

.field protected B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

.field private C:Ljava/lang/Runnable;

.field private J:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

.field private K:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

.field private a:Z

.field private b:Ljava/lang/Runnable;

.field protected c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

.field protected d:Landroid/graphics/Bitmap;

.field e:Z

.field protected f:[B

.field protected g:F

.field protected h:Z

.field protected i:F

.field protected j:F

.field protected k:F

.field protected l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field public n:I

.field public o:I

.field protected p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field protected q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field protected r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field protected s:F

.field protected t:F

.field protected u:F

.field public v:Z

.field public w:Z

.field public x:Z

.field protected y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field public z:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 5
    .parameter "glview"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    .line 29
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->d:Landroid/graphics/Bitmap;

    .line 30
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->e:Z

    .line 31
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->f:[B

    .line 36
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g:F

    .line 38
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->h:Z

    .line 39
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->i:F

    .line 40
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->j:F

    .line 41
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->k:F

    .line 43
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->m:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->n:I

    .line 48
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->o:I

    .line 50
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->a:Z

    .line 51
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 52
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 55
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 58
    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->s:F

    .line 60
    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->t:F

    .line 61
    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->u:F

    .line 63
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->v:Z

    .line 65
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->w:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->x:Z

    .line 83
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 85
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->z:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 87
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    .line 88
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 89
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->b:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$2;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->C:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->J:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    .line 132
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$4;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->K:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    .line 175
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->C:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->b:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bmp"

    .prologue
    .line 287
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->f:[B

    monitor-enter v3

    .line 288
    :try_start_0
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->d:Landroid/graphics/Bitmap;

    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 291
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    const-string v4, "android.graphics.Bitmap"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 296
    .local v1, ibmpwidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 297
    .local v0, ibmphigh:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

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

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->l:Ljava/lang/String;

    .line 303
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

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 575
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 576
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->J:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;)V

    .line 578
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->K:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;)V

    .line 589
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 622
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    .line 623
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 496
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->I:Z

    .line 542
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->I:Z

    return v0
.end method

.method public a(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->x:Z

    if-nez v2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v1

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    if-eqz v2, :cond_0

    .line 510
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v0

    .line 511
    .local v0, p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a(FFLcom/tencent/tencentmap/mapsdk/maps/a/bf;)Z

    move-result v1

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->a(Landroid/graphics/Bitmap;)V

    .line 311
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->g()V

    goto :goto_0
.end method

.method public b(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 3
    .parameter "geo"

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 232
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->h()V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 228
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 564
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 565
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/dr;

    .line 566
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 246
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->a:Z

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 250
    :cond_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 243
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->f:[B

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->e:Z

    .line 319
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->a:Z

    .line 328
    :cond_0
    return-void
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->m:Ljava/lang/String;

    .line 480
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLMarkerOverlay-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()Z
    .locals 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    .line 601
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 606
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->d()V

    .line 608
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->B:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c()Z

    move-result v1

    .line 609
    if-ne v1, v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 614
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

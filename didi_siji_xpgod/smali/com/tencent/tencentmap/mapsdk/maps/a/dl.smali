.class public Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/do;
.source "GLMarkerOverlay.java"


# instance fields
.field protected A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field public B:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

.field private C:Z

.field private J:Z

.field private K:I

.field private L:I

.field private M:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private N:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

.field private O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

.field private P:Ljava/lang/Runnable;

.field private Q:Ljava/lang/Runnable;

.field private R:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

.field private S:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

.field public a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

.field protected b:Landroid/graphics/Bitmap;

.field c:Z

.field protected d:[B

.field e:F

.field f:F

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

.field public y:Z

.field protected z:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 6
    .parameter "glview"

    .prologue
    const/high16 v5, 0x3f00

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    .line 27
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    .line 28
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->c:Z

    .line 29
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->d:[B

    .line 31
    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e:F

    .line 32
    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->f:F

    .line 34
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g:F

    .line 35
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->h:Z

    .line 36
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->i:F

    .line 37
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->j:F

    .line 38
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->k:F

    .line 40
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->m:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->n:I

    .line 45
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->o:I

    .line 47
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->C:Z

    .line 48
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 49
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 52
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 56
    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    .line 58
    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->t:F

    .line 59
    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->u:F

    .line 61
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->v:Z

    .line 66
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->w:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->x:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->y:Z

    .line 78
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->J:Z

    .line 79
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->K:I

    .line 80
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->L:I

    .line 84
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->z:Z

    .line 85
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->M:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 101
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 103
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->B:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 105
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->N:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    .line 106
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 107
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->P:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$2;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->Q:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->R:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    .line 144
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$4;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->S:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    .line 191
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->N:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->M:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->Q:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->P:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->M:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->K:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->L:I

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 0
    .parameter "fAngle"

    .prologue
    .line 278
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g:F

    .line 279
    return-void
.end method

.method public final a(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 673
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->K:I

    .line 674
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->L:I

    .line 675
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V
    .locals 3
    .parameter "geo"

    .prologue
    .line 230
    if-nez p1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v0, :cond_2

    .line 241
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 249
    :goto_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->C:Z

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 245
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    goto :goto_1
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw;)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 592
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->R:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;)V

    .line 594
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->S:Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dw$b;)V

    .line 604
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->N:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    .line 646
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V
    .locals 7
    .parameter "iconDesc"

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;->getFormater()Lcom/tencent/tencentmap/mapsdk/maps/a/fa;

    move-result-object v0

    .line 218
    .local v0, bmpFormat:Lcom/tencent/tencentmap/mapsdk/maps/a/fa;
    if-eqz v0, :cond_3

    .line 219
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 220
    .local v1, bmpMarker:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->d:[B

    monitor-enter v3

    :try_start_0
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    const-string v4, "android.graphics.Bitmap"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->d:[B

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->c:Z

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->b()I

    move-result v2

    .line 222
    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    .line 223
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fa;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->d:[B

    monitor-enter v3

    :try_start_2
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 227
    .end local v1           #bmpMarker:Landroid/graphics/Bitmap;
    :cond_3
    return-void

    .line 220
    .restart local v1       #bmpMarker:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 223
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V
    .locals 3
    .parameter "markOpts"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 200
    .local v0, geoPostion:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    .line 201
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b(FF)V

    .line 207
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->isVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->I:Z

    .line 209
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getRotateAngle()F

    move-result v1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g:F

    .line 211
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getIcon()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    .line 212
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    .line 213
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->getZIndex()F

    move-result v1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->H:F

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a()Z

    move-result v0

    .line 501
    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 505
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->I:Z

    .line 558
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->I:Z

    return v0
.end method

.method public a(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->y:Z

    if-nez v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v1

    .line 517
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    if-eqz v2, :cond_0

    .line 520
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->J:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 522
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->K:I

    int-to-double v1, v1

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->L:I

    int-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 527
    .local v0, p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :goto_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a(FFLcom/tencent/tencentmap/mapsdk/maps/a/bf;)Z

    move-result v1

    goto :goto_0

    .line 524
    .end local v0           #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v0

    .restart local v0       #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public final b(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 653
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    .line 654
    return-void
.end method

.method public final b(FF)V
    .locals 3
    .parameter "fU"
    .parameter "fV"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 282
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 283
    const/high16 p1, 0x3f80

    .line 287
    :cond_0
    :goto_0
    cmpl-float v0, p2, v2

    if-lez v0, :cond_3

    .line 288
    const/high16 p2, 0x3f80

    .line 293
    :cond_1
    :goto_1
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e:F

    .line 294
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->f:F

    .line 295
    return-void

    .line 284
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 285
    const/4 p1, 0x0

    goto :goto_0

    .line 289
    :cond_3
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 290
    const/4 p2, 0x0

    goto :goto_1
.end method

.method protected b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    .line 363
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    if-nez v10, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->d()V

    .line 367
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v10, :cond_0

    .line 371
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 372
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 374
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->k()Z

    move-result v0

    .line 377
    .local v0, boAnimate:Z
    iget-boolean v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->J:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    iget-boolean v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->z:Z

    if-nez v10, :cond_8

    .line 378
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->K:I

    int-to-double v10, v10

    iget v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->L:I

    int-to-double v12, v12

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 387
    .local v2, p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :goto_1
    iget-wide v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    .line 388
    .local v6, x:D
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v10, v10, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    int-to-double v10, v10

    iget-wide v12, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    sub-double v8, v10, v12

    .line 390
    .local v8, y:D
    double-to-float v10, v6

    double-to-float v11, v8

    const/4 v12, 0x0

    invoke-interface {p1, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 392
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_3

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, px:F
    const/4 v4, 0x0

    .line 395
    .local v4, py:F
    const/high16 v5, -0x4080

    .line 396
    .local v5, pz:F
    iget-boolean v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->h:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 397
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->i:F

    .line 398
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->j:F

    .line 399
    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->k:F

    .line 400
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->h:Z

    .line 402
    :cond_2
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g:F

    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->g()F

    move-result v11

    add-float/2addr v10, v11

    invoke-interface {p1, v10, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 405
    .end local v3           #px:F
    .end local v4           #py:F
    .end local v5           #pz:F
    :cond_3
    const/4 v1, 0x0

    .line 406
    .local v1, boSetAlpha:Z
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_4

    .line 407
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    iget v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    iget v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    iget v13, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->s:F

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 408
    const/4 v1, 0x1

    .line 411
    :cond_4
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->t:F

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-nez v10, :cond_5

    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->u:F

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_6

    .line 412
    :cond_5
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->t:F

    iget v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->u:F

    const/high16 v12, 0x3f80

    invoke-interface {p1, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 415
    :cond_6
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v10, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->b(Ljavax/microedition/khronos/opengles/GL10;)Z

    .line 416
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 418
    const/4 v10, 0x1

    if-eq v1, v10, :cond_7

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    .line 419
    :cond_7
    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto/16 :goto_0

    .line 380
    .end local v1           #boSetAlpha:Z
    .end local v2           #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .end local v6           #x:D
    .end local v8           #y:D
    :cond_8
    iget-boolean v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->w:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 381
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v2

    .restart local v2       #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    goto/16 :goto_1

    .line 383
    .end local v2           #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :cond_9
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-interface {v10, v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v2

    .restart local v2       #p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    goto/16 :goto_1
.end method

.method public final b(Z)V
    .locals 0
    .parameter "boFix"

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->J:Z

    .line 670
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 580
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 581
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    .line 582
    return-void
.end method

.method public final c(F)V
    .locals 0
    .parameter "index"

    .prologue
    .line 661
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->H:F

    .line 662
    return-void
.end method

.method public c(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    if-nez v0, :cond_2

    .line 425
    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->d:[B

    monitor-enter v7

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->m:Ljava/lang/String;

    .line 428
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->f()Ljava/lang/String;

    move-result-object v6

    .line 429
    .local v6, strIconId:Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v0, v6}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v5

    .line 430
    .local v5, texName:I
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e:F

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->f:F

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFI)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    .line 432
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a(II)V

    .line 434
    if-nez v5, :cond_0

    .line 437
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->d()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->n:I

    .line 441
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->o:I

    .line 443
    .end local v5           #texName:I
    .end local v6           #strIconId:Ljava/lang/String;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :goto_0
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e:F

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->f:F

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a(FF)V

    .line 447
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->d:[B

    monitor-enter v1

    .line 448
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->c:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->c:Z

    .line 451
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->m:Ljava/lang/String;

    .line 452
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->f()Ljava/lang/String;

    move-result-object v6

    .line 453
    .restart local v6       #strIconId:Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v0, v6}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v5

    .line 455
    .restart local v5       #texName:I
    if-nez v5, :cond_3

    .line 456
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 459
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->d()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    .line 465
    :goto_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->n:I

    .line 466
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->o:I

    .line 467
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 469
    .end local v5           #texName:I
    .end local v6           #strIconId:Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 462
    .restart local v5       #texName:I
    .restart local v6       #strIconId:Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a(I)V

    .line 463
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 469
    .end local v5           #texName:I
    .end local v6           #strIconId:Ljava/lang/String;
    :cond_4
    monitor-exit v1

    .line 471
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->f()Ljava/lang/String;

    move-result-object v6

    .line 472
    .restart local v6       #strIconId:Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v0, v6}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;)I

    move-result v5

    .line 473
    .restart local v5       #texName:I
    if-nez v5, :cond_5

    .line 474
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 477
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->d()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/tencent/map/lib/gl/b;->a(Ljava/lang/String;I)V

    .line 479
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->n:I

    .line 480
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->o:I

    goto/16 :goto_0

    .line 482
    :cond_5
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a(I)V

    goto/16 :goto_0
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->C:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 263
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->C:Z

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 267
    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 260
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    goto :goto_0
.end method

.method public final e()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->m:Ljava/lang/String;

    .line 490
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLMarkerOverlay-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->a()F

    move-result v0

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->b()F

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ec;->c()F

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 7

    .prologue
    .line 607
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-nez v1, :cond_0

    .line 608
    const/4 v1, 0x0

    .line 617
    :goto_0
    return v1

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 612
    .local v0, fromLocation:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->J:Z

    if-eqz v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->K:I

    int-to-double v3, v3

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->L:I

    int-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 614
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->M:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Z

    move-result v1

    goto :goto_0
.end method

.method protected final k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 622
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->d()V

    .line 624
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->O:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dw;->c()Z

    move-result v1

    .line 625
    if-ne v1, v0, :cond_0

    .line 626
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 630
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()F
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g:F

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->J:Z

    return v0
.end method

.method public final n()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 682
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->K:I

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->L:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->z:Z

    return v0
.end method

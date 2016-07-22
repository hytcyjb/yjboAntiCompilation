.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/el;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ef;
.source "VectorMapView.java"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

.field public E:Lcom/tencent/map/lib/gl/b;

.field public F:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field private K:Ljava/lang/String;

.field private L:Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/fu;",
            ">;"
        }
    .end annotation
.end field

.field private final N:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

.field private O:F

.field private P:F

.field private Q:Z

.field private R:I

.field private S:I

.field private T:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

.field private U:Z

.field private V:Z

.field private W:Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

.field private final af:Lcom/tencent/tencentmap/mapsdk/maps/a/bv;

.field private ag:Ljava/lang/Runnable;

.field private ah:Z

.field private ai:Z

.field private final aj:Lcom/tencent/tencentmap/mapsdk/maps/a/ay;

.field private ak:Ljava/lang/Runnable;

.field private final al:Landroid/os/Handler;

.field private am:Landroid/os/Handler;

.field private an:Landroid/graphics/Bitmap$Config;

.field private ao:Z

.field private ap:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private final av:Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

.field private aw:Lcom/tencent/tencentmap/mapsdk/maps/a/az;

.field public e:[B

.field public f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

.field public g:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

.field public h:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

.field public i:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

.field public j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

.field public k:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/do;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;

.field public n:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

.field public o:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;

.field public p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;

.field public q:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;

.field public r:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;

.field public s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

.field public t:Landroid/os/Handler;

.field public u:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, -0x8000

    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 337
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;-><init>(Landroid/content/Context;)V

    .line 58
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    .line 63
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 68
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 74
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 79
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/dw;

    .line 84
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->k:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    .line 91
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->L:Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    .line 93
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    .line 95
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->m:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;

    .line 96
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    .line 97
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->o:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;

    .line 98
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;

    .line 99
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->q:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;

    .line 100
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->r:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;

    .line 106
    const/high16 v1, 0x42c8

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->O:F

    const/high16 v1, 0x42c8

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->P:F

    .line 110
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->Q:Z

    .line 112
    const/16 v1, 0xa

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    .line 113
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->S:I

    .line 115
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->T:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    .line 116
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    .line 118
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->U:Z

    .line 119
    iput-boolean v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->V:Z

    .line 121
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->W:Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    .line 123
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aa:Z

    .line 124
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ab:Z

    .line 125
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ac:Z

    .line 126
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ad:Z

    .line 127
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el$1;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ae:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    .line 206
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el$2;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->af:Lcom/tencent/tencentmap/mapsdk/maps/a/bv;

    .line 223
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    .line 224
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ag:Ljava/lang/Runnable;

    .line 225
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ah:Z

    .line 226
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ai:Z

    .line 227
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el$3;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aj:Lcom/tencent/tencentmap/mapsdk/maps/a/ay;

    .line 241
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ak:Ljava/lang/Runnable;

    .line 252
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->al:Landroid/os/Handler;

    .line 283
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 284
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 285
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->w:I

    .line 287
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->x:I

    .line 288
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->y:I

    .line 289
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->z:I

    .line 290
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->A:I

    .line 292
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    .line 293
    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    .line 295
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->D:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    .line 305
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->an:Landroid/graphics/Bitmap$Config;

    .line 312
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ao:Z

    .line 317
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->F:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;

    .line 319
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ap:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

    .line 321
    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aq:I

    .line 322
    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ar:I

    .line 324
    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->as:I

    .line 325
    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->at:I

    .line 328
    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->G:F

    .line 329
    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->H:F

    .line 331
    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->I:F

    .line 332
    iput v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->J:F

    .line 334
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 1254
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->av:Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 1448
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el$7;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el$7;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aw:Lcom/tencent/tencentmap/mapsdk/maps/a/az;

    .line 340
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    .line 342
    const-string v1, "compass.png"

    invoke-static {p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 343
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    .local v0, compassBmp:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    .line 345
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    .line 346
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    const-string v2, "compass"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    if-nez v1, :cond_0

    .line 350
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->av:Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    .line 353
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aw:Lcom/tencent/tencentmap/mapsdk/maps/a/az;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/az;)V

    .line 355
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ae:Lcom/tencent/tencentmap/mapsdk/maps/a/ai;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ai;)V

    .line 356
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aj:Lcom/tencent/tencentmap/mapsdk/maps/a/ay;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ay;)V

    .line 357
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 358
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ak:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    return-void
.end method

.method private a(FF)Z
    .locals 14
    .parameter "fx"
    .parameter "fy"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 868
    iget-boolean v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->Q:Z

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l()F

    move-result v11

    cmpl-float v11, v11, v12

    if-nez v11, :cond_0

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k()F

    move-result v11

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    :cond_0
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;

    move-result-object v11

    iget-object v11, v11, Lcom/tencent/tencentmap/mapsdk/maps/a/ee$a;->a:Landroid/graphics/Bitmap;

    iget v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    int-to-float v12, v12

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_2

    iget v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-float v12, v12

    cmpg-float v12, p1, v12

    if-gtz v12, :cond_2

    iget v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    iget v13, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->S:I

    add-int/2addr v12, v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-float v12, v12

    cmpg-float v12, p2, v12

    if-gtz v12, :cond_2

    iget v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    iget v13, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->S:I

    add-int/2addr v12, v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v12, v11

    int-to-float v11, v11

    cmpl-float v11, p2, v11

    if-ltz v11, :cond_2

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->n()V

    move v10, v8

    .line 869
    :goto_0
    if-ne v10, v8, :cond_3

    .line 981
    :cond_1
    :goto_1
    return v8

    :cond_2
    move v10, v9

    .line 868
    goto :goto_0

    .line 872
    :cond_3
    const/4 v1, 0x0

    .line 873
    .local v1, boOntapInfowindow:Z
    const/4 v6, 0x0

    .line 874
    .local v6, markerShowInfo:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v10

    .line 875
    :try_start_0
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 876
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v11, :cond_4

    .line 877
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    move/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(FF)Z

    move-result v1

    .line 878
    if-ne v1, v8, :cond_4

    .line 879
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v7

    .line 881
    .local v7, overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v7, :cond_4

    .line 882
    check-cast v7, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 883
    .end local v7           #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    iget-object v6, v7, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->B:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 888
    :cond_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    if-ne v1, v8, :cond_5

    .line 891
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;

    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 892
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;

    invoke-interface {v9, v6}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 893
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;

    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget v10, v10, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->n:I

    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget v11, v11, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->o:I

    iget-object v12, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget v12, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a:I

    iget-object v13, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget v13, v13, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b:I

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;->onInfoWindowClickLocation(IIII)V

    goto :goto_1

    .line 888
    :catchall_0
    move-exception v8

    monitor-exit v10

    throw v8

    .line 902
    :cond_5
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v10

    .line 904
    :try_start_1
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 905
    add-int/lit8 v3, v11, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_8

    .line 906
    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 908
    .restart local v7       #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 909
    instance-of v11, v7, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-eqz v11, :cond_7

    .line 913
    move/from16 v0, p2

    invoke-virtual {v7, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(FF)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 917
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->L:Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    if-eqz v9, :cond_6

    .line 920
    move-object v0, v7

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    move-object v5, v0

    .line 927
    .local v5, markerOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->L:Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    iget-object v11, v7, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->D:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v9, v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/fk;->a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;Z)V

    .line 930
    .end local v5           #markerOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
    :cond_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 932
    .end local v3           #i:I
    .end local v7           #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_1
    move-exception v8

    monitor-exit v10

    throw v8

    .line 905
    .restart local v3       #i:I
    .restart local v7       #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 932
    .end local v7           #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_8
    monitor-exit v10

    .line 974
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->m:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;

    if-eqz v8, :cond_9

    .line 975
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    float-to-double v10, p1

    move/from16 v0, p2

    float-to-double v12, v0

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 978
    .local v2, doublePt:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v8

    .line 979
    invoke-static {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v4

    .line 980
    .local v4, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->m:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;

    invoke-interface {v8, v4}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;->onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .end local v2           #doublePt:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .end local v4           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_9
    move v8, v9

    .line 981
    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aa:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/el;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(FF)Z

    move-result v0

    return v0
.end method

.method private b(FF)Ljava/lang/String;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1105
    const/4 v2, 0x0

    .line 1106
    .local v2, strId:Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 1108
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v3, :cond_0

    .line 1110
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v3, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(FF)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 1111
    const-string v3, ""

    monitor-exit v4

    .line 1135
    :goto_0
    return-object v3

    .line 1115
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1116
    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1117
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 1119
    .local v1, overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1120
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    if-eqz v3, :cond_2

    .line 1124
    invoke-virtual {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1128
    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->D:Ljava/lang/String;

    .line 1133
    .end local v1           #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 1135
    goto :goto_0

    .line 1116
    .restart local v1       #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1133
    .end local v0           #i:I
    .end local v1           #overlay:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 2
    .parameter "contexObj"

    .prologue
    .line 1227
    const-class v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 1231
    :goto_0
    monitor-exit v1

    return-void

    .line 1230
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ac:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/el;FF)Z
    .locals 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(FF)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->r:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->r:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;->onMapLongClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ad:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ab:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->al:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 6
    .parameter "x0"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->f()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b()I

    move-result v4

    iget-boolean v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ah:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ai:Z

    if-nez v5, :cond_3

    :cond_0
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ah:Z

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ai:Z

    move v0, v1

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ag:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    if-ne v2, v4, :cond_4

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ah:Z

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ai:Z

    move v0, v1

    goto :goto_0

    :cond_4
    if-ne v2, v3, :cond_1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ah:Z

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ai:Z

    move v0, v1

    goto :goto_0
.end method

.method static synthetic g(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/a/bp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ak:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->W:Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    return-object v0
.end method

.method public static r()V
    .locals 0

    .prologue
    .line 1159
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->requestRender()V

    .line 1236
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter "extrapadding"

    .prologue
    .line 1247
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->S:I

    .line 1248
    return-void
.end method

.method public final a(II)V
    .locals 4
    .parameter "latE6"
    .parameter "lonE6"

    .prologue
    .line 1503
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v1, :cond_2

    .line 1507
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 1508
    .local v0, geocenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 1511
    .end local v0           #geocenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 1512
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual {v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter "mapActivity"

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Landroid/content/Context;)V

    .line 365
    invoke-super {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->i()V

    .line 366
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h()Lcom/tencent/map/lib/gl/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    .line 367
    return-void
.end method

.method public final a(Landroid/os/Handler;Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "handler"
    .parameter "config"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->am:Landroid/os/Handler;

    .line 439
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->an:Landroid/graphics/Bitmap$Config;

    .line 440
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 441
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/fk;)V
    .locals 0
    .parameter "onTap"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->L:Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    .line 696
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ap:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

    .line 1252
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/fu;)V
    .locals 2
    .parameter "listner"

    .prologue
    .line 761
    if-nez p1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    if-nez v0, :cond_2

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 770
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->W:Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    .line 1240
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "run"

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ag:Ljava/lang/Runnable;

    .line 1492
    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 10
    .parameter "strSetId"
    .parameter "fNewZindex"

    .prologue
    .line 990
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v9

    .line 995
    const/4 v1, 0x0

    .line 996
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :try_start_0
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 997
    .local v5, iOverlaySize:I
    move v6, v5

    .line 998
    .local v6, iZindex:I
    const/4 v7, 0x0

    .line 999
    .local v7, strId:Ljava/lang/String;
    const/4 v4, -0x1

    .line 1000
    .local v4, iLocateIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 1001
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-object v1, v0

    .line 1002
    if-eqz v1, :cond_3

    .line 1003
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->q()F

    move-result v8

    cmpl-float v8, v8, p2

    if-lez v8, :cond_2

    .line 1006
    move v6, v3

    .line 1009
    :cond_2
    iget-object v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->D:Ljava/lang/String;

    .line 1010
    if-eqz v7, :cond_3

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1012
    move v4, v3

    .line 1000
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1016
    :cond_4
    const/4 v8, -0x1

    if-eq v4, v8, :cond_5

    if-ne v4, v6, :cond_6

    .line 1017
    :cond_5
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1027
    .end local v3           #i:I
    .end local v4           #iLocateIndex:I
    .end local v5           #iOverlaySize:I
    .end local v6           #iZindex:I
    .end local v7           #strId:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 1019
    .restart local v3       #i:I
    .restart local v4       #iLocateIndex:I
    .restart local v5       #iOverlaySize:I
    .restart local v6       #iZindex:I
    .restart local v7       #strId:Ljava/lang/String;
    :cond_6
    if-lt v6, v4, :cond_7

    .line 1020
    add-int/lit8 v6, v6, -0x1

    .line 1022
    :cond_7
    :try_start_1
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 1023
    .local v2, glOverlayMove:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v2, :cond_8

    .line 1024
    monitor-exit v9

    goto :goto_0

    .line 1026
    :cond_8
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1027
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .parameter "strId"
    .parameter "boLock"

    .prologue
    .line 567
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 568
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v1

    .line 569
    :try_start_0
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->e()V

    .line 576
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_1
    :goto_0
    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 578
    :cond_2
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->e()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter "boFlag"

    .prologue
    .line 1055
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aa:Z

    .line 1056
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/do;)Z
    .locals 12
    .parameter "overlayAdd"

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    const/4 v9, 0x0

    .line 660
    :goto_0
    return v9

    .line 619
    :cond_0
    const/4 v4, 0x0

    .line 620
    .local v4, iCurId:I
    const/4 v5, 0x0

    .line 621
    .local v5, iMaxId:I
    const/4 v8, 0x0

    .line 622
    .local v8, strId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 625
    .local v7, locateIndex:I
    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v10

    .line 626
    const/4 v2, 0x0

    .line 627
    .local v2, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :try_start_0
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 628
    .local v6, iOverlaySize:I
    move v7, v6

    .line 629
    const/4 v1, 0x0

    .line 630
    .local v1, boHasLocate:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 631
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-object v2, v0

    .line 632
    if-eqz v2, :cond_2

    .line 633
    iget-object v8, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->D:Ljava/lang/String;

    .line 636
    if-eqz v8, :cond_2

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 637
    if-nez v1, :cond_1

    .line 640
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->q()F

    move-result v9

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->q()F

    move-result v11

    cmpl-float v9, v9, v11

    if-ltz v9, :cond_1

    .line 641
    move v7, v3

    .line 642
    const/4 v1, 0x1

    .line 646
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 647
    if-le v4, v5, :cond_2

    .line 648
    move v5, v4

    .line 630
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 652
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 655
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->D:Ljava/lang/String;

    .line 657
    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 658
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    const/4 v9, 0x1

    goto :goto_0

    .line 658
    .end local v1           #boHasLocate:Z
    .end local v3           #i:I
    .end local v6           #iOverlaySize:I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6
    .parameter "strIdDelete"

    .prologue
    .line 664
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    :cond_0
    const/4 v0, 0x0

    .line 687
    :goto_0
    return v0

    .line 667
    :cond_1
    const/4 v0, 0x0

    .line 668
    .local v0, boDeleteResult:Z
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v5

    .line 669
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 670
    .local v3, iSize:I
    const/4 v1, 0x0

    .line 672
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 673
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 674
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v1, :cond_3

    .line 675
    iget-object v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->D:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 678
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 679
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 680
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->c()V

    .line 685
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    .end local v2           #i:I
    .end local v3           #iSize:I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 672
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    .restart local v2       #i:I
    .restart local v3       #iSize:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    .locals 5
    .parameter "strId"

    .prologue
    .line 1032
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v3, :cond_1

    .line 1034
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->D:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1035
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    .line 1051
    :cond_0
    return-object v2

    .line 1039
    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1040
    .local v1, iSize:I
    const/4 v2, 0x0

    .line 1041
    .local v2, overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1042
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 1043
    .restart local v2       #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v2, :cond_2

    .line 1044
    iget-object v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->D:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1047
    const/4 v2, 0x0

    .line 1041
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1546
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aq:I

    .line 1547
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ar:I

    .line 1548
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter "boFlag"

    .prologue
    .line 1059
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ab:Z

    .line 1060
    return-void
.end method

.method public final c(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1551
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->as:I

    .line 1552
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->at:I

    .line 1553
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .parameter "boFlag"

    .prologue
    .line 1063
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ac:Z

    .line 1064
    return-void
.end method

.method public final d(Z)V
    .locals 0
    .parameter "boFlag"

    .prologue
    .line 1067
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ad:Z

    .line 1068
    return-void
.end method

.method public final e(Z)V
    .locals 1
    .parameter "boEnable"

    .prologue
    .line 1071
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->Q:Z

    .line 1072
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 1073
    return-void
.end method

.method public final f(Z)V
    .locals 2
    .parameter "boNull"

    .prologue
    .line 1147
    if-nez p1, :cond_0

    .line 1150
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->af:Lcom/tencent/tencentmap/mapsdk/maps/a/bv;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bv;)V

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bv;)V

    goto :goto_0
.end method

.method public final g(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1219
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->U:Z

    .line 1220
    return-void
.end method

.method public final h(Z)V
    .locals 0
    .parameter "boVisible"

    .prologue
    .line 1243
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->V:Z

    .line 1244
    return-void
.end method

.method public final j()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 589
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 592
    :cond_0
    monitor-exit v2

    .line 600
    :goto_0
    return-object v1

    .line 595
    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 596
    .local v0, overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_2

    .line 597
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 601
    .end local v0           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 599
    .restart local v0       #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_2
    :try_start_1
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 600
    .end local v0           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/tencent/tencentmap/mapsdk/maps/a/fk;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->L:Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->Q:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aa:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ab:Z

    return v0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "gl"

    .prologue
    const/16 v12, 0x303

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const/4 v2, 0x0

    .line 382
    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 385
    invoke-interface {p1, v10, v12}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 387
    invoke-interface {p1, v9, v9, v9, v9}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 389
    const/16 v1, 0x302

    invoke-interface {p1, v1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 390
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v5

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->D:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->K:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a()Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->V:Z

    if-eqz v7, :cond_1

    :cond_0
    move-object v3, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    :cond_3
    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_4
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    move-object v0, v3

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    move-object v1, v0

    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ec;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->g()F

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->h()F

    move-result v6

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->i()F

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(FFF)V

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->m()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->o()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->n()Landroid/graphics/Point;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(II)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->g(Z)V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-interface {p1, v9, v9, v9, v9}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-interface {p1, v10, v12}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->Q:Z

    if-ne v1, v10, :cond_9

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k()F

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l()F

    move-result v3

    cmpl-float v3, v3, v11

    if-nez v3, :cond_7

    cmpl-float v3, v1, v11

    if-eqz v3, :cond_8

    :cond_7
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->S:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->O:F

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->R:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->S:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->P:F

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->O:F

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->P:F

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g()F

    move-result v5

    neg-float v5, v5

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v3, -0x4080

    invoke-interface {p1, v1, v11, v11, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->N:Lcom/tencent/tencentmap/mapsdk/maps/a/ee;

    invoke-virtual {v1, p1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ee;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/a/ed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->b(Ljavax/microedition/khronos/opengles/GL10;)Z

    :cond_8
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_9
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->U:Z

    if-ne v1, v10, :cond_a

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    invoke-virtual {v1, p1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    :cond_a
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 392
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v1, p1}, Lcom/tencent/map/lib/gl/b;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 394
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->am:Landroid/os/Handler;

    if-eqz v1, :cond_e

    .line 395
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    mul-int v1, v4, v5

    new-array v9, v1, [I

    mul-int v1, v4, v5

    new-array v10, v1, [I

    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_d

    move v1, v2

    :goto_4
    if-ge v1, v4, :cond_c

    mul-int v6, v3, v4

    add-int/2addr v6, v1

    aget v6, v9, v6

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v8, v6, 0x10

    const/high16 v11, 0xff

    and-int/2addr v8, v11

    sub-int v11, v5, v3

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v4

    add-int/2addr v11, v1

    const v12, -0xff0100

    and-int/2addr v6, v12

    or-int/2addr v6, v8

    or-int/2addr v6, v7

    aput v6, v10, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 390
    :cond_b
    :try_start_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->g(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 395
    :cond_c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->an:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->am:Landroid/os/Handler;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->am:Landroid/os/Handler;

    invoke-virtual {v4, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->am:Landroid/os/Handler;

    .line 398
    :cond_e
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ao:Z

    if-eqz v1, :cond_f

    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ao:Z

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->requestRender()V

    .line 399
    :cond_f
    return-void
.end method

.method public final onPause()V
    .locals 0

    .prologue
    .line 1163
    invoke-super {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->onPause()V

    .line 1164
    return-void
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 1168
    invoke-super {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->onResume()V

    .line 1169
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 729
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->onSizeChanged(IIII)V

    .line 731
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fu;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fu;->a(II)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a(IILandroid/content/Context;)V

    .line 733
    :cond_4
    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 403
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 405
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    .line 406
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    .line 411
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->G:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 412
    .local v0, ix:I
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->H:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 413
    .local v2, iy:I
    invoke-virtual {p0, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(II)V

    .line 415
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->I:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 416
    .local v1, ix2D:I
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->J:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 417
    .local v3, iy2D:I
    invoke-virtual {p0, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c(II)V

    .line 419
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ap:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

    if-eqz v4, :cond_0

    .line 420
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ap:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

    invoke-interface {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;->a()V

    .line 422
    :cond_0
    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 371
    invoke-super {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 372
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->E:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v0}, Lcom/tencent/map/lib/gl/b;->a()V

    .line 373
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;->a(Landroid/view/MotionEvent;)V

    .line 1143
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ef;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ac:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 1092
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ad:Z

    return v0
.end method

.method public final s()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1177
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1182
    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->M:Ljava/util/List;

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->c()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1189
    :cond_3
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->L:Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    if-eqz v0, :cond_4

    .line 1190
    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->L:Lcom/tencent/tencentmap/mapsdk/maps/a/fk;

    .line 1201
    :cond_4
    return-void
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ah:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 1499
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ai:Z

    return v0
.end method

.method public final v()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 5

    .prologue
    const/high16 v2, -0x8000

    .line 1516
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v1, :cond_2

    .line 1517
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aq:I

    if-ne v1, v2, :cond_0

    .line 1518
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aq:I

    .line 1520
    :cond_0
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ar:I

    if-ne v1, v2, :cond_1

    .line 1521
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ar:I

    .line 1523
    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aq:I

    int-to-double v1, v1

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ar:I

    int-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 1524
    .local v0, doublePt:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 1526
    .end local v0           #doublePt:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->au:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    return-object v1
.end method

.method public final w()I
    .locals 1

    .prologue
    .line 1530
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->as:I

    return v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 1534
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->at:I

    return v0
.end method

.method public final y()I
    .locals 1

    .prologue
    .line 1538
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->aq:I

    return v0
.end method

.method public final z()I
    .locals 1

    .prologue
    .line 1542
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->ar:I

    return v0
.end method

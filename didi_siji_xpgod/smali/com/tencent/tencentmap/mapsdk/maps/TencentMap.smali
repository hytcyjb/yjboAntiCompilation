.class public final Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;
.super Ljava/lang/Object;
.source "TencentMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnTrafficUpdateListener;,
        Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_NONE:I = 0x0

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

.field private g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

.field private h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

.field private i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

.field private j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

.field private k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

.field private l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

.field private m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

.field private n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

.field private o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

.field private p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

.field private q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

.field private r:Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

.field private s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

.field private final t:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    .line 50
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

    .line 51
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    .line 52
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    .line 53
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    .line 54
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    .line 55
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    .line 56
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    .line 59
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    .line 60
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    .line 61
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 62
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 63
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    .line 64
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    .line 65
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 66
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    .line 67
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    .line 135
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 753
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    .line 166
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    .line 167
    return-void
.end method

.method protected constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/content/Context;)V
    .locals 3
    .parameter "map"
    .parameter "mContex"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    .line 50
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

    .line 51
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    .line 52
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    .line 53
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    .line 54
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    .line 55
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    .line 56
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    .line 59
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    .line 60
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    .line 61
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 62
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 63
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    .line 64
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    .line 65
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 66
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    .line 67
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    .line 135
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 753
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    .line 138
    invoke-static {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c(Landroid/content/Context;)V

    .line 148
    invoke-static {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b(Landroid/content/Context;)V

    .line 149
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    .line 151
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-direct {v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    .line 153
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-nez v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    if-nez v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, viewMap:Landroid/view/View;
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-direct {v1, v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    .line 157
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;)V

    .line 160
    .end local v0           #viewMap:Landroid/view/View;
    :cond_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fo;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->a()V

    .line 163
    return-void
.end method

.method private f()Lcom/tencent/tencentmap/mapsdk/maps/a/gg;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fp;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    .line 467
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fj;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    if-nez v0, :cond_2

    .line 470
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    if-nez v0, :cond_3

    .line 473
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fg;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    if-nez v0, :cond_4

    .line 476
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->n()Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fv;Lcom/tencent/tencentmap/mapsdk/maps/a/fc;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    if-nez v0, :cond_5

    .line 480
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fh;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    .line 482
    :cond_5
    return-void
.end method

.method public static setMapDataCachFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "strFolder"

    .prologue
    .line 875
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->j()V

    .line 647
    return-void
.end method

.method public final addCircle(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;
    .locals 2
    .parameter "circleoptions"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    if-nez v0, :cond_1

    .line 358
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fg;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    move-result-object v0

    return-object v0
.end method

.method public final addHeatOverlay(Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;
    .locals 2
    .parameter "heatOverlayOptions"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    .line 323
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;

    move-result-object v0

    goto :goto_0
.end method

.method public final addMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 3
    .parameter "markeroptions"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    if-nez v0, :cond_1

    .line 366
    :cond_0
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    .line 368
    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_3

    .line 372
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fj;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fv;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    goto :goto_0
.end method

.method public final addPolygon(Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;
    .locals 2
    .parameter "polygonoptions"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    if-nez v0, :cond_1

    .line 348
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fl;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public final addPolyline(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 2
    .parameter "polylineoptions"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    .line 334
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    if-nez v0, :cond_2

    .line 338
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fm;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v0

    goto :goto_0
.end method

.method public final animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V
    .locals 2
    .parameter "cameraupdate"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 261
    return-void
.end method

.method public final animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;ILcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 2
    .parameter "cameraupdate"
    .parameter "i"
    .parameter "cancelablecallback"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 277
    return-void
.end method

.method public final animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 2
    .parameter "cameraupdate"
    .parameter "cancelablecallback"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 269
    return-void
.end method

.method public final animateToNaviPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V
    .locals 2
    .parameter "mLocation"
    .parameter "fRotate"
    .parameter "fTitle"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V

    .line 229
    return-void
.end method

.method public final animateToNaviPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFF)V
    .locals 6
    .parameter "mLocation"
    .parameter "fRotate"
    .parameter "fTitle"
    .parameter "fDestLevel"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFZ)V

    .line 238
    return-void
.end method

.method public final animateToNaviPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFZ)V
    .locals 6
    .parameter "mLocation"
    .parameter "fRotate"
    .parameter "fTitle"
    .parameter "fDestLevel"
    .parameter "bo3D"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFZ)V

    .line 247
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->k()V

    .line 654
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->l()V

    .line 661
    return-void
.end method

.method public final calNaviLevel(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;FIZ)F
    .locals 2
    .parameter "bound"
    .parameter "skewangle"
    .parameter "topPadding"
    .parameter "is3d"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 909
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;FIZ)F

    move-result v0

    return v0
.end method

.method public final calcuteZoomToSpanLevel(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F
    .locals 8
    .parameter "ipadleft"
    .parameter "ipadright"
    .parameter "ipadtop"
    .parameter "ipadbom"
    .parameter "latlngLeftDown"
    .parameter "latlngRightUp"
    .parameter "mapCenter"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->c()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->c()V

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->b()V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->c()V

    .line 412
    :cond_3
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->m()V

    .line 668
    return-void
.end method

.method final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->n()V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;->b()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    :cond_3
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fz;->a()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/fz;

    :cond_4
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gb;->a()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/gb;

    :cond_5
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    :cond_6
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    :cond_7
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->exit()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    :cond_8
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->a()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    .line 675
    :cond_9
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->i()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    :cond_a
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->e()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    :cond_b
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->d()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    :cond_c
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->b()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ga;

    :cond_d
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->b()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/gc;

    :cond_e
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/fd;

    :cond_f
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->m()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    .line 676
    :cond_10
    return-void
.end method

.method public final getCameraPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->b()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final getCityName(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Ljava/lang/String;
    .locals 2
    .parameter "mlatlng"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInfoWindowAnimationManager()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_1

    .line 513
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fj;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->d()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    move-result-object v0

    return-object v0
.end method

.method public final getLogoMarginRate(I)F
    .locals 2
    .parameter "itype"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->b(I)F

    move-result v0

    return v0
.end method

.method public final getMapType()I
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->f()I

    move-result v0

    return v0
.end method

.method public final getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    return-object v0
.end method

.method public final getMaxZoomLevel()F
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->c()F

    move-result v0

    return v0
.end method

.method public final getMinZoomLevel()F
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->d()F

    move-result v0

    return v0
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g()V

    .line 499
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->b()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getProjection()Lcom/tencent/tencentmap/mapsdk/maps/Projection;
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/Projection;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fn;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->j:Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    return-object v0
.end method

.method public final getScreenShot(Landroid/os/Handler;Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .parameter "handler"
    .parameter "config"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Landroid/os/Handler;Landroid/graphics/Bitmap$Config;)V

    .line 786
    return-void
.end method

.method public final getUiSettings()Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;
    .locals 3

    .prologue
    .line 520
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->r:Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    if-nez v1, :cond_2

    .line 521
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    if-nez v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    if-nez v1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v0

    .line 524
    .local v0, viewMap:Landroid/view/View;
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    invoke-direct {v1, v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    .line 526
    .end local v0           #viewMap:Landroid/view/View;
    :cond_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ge;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fo;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    .line 528
    :cond_1
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/ge;

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ge;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->r:Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->r:Lcom/tencent/tencentmap/mapsdk/maps/UiSettings;

    return-object v1
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZoomToSpanLevel(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F
    .locals 2
    .parameter "leftUpper"
    .parameter "rightDown"

    .prologue
    .line 287
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 288
    :cond_0
    const/high16 v0, -0x4080

    .line 293
    :goto_0
    return v0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_2

    .line 291
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    goto :goto_0
.end method

.method public final isMyLocationEnabled()Z
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g()V

    .line 458
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->e()Z

    move-result v0

    return v0
.end method

.method public final isTrafficEnabled()Z
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->h()Z

    move-result v0

    return v0
.end method

.method public final moveCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V
    .locals 2
    .parameter "cameraupdate"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 221
    return-void
.end method

.method public final onRestart()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->i()V

    .line 640
    return-void
.end method

.method public final setCompassExtraPadding(I)V
    .locals 2
    .parameter "padding"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->f(I)V

    .line 889
    return-void
.end method

.method public final setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V
    .locals 3
    .parameter "infowindowadapter"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_1

    .line 609
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fj;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 612
    return-void
.end method

.method public final setInfoWindowStillVisible(Z)V
    .locals 2
    .parameter "boVisible"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->c(Z)V

    .line 866
    return-void
.end method

.method public final setLocationSource(Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;)V
    .locals 1
    .parameter "locationsource"

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g()V

    .line 504
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->a(Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;)V

    .line 505
    return-void
.end method

.method public final setLogoAnchor(I)V
    .locals 2
    .parameter "ianchor"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->c(I)V

    .line 815
    return-void
.end method

.method public final setLogoBottomMargin(I)V
    .locals 2
    .parameter "iPixels"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 833
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->e(I)V

    .line 836
    return-void
.end method

.method public final setLogoLeftMargin(I)V
    .locals 2
    .parameter "iPixels"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->d(I)V

    .line 822
    return-void
.end method

.method public final setLogoMarginRate(IF)V
    .locals 2
    .parameter "itype"
    .parameter "frate"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(IF)V

    .line 801
    return-void
.end method

.method public final setLogoVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->b(Z)V

    .line 829
    return-void
.end method

.method public final setMapScreenCenterProportion(FF)V
    .locals 2
    .parameter "xratio"
    .parameter "yratio"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 930
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->c(FF)V

    .line 933
    return-void
.end method

.method public final setMapType(I)V
    .locals 2
    .parameter "iMapType"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(I)V

    .line 426
    return-void
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g()V

    .line 486
    if-nez p1, :cond_1

    .line 487
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->d()V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->isMyLocationEnabled()Z

    move-result v0

    .line 491
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/fq;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fq;->c()V

    goto :goto_0
.end method

.method public final setNaviFixingProportion(FF)V
    .locals 2
    .parameter "xratio"
    .parameter "yratio"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 916
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(FF)V

    .line 919
    return-void
.end method

.method public final setNaviFixingProportion2D(FF)V
    .locals 2
    .parameter "xratio"
    .parameter "yratio"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->b(FF)V

    .line 926
    return-void
.end method

.method public final setOnCameraChangeListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;)V
    .locals 2
    .parameter "oncamerachangelistener"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;)V

    .line 546
    return-void
.end method

.method public final setOnCompassClickedListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;)V

    .line 627
    return-void
.end method

.method public final setOnInfoWindowClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;)V
    .locals 2
    .parameter "oninfowindowclicklistener"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;)V

    .line 601
    return-void
.end method

.method public final setOnMapClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;)V
    .locals 2
    .parameter "onmapclicklistener"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;)V

    .line 554
    return-void
.end method

.method public final setOnMapLongClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;)V
    .locals 2
    .parameter "onmaplongclicklistener"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;)V

    .line 562
    return-void
.end method

.method public final setOnMarkerClickListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;)V
    .locals 2
    .parameter "onmarkerclicklistener"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;)V

    .line 570
    return-void
.end method

.method public final setOnMarkerDragListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;)V
    .locals 3
    .parameter "onmarkerdraglistener"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_1

    .line 579
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fj;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;)V

    .line 582
    return-void
.end method

.method public final setOnMyLocationChangeListener(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;)V
    .locals 1
    .parameter "listner"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    if-nez v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;)V

    .line 620
    return-void
.end method

.method protected final setOnTop(Z)V
    .locals 1
    .parameter "isOnTop"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->d(Z)V

    .line 950
    return-void
.end method

.method public final setOnTrafficUpdate(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnTrafficUpdateListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->s:Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/gg;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gg;->b()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/MapView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    if-nez v0, :cond_1

    .line 590
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fj;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->e()V

    .line 593
    return-void
.end method

.method public final setTencentMapGestureListener(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V
    .locals 2
    .parameter "listner"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V

    .line 859
    return-void
.end method

.method public final setTrafficData([BLjava/lang/String;)I
    .locals 2
    .parameter "data"
    .parameter "city"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->g()I

    move-result v0

    return v0
.end method

.method public final setTrafficEnabled(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a(Z)V

    .line 440
    return-void
.end method

.method public final stopAnimation()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ft;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/fe;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->e()V

    .line 308
    return-void
.end method

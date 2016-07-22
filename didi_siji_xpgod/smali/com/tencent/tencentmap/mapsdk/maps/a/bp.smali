.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bp;
.super Ljava/lang/Object;
.source "MapEngine.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/bp$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
    }
.end annotation


# static fields
.field private static d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

.field private b:Lcom/tencent/map/lib/gl/b;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/bo;

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/bl;

.field private g:Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

.field private h:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

.field private i:Landroid/graphics/Rect;

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Landroid/content/Context;

.field private n:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

.field private o:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;

.field private p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

.field private q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bp$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/tencent/tencentmap/mapsdk/maps/a/bz;

.field private s:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bi;)V
    .locals 3
    .parameter "context"
    .parameter "mapView"

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->j:F

    .line 151
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->t:Z

    .line 157
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->m:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    .line 159
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    .line 160
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->i:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bo;

    .line 165
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-direct {v0, v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    .line 166
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    .line 167
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bw;)V

    .line 168
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;

    invoke-direct {v0, p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;B)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;

    .line 169
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->q:Ljava/util/Queue;

    .line 171
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$1;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ax;)V

    .line 178
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$2;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bi;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    return-object v0
.end method

.method private a([Ljava/lang/String;)V
    .locals 1
    .parameter "cityNames"

    .prologue
    .line 921
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;[Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V
    .locals 4
    .parameter

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u5168\u56fd"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->o()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private o()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v6, 0x0

    .line 765
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->r()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Landroid/graphics/Point;

    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    new-instance v10, Landroid/graphics/Point;

    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    new-instance v11, Landroid/graphics/Point;

    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v11, v12, v5}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x5

    new-array v3, v5, [Landroid/graphics/Point;

    aput-object v7, v3, v6

    const/4 v5, 0x1

    aput-object v8, v3, v5

    const/4 v5, 0x2

    aput-object v9, v3, v5

    const/4 v5, 0x3

    aput-object v10, v3, v5

    const/4 v5, 0x4

    aput-object v11, v3, v5

    .line 767
    .local v3, featurePoints:[Landroid/graphics/Point;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 769
    .local v1, cityNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 777
    new-array v2, v6, [Ljava/lang/String;

    .line 779
    .local v2, cityNamesArr:[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    .line 769
    .end local v2           #cityNamesArr:[Ljava/lang/String;
    :cond_0
    aget-object v4, v3, v5

    .line 770
    .local v4, p:Landroid/graphics/Point;
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget v9, v4, Landroid/graphics/Point;->y:I

    iget v10, v4, Landroid/graphics/Point;->x:I

    invoke-direct {v8, v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    invoke-virtual {p0, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, cityName:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cs;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 772
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    return-object v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Ljava/lang/String;
    .locals 6
    .parameter "geo"

    .prologue
    .line 740
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/af;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/ag;

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-nez v1, :cond_1

    .line 751
    const-string v1, ""

    .line 754
    :goto_0
    return-object v1

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-static {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v4

    shl-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x100

    iget-wide v4, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    double-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x14

    iget-wide v4, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    double-to-int v2, v4

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 754
    .local v0, p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 462
    sput p1, Lcom/tencent/map/lib/gl/a;->a:I

    .line 463
    sput p2, Lcom/tencent/map/lib/gl/a;->b:I

    .line 464
    div-int/lit8 v0, p1, 0x2

    sput v0, Lcom/tencent/map/lib/gl/a;->c:I

    .line 465
    div-int/lit8 v0, p2, 0x2

    sput v0, Lcom/tencent/map/lib/gl/a;->d:I

    .line 466
    sget v0, Lcom/tencent/map/lib/gl/a;->c:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sput v0, Lcom/tencent/map/lib/gl/a;->e:F

    .line 467
    int-to-float v0, p1

    sget v1, Lcom/tencent/map/lib/gl/a;->e:F

    sub-float/2addr v0, v1

    sput v0, Lcom/tencent/map/lib/gl/a;->f:F

    .line 468
    sget v0, Lcom/tencent/map/lib/gl/a;->d:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sput v0, Lcom/tencent/map/lib/gl/a;->g:F

    .line 469
    int-to-float v0, p2

    sget v1, Lcom/tencent/map/lib/gl/a;->g:F

    sub-float/2addr v0, v1

    sput v0, Lcom/tencent/map/lib/gl/a;->h:F

    .line 471
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(II)F

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->j:F

    .line 474
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->p()V

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 445
    :cond_0
    const-string v0, "engine createGL"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->m:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 447
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->e()V

    .line 448
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->b:Lcom/tencent/map/lib/gl/b;

    invoke-virtual {v0}, Lcom/tencent/map/lib/gl/b;->a()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .parameter "isOpen"

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTraffic isOpen:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 621
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->l:Z

    .line 622
    if-eqz p1, :cond_2

    .line 624
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 625
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 626
    const-string v2, "\u5168\u56fd"

    aput-object v2, v0, v1

    .line 625
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a([Ljava/lang/String;)V

    .line 631
    :goto_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->h()V

    .line 636
    :cond_0
    :goto_1
    return-void

    .line 629
    :cond_1
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->o()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_2
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    .line 634
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->i()V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/af;)Z
    .locals 8
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 207
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

    .line 208
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

    .line 209
    const-string v0, "initEngine"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 213
    invoke-interface {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/af;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bz;

    move-result-object v7

    .line 215
    .local v7, storageManager:Lcom/tencent/tencentmap/mapsdk/maps/a/bz;
    iput-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/bz;

    .line 216
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-interface {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/af;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cl;)V

    .line 217
    new-instance v0, Lcom/tencent/map/lib/gl/b;

    invoke-direct {v0}, Lcom/tencent/map/lib/gl/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->b:Lcom/tencent/map/lib/gl/b;

    .line 218
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

    invoke-interface {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/af;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/ag;

    move-result-object v1

    invoke-direct {v0, p1, p0, v7, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/at;Lcom/tencent/tencentmap/mapsdk/maps/a/bz;Lcom/tencent/tencentmap/mapsdk/maps/a/ag;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

    .line 219
    invoke-interface {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bz;->c()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, mapCfgPath:Ljava/lang/String;
    invoke-interface {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bz;->a()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, mapDataPath:Ljava/lang/String;
    invoke-interface {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bz;->b()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, satPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->a()V

    .line 225
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 226
    .local v6, result:Z
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bx;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bx;->b()V

    .line 228
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->b:Lcom/tencent/map/lib/gl/b;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;Lcom/tencent/map/lib/gl/b;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bl;

    .line 230
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    .line 232
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/af;

    .line 233
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    invoke-interface {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/af;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;Lcom/tencent/tencentmap/mapsdk/maps/a/cl;)V

    .line 238
    return v6
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/bi;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    return-object v0
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 502
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-nez v2, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->q:Ljava/util/Queue;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->q:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :goto_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->u()Z

    move-result v0

    .line 512
    .local v0, needRedraw:Z
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a([B)Z

    move-result v1

    .line 514
    .local v1, renderState:Z
    or-int/2addr v0, v1

    .line 517
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bl;

    invoke-virtual {v2, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bl;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 518
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bo;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bl;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bl;)V

    .line 521
    if-nez v0, :cond_3

    .line 522
    iget-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->t:Z

    if-eqz v2, :cond_2

    .line 523
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bl;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    invoke-virtual {v2, p1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/bl;)V

    .line 524
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->t:Z

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/bl;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a()V

    .line 529
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->t:Z

    .line 533
    :cond_3
    if-eqz v0, :cond_0

    .line 534
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0

    .line 507
    .end local v0           #needRedraw:Z
    .end local v1           #renderState:Z
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->q:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->q:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_5
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$a;

    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final c()Lcom/tencent/tencentmap/mapsdk/maps/a/bo;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bo;

    return-object v0
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    return-object v0
.end method

.method public final e()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    return-object v0
.end method

.method public final f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    return-object v0
.end method

.method public final g()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final h()Lcom/tencent/map/lib/gl/b;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->b:Lcom/tencent/map/lib/gl/b;

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    .line 272
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a()V

    .line 275
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->k:Z

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->f()V

    .line 279
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->l:Z

    if-eqz v0, :cond_2

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Z)V

    .line 283
    :cond_2
    const-string v0, "engine resume"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c()V

    .line 298
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->g()V

    .line 305
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->b()V

    .line 308
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->l:Z

    if-eqz v0, :cond_1

    .line 309
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    .line 312
    :cond_1
    const-string v0, "engine pause"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 319
    const-string v0, "engine destroy"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b(Ljava/lang/String;)V

    .line 320
    const-string v0, "engine destroy"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->c()V

    .line 325
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/cf;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    .line 328
    :cond_1
    return-void
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$3;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->q:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->q:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final m()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->j:F

    return v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->l:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->p:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

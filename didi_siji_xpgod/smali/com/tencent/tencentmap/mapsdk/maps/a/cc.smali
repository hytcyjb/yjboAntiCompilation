.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cc;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 236
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->a:Landroid/util/SparseArray;

    .line 237
    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->b:I

    .line 245
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->c:I

    .line 246
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->d:I

    .line 247
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->e:I

    .line 248
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->f:I

    .line 249
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->g:I

    .line 250
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->h:I

    .line 251
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->i:I

    .line 252
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->j:I

    .line 253
    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->k:I

    .line 255
    const v0, 0x177000

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->l:I

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->m:I

    .line 257
    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->n:I

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->o:Z

    .line 259
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v3, 0x4140

    const/high16 v4, 0x3f00

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 275
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 280
    .local v0, density:F
    mul-float v2, v0, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->b:I

    .line 284
    mul-float v2, v0, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->c:I

    .line 285
    const/high16 v2, 0x4248

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->d:I

    .line 286
    const/high16 v2, 0x45fa

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->e:I

    .line 287
    const/high16 v2, 0x4120

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->f:I

    .line 288
    const/high16 v2, 0x42c8

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->j:I

    .line 289
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->k:I

    .line 297
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->l:I

    .line 299
    const/4 v2, 0x0

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->m:I

    .line 300
    const/high16 v2, 0x40c0

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->n:I

    .line 302
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->o:Z

    .line 303
    const/high16 v2, 0x4100

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->g:I

    .line 305
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->g:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->i:I

    .line 307
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->g:I

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->h:I

    .line 308
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 393
    const/16 v0, 0x1f4

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/cc;
    .locals 5
    .parameter "context"

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 319
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 321
    .local v1, density:I
    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;

    .line 322
    .local v0, configuration:Lcom/tencent/tencentmap/mapsdk/maps/a/cc;
    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;

    .end local v0           #configuration:Lcom/tencent/tencentmap/mapsdk/maps/a/cc;
    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;-><init>(Landroid/content/Context;)V

    .line 324
    .restart local v0       #configuration:Lcom/tencent/tencentmap/mapsdk/maps/a/cc;
    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    :cond_0
    return-object v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 416
    const/16 v0, 0xb4

    return v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0x12c

    return v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 445
    const/16 v0, 0x28

    return v0
.end method

.method public static e()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    const/16 v0, 0x8

    return v0
.end method

.method public static h()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    const/16 v0, 0x64

    return v0
.end method

.method public static j()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 581
    const/16 v0, 0x32

    return v0
.end method

.method public static l()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    const/16 v0, 0x1f40

    return v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->g:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->h:I

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->j:I

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->d:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->e:I

    return v0
.end method

.class public final Landroid/support/v7/c/b;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/c/b$b;,
        Landroid/support/v7/c/b$a;,
        Landroid/support/v7/c/b$c;
    }
.end annotation


# static fields
.field private static final f:Landroid/support/v7/c/b$b;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/c/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/c/c;",
            "Landroid/support/v7/c/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseBooleanArray;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 928
    new-instance v0, Landroid/support/v7/c/b$1;

    invoke-direct {v0}, Landroid/support/v7/c/b$1;-><init>()V

    sput-object v0, Landroid/support/v7/c/b;->f:Landroid/support/v7/c/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/c/b$c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/c/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Landroid/support/v7/c/b;->a:Ljava/util/List;

    .line 156
    iput-object p2, p0, Landroid/support/v7/c/b;->b:Ljava/util/List;

    .line 158
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/c/b;->d:Landroid/util/SparseBooleanArray;

    .line 159
    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/c/b;->c:Ljava/util/Map;

    .line 161
    invoke-direct {p0}, Landroid/support/v7/c/b;->i()I

    move-result v0

    iput v0, p0, Landroid/support/v7/c/b;->e:I

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/support/v7/c/b$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/support/v7/c/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/support/v7/c/b$a;
    .locals 1
    .parameter

    .prologue
    .line 100
    new-instance v0, Landroid/support/v7/c/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/c/b$a;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/c/b;->h()V

    return-void
.end method

.method private a(Landroid/support/v7/c/b$c;Landroid/support/v7/c/c;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 366
    invoke-virtual {p1}, Landroid/support/v7/c/b$c;->b()[F

    move-result-object v1

    .line 367
    aget v2, v1, v0

    invoke-virtual {p2}, Landroid/support/v7/c/c;->a()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v1, v0

    invoke-virtual {p2}, Landroid/support/v7/c/c;->c()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, v1, v4

    invoke-virtual {p2}, Landroid/support/v7/c/c;->d()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v1, v1, v4

    invoke-virtual {p2}, Landroid/support/v7/c/c;->f()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/c/b;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/support/v7/c/b$c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/c/b$c;Landroid/support/v7/c/c;)F
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v1, 0x0

    .line 373
    invoke-virtual {p1}, Landroid/support/v7/c/b$c;->b()[F

    move-result-object v2

    .line 379
    invoke-virtual {p2}, Landroid/support/v7/c/c;->g()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 380
    invoke-virtual {p2}, Landroid/support/v7/c/c;->g()F

    move-result v0

    const/4 v3, 0x1

    aget v3, v2, v3

    invoke-virtual {p2}, Landroid/support/v7/c/c;->b()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v5, v3

    mul-float/2addr v0, v3

    .line 383
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/c/c;->h()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    .line 384
    invoke-virtual {p2}, Landroid/support/v7/c/c;->h()F

    move-result v3

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-virtual {p2}, Landroid/support/v7/c/c;->e()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v5, v2

    mul-float/2addr v2, v3

    .line 387
    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/c/c;->i()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 388
    invoke-virtual {p2}, Landroid/support/v7/c/c;->i()F

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/c/b$c;->c()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v7/c/b;->e:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 392
    :cond_0
    add-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;
    .locals 4
    .parameter

    .prologue
    .line 339
    invoke-direct {p0, p1}, Landroid/support/v7/c/b;->c(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/c/c;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Landroid/support/v7/c/b;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/support/v7/c/b$c;->a()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 344
    :cond_0
    return-object v0
.end method

.method private c(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;
    .locals 7
    .parameter

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 349
    const/4 v1, 0x0

    .line 350
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/support/v7/c/b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 351
    iget-object v0, p0, Landroid/support/v7/c/b;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/c/b$c;

    .line 352
    invoke-direct {p0, v0, p1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/b$c;Landroid/support/v7/c/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    invoke-direct {p0, v0, p1}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/b$c;Landroid/support/v7/c/c;)F

    move-result v3

    .line 354
    if-eqz v1, :cond_0

    cmpl-float v6, v3, v2

    if-lez v6, :cond_2

    :cond_0
    move v1, v3

    .line 350
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 360
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method static synthetic g()Landroid/support/v7/c/b$b;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/support/v7/c/b;->f:Landroid/support/v7/c/b$b;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 329
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/c/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 330
    iget-object v0, p0, Landroid/support/v7/c/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/c/c;

    .line 331
    invoke-virtual {v0}, Landroid/support/v7/c/c;->k()V

    .line 332
    iget-object v3, p0, Landroid/support/v7/c/b;->c:Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/b;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 336
    return-void
.end method

.method private i()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 396
    .line 397
    iget-object v1, p0, Landroid/support/v7/c/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/v7/c/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/c/b$c;

    invoke-virtual {v0}, Landroid/support/v7/c/b$c;->c()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 397
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 400
    :cond_0
    return v2
.end method


# virtual methods
.method public a()Landroid/support/v7/c/b$c;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Landroid/support/v7/c/c;->b:Landroid/support/v7/c/c;

    invoke-virtual {p0, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;
    .locals 1
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v7/c/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/c/b$c;

    return-object v0
.end method

.method public b()Landroid/support/v7/c/b$c;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Landroid/support/v7/c/c;->a:Landroid/support/v7/c/c;

    invoke-virtual {p0, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/support/v7/c/b$c;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Landroid/support/v7/c/c;->c:Landroid/support/v7/c/c;

    invoke-virtual {p0, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/support/v7/c/b$c;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Landroid/support/v7/c/c;->e:Landroid/support/v7/c/c;

    invoke-virtual {p0, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/support/v7/c/b$c;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Landroid/support/v7/c/c;->d:Landroid/support/v7/c/c;

    invoke-virtual {p0, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/support/v7/c/b$c;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Landroid/support/v7/c/c;->f:Landroid/support/v7/c/c;

    invoke-virtual {p0, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/c;)Landroid/support/v7/c/b$c;

    move-result-object v0

    return-object v0
.end method

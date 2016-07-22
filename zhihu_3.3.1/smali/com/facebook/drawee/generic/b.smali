.class public Lcom/facebook/drawee/generic/b;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyBuilder.java"


# static fields
.field public static final a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final b:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# instance fields
.field private c:Landroid/content/res/Resources;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private m:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private n:Landroid/graphics/Matrix;

.field private o:Landroid/graphics/PointF;

.field private p:Landroid/graphics/ColorFilter;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Lcom/facebook/drawee/generic/RoundingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/generic/b;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 38
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/generic/b;->b:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->c:Landroid/content/res/Resources;

    .line 69
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->t()V

    .line 70
    return-void
.end method

.method public static a(Landroid/content/res/Resources;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .parameter

    .prologue
    .line 73
    new-instance v0, Lcom/facebook/drawee/generic/b;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/b;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    const/16 v0, 0x12c

    iput v0, p0, Lcom/facebook/drawee/generic/b;->d:I

    .line 82
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->e:Landroid/graphics/drawable/Drawable;

    .line 83
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 85
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->g:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 88
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->i:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->j:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 91
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->k:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 94
    sget-object v0, Lcom/facebook/drawee/generic/b;->b:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->m:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 95
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/Matrix;

    .line 96
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/PointF;

    .line 98
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 99
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->r:Ljava/util/List;

    .line 100
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->s:Landroid/graphics/drawable/Drawable;

    .line 102
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->t:Lcom/facebook/drawee/generic/RoundingParams;

    .line 104
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/ColorFilter;

    .line 105
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 418
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 424
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 427
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.method public a(I)Lcom/facebook/drawee/generic/b;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/facebook/drawee/generic/b;->d:I

    .line 132
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 2
    .parameter

    .prologue
    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 351
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->e:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 161
    return-object p0
.end method

.method public a(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->m:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/Matrix;

    .line 275
    return-object p0
.end method

.method public a(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->t:Lcom/facebook/drawee/generic/RoundingParams;

    .line 408
    return-object p0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/facebook/drawee/generic/b;->d:I

    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 2
    .parameter

    .prologue
    .line 376
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Ljava/util/List;

    .line 377
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->g:Landroid/graphics/drawable/Drawable;

    .line 191
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 192
    return-object p0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 4
    .parameter

    .prologue
    .line 390
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 391
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 392
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->s:Landroid/graphics/drawable/Drawable;

    .line 393
    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->i:Landroid/graphics/drawable/Drawable;

    .line 222
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->j:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 223
    return-object p0
.end method

.method public d()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->k:Landroid/graphics/drawable/Drawable;

    .line 253
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 254
    return-object p0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public f()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->h:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->j:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public j()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public k()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->m:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public l()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public m()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/PointF;

    return-object v0
.end method

.method public n()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Ljava/util/List;

    return-object v0
.end method

.method public q()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->s:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public r()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->t:Lcom/facebook/drawee/generic/RoundingParams;

    return-object v0
.end method

.method public s()Lcom/facebook/drawee/generic/a;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->u()V

    .line 431
    new-instance v0, Lcom/facebook/drawee/generic/a;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/a;-><init>(Lcom/facebook/drawee/generic/b;)V

    return-object v0
.end method

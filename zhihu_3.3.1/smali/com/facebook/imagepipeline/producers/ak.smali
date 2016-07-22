.class public Lcom/facebook/imagepipeline/producers/ak;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/ak$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/imagepipeline/memory/w;

.field private final c:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/producers/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/memory/w;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ak;->a:Ljava/util/concurrent/Executor;

    .line 61
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/w;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ak;->b:Lcom/facebook/imagepipeline/memory/w;

    .line 62
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ag;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ak;->c:Lcom/facebook/imagepipeline/producers/ag;

    .line 63
    return-void
.end method

.method static a(Lcom/facebook/imagepipeline/common/c;II)F
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4500

    .line 232
    if-nez p0, :cond_1

    .line 233
    const/high16 v0, 0x3f80

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 237
    iget v1, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 238
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 242
    int-to-float v1, p1

    mul-float/2addr v1, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 243
    int-to-float v0, p1

    div-float v0, v3, v0

    .line 245
    :cond_2
    int-to-float v1, p2

    mul-float/2addr v1, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 246
    int-to-float v0, p2

    div-float v0, v3, v0

    goto :goto_0
.end method

.method static a(F)I
    .locals 2
    .parameter

    .prologue
    .line 252
    const v0, 0x3f2aaaab

    const/high16 v1, 0x4100

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/common/util/TriState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ak;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/ak;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ak;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 289
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ak;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/producers/ak;)Lcom/facebook/imagepipeline/memory/w;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ak;->b:Lcom/facebook/imagepipeline/memory/w;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ak;->f(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I

    move-result v0

    return v0
.end method

.method private static d(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)Lcom/facebook/common/util/TriState;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->e()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_1

    .line 217
    :cond_0
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    .line 222
    :goto_0
    return-object v0

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->e()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v1, :cond_2

    .line 220
    sget-object v0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    goto :goto_0

    .line 223
    :cond_2
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ak;->f(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I

    move-result v0

    if-nez v0, :cond_3

    .line 224
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ak;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ak;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 222
    :goto_1
    invoke-static {v0}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static e(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 258
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->e()Lcom/facebook/imagepipeline/common/c;

    move-result-object v5

    .line 259
    if-nez v5, :cond_1

    move v0, v2

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ak;->f(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I

    move-result v0

    .line 264
    const/16 v3, 0x5a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_3

    :cond_2
    move v4, v1

    .line 265
    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->h()I

    move-result v0

    move v3, v0

    .line 267
    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->g()I

    move-result v0

    .line 270
    :goto_3
    invoke-static {v5, v3, v0}, Lcom/facebook/imagepipeline/producers/ak;->a(Lcom/facebook/imagepipeline/common/c;II)F

    move-result v0

    .line 271
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ak;->a(F)I

    move-result v0

    .line 272
    if-le v0, v2, :cond_6

    move v0, v2

    .line 273
    goto :goto_0

    .line 264
    :cond_3
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    .line 266
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->g()I

    move-result v0

    move v3, v0

    goto :goto_2

    .line 268
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->h()I

    move-result v0

    goto :goto_3

    .line 275
    :cond_6
    if-ge v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static f(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/f/e;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/f/e;->f()I

    move-result v1

    .line 283
    if-eqz v1, :cond_1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    move v0, v1

    .line 285
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ak;->c:Lcom/facebook/imagepipeline/producers/ag;

    new-instance v1, Lcom/facebook/imagepipeline/producers/ak$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ak$a;-><init>(Lcom/facebook/imagepipeline/producers/ak;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 70
    return-void
.end method

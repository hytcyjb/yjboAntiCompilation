.class public Lcom/facebook/imagepipeline/d/e;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# static fields
.field private static a:Lcom/facebook/imagepipeline/d/e;


# instance fields
.field private final b:Lcom/facebook/imagepipeline/producers/ap;

.field private final c:Lcom/facebook/imagepipeline/d/d;

.field private d:Lcom/facebook/imagepipeline/animated/impl/b;

.field private e:Lcom/facebook/imagepipeline/animated/b/a;

.field private f:Lcom/facebook/imagepipeline/animated/a/a;

.field private g:Lcom/facebook/imagepipeline/animated/a/b;

.field private h:Lcom/facebook/imagepipeline/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/facebook/imagepipeline/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/imagepipeline/c/e;

.field private m:Lcom/facebook/cache/disk/f;

.field private n:Lcom/facebook/imagepipeline/decoder/a;

.field private o:Lcom/facebook/imagepipeline/d/c;

.field private p:Lcom/facebook/imagepipeline/d/g;

.field private q:Lcom/facebook/imagepipeline/d/h;

.field private r:Lcom/facebook/imagepipeline/c/e;

.field private s:Lcom/facebook/cache/disk/f;

.field private t:Lcom/facebook/imagepipeline/b/e;

.field private u:Lcom/facebook/imagepipeline/h/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/d/e;->a:Lcom/facebook/imagepipeline/d/e;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/d/d;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/d/d;

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 128
    new-instance v0, Lcom/facebook/imagepipeline/producers/ap;

    .line 129
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/d;->k()Lcom/facebook/imagepipeline/d/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/ap;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->b:Lcom/facebook/imagepipeline/producers/ap;

    .line 130
    return-void
.end method

.method public static a(Lcom/facebook/common/c/g;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/imagepipeline/animated/impl/b;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/common/time/b;Landroid/content/res/Resources;)Lcom/facebook/imagepipeline/animated/a/a;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v2, Lcom/facebook/imagepipeline/d/e$1;

    invoke-direct {v2, p0, p1, p2, p5}, Lcom/facebook/imagepipeline/d/e$1;-><init>(Lcom/facebook/common/c/g;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/common/time/b;)V

    .line 157
    new-instance v0, Lcom/facebook/imagepipeline/animated/a/a;

    move-object v1, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/animated/a/a;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/animated/impl/d;Lcom/facebook/imagepipeline/animated/b/a;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/imagepipeline/b/e;)Lcom/facebook/imagepipeline/animated/a/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Lcom/facebook/imagepipeline/d/e$3;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/d/e$3;-><init>(Lcom/facebook/imagepipeline/animated/b/a;)V

    .line 217
    new-instance v1, Lcom/facebook/imagepipeline/animated/a/b;

    invoke-direct {v1, v0, p1}, Lcom/facebook/imagepipeline/animated/a/b;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/b/e;)V

    return-object v1
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/d/e;)Lcom/facebook/imagepipeline/animated/b/a;
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/e;->m()Lcom/facebook/imagepipeline/animated/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/s;Lcom/facebook/imagepipeline/h/e;)Lcom/facebook/imagepipeline/b/e;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 339
    new-instance v0, Lcom/facebook/imagepipeline/b/a;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/s;->a()Lcom/facebook/imagepipeline/memory/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/b/a;-><init>(Lcom/facebook/imagepipeline/memory/c;)V

    .line 345
    :goto_0
    return-object v0

    .line 340
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 341
    new-instance v0, Lcom/facebook/imagepipeline/b/d;

    new-instance v1, Lcom/facebook/imagepipeline/b/b;

    .line 342
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/s;->e()Lcom/facebook/imagepipeline/memory/w;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/b/b;-><init>(Lcom/facebook/imagepipeline/memory/w;)V

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/b/d;-><init>(Lcom/facebook/imagepipeline/b/b;Lcom/facebook/imagepipeline/h/e;)V

    goto :goto_0

    .line 345
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/b/c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/b/c;-><init>()V

    goto :goto_0
.end method

.method public static a()Lcom/facebook/imagepipeline/d/e;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/facebook/imagepipeline/d/e;->a:Lcom/facebook/imagepipeline/d/e;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/d/e;

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/s;ZZ)Lcom/facebook/imagepipeline/h/e;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 370
    new-instance v0, Lcom/facebook/imagepipeline/h/a;

    .line 371
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/s;->a()Lcom/facebook/imagepipeline/memory/c;

    move-result-object v1

    .line 372
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/s;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/h/a;-><init>(Lcom/facebook/imagepipeline/memory/c;I)V

    .line 377
    :goto_0
    return-object v0

    .line 374
    :cond_0
    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 375
    new-instance v0, Lcom/facebook/imagepipeline/h/c;

    invoke-direct {v0, p2}, Lcom/facebook/imagepipeline/h/c;-><init>(Z)V

    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/s;->b()Lcom/facebook/imagepipeline/memory/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/imagepipeline/memory/j;)V

    goto :goto_0
.end method

.method public static a(Lcom/facebook/imagepipeline/d/d;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/facebook/imagepipeline/d/e;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/d/e;-><init>(Lcom/facebook/imagepipeline/d/d;)V

    sput-object v0, Lcom/facebook/imagepipeline/d/e;->a:Lcom/facebook/imagepipeline/d/e;

    .line 92
    return-void
.end method

.method private m()Lcom/facebook/imagepipeline/animated/b/a;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->e:Lcom/facebook/imagepipeline/animated/b/a;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/a;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/b/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->e:Lcom/facebook/imagepipeline/animated/b/a;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->e:Lcom/facebook/imagepipeline/animated/b/a;

    return-object v0
.end method

.method private n()Lcom/facebook/imagepipeline/animated/a/b;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->g:Lcom/facebook/imagepipeline/animated/a/b;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->a()Lcom/facebook/imagepipeline/animated/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->a()Lcom/facebook/imagepipeline/animated/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->g:Lcom/facebook/imagepipeline/animated/a/b;

    .line 230
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->g:Lcom/facebook/imagepipeline/animated/a/b;

    return-object v0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/e;->m()Lcom/facebook/imagepipeline/animated/b/a;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->j()Lcom/facebook/imagepipeline/b/e;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/d/e;->a(Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/imagepipeline/b/e;)Lcom/facebook/imagepipeline/animated/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->g:Lcom/facebook/imagepipeline/animated/a/b;

    goto :goto_0
.end method

.method private o()Lcom/facebook/imagepipeline/decoder/a;
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->n:Lcom/facebook/imagepipeline/decoder/a;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->m()Lcom/facebook/imagepipeline/decoder/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->m()Lcom/facebook/imagepipeline/decoder/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->n:Lcom/facebook/imagepipeline/decoder/a;

    .line 285
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->n:Lcom/facebook/imagepipeline/decoder/a;

    return-object v0

    .line 279
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/decoder/a;

    .line 280
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/e;->n()Lcom/facebook/imagepipeline/animated/a/b;

    move-result-object v1

    .line 281
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->k()Lcom/facebook/imagepipeline/h/e;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 282
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/d;->b()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/animated/a/b;Lcom/facebook/imagepipeline/h/e;Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->n:Lcom/facebook/imagepipeline/decoder/a;

    goto :goto_0
.end method

.method private p()Lcom/facebook/imagepipeline/c/e;
    .locals 7

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->l:Lcom/facebook/imagepipeline/c/e;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/facebook/imagepipeline/c/e;

    .line 292
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->h()Lcom/facebook/cache/disk/f;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 293
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/d;->r()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/s;->e()Lcom/facebook/imagepipeline/memory/w;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 294
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/d;->r()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/s;->f()Lcom/facebook/imagepipeline/memory/z;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 295
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/d/d;->k()Lcom/facebook/imagepipeline/d/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/imagepipeline/d/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 296
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/d/d;->k()Lcom/facebook/imagepipeline/d/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/imagepipeline/d/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 297
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/d/d;->l()Lcom/facebook/imagepipeline/c/n;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/c/e;-><init>(Lcom/facebook/cache/disk/j;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/memory/z;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/n;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->l:Lcom/facebook/imagepipeline/c/e;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->l:Lcom/facebook/imagepipeline/c/e;

    return-object v0
.end method

.method private q()Lcom/facebook/imagepipeline/d/g;
    .locals 17

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/e;->p:Lcom/facebook/imagepipeline/d/g;

    if-nez v1, :cond_0

    .line 394
    new-instance v1, Lcom/facebook/imagepipeline/d/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 396
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/d;->e()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 397
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/d;->r()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/s;->g()Lcom/facebook/imagepipeline/memory/e;

    move-result-object v3

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/e;->o()Lcom/facebook/imagepipeline/decoder/a;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 399
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/d/d;->s()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 400
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/d/d;->h()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 401
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/d/d;->u()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 402
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/d/d;->k()Lcom/facebook/imagepipeline/d/b;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 403
    invoke-virtual {v9}, Lcom/facebook/imagepipeline/d/d;->r()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/imagepipeline/memory/s;->e()Lcom/facebook/imagepipeline/memory/w;

    move-result-object v9

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/e;->e()Lcom/facebook/imagepipeline/c/p;

    move-result-object v10

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/e;->g()Lcom/facebook/imagepipeline/c/p;

    move-result-object v11

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/e;->p()Lcom/facebook/imagepipeline/c/e;

    move-result-object v12

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/e;->s()Lcom/facebook/imagepipeline/c/e;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 408
    invoke-virtual {v14}, Lcom/facebook/imagepipeline/d/d;->d()Lcom/facebook/imagepipeline/c/f;

    move-result-object v14

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/d/e;->j()Lcom/facebook/imagepipeline/b/e;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    move-object/from16 v16, v0

    .line 410
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/imagepipeline/d/d;->f()Z

    move-result v16

    invoke-direct/range {v1 .. v16}, Lcom/facebook/imagepipeline/d/g;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/memory/e;Lcom/facebook/imagepipeline/decoder/a;Lcom/facebook/imagepipeline/decoder/b;ZZLcom/facebook/imagepipeline/d/b;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/b/e;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/imagepipeline/d/e;->p:Lcom/facebook/imagepipeline/d/g;

    .line 412
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/d/e;->p:Lcom/facebook/imagepipeline/d/g;

    return-object v1
.end method

.method private r()Lcom/facebook/imagepipeline/d/h;
    .locals 7

    .prologue
    .line 416
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->q:Lcom/facebook/imagepipeline/d/h;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/facebook/imagepipeline/d/h;

    .line 419
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/e;->q()Lcom/facebook/imagepipeline/d/g;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 420
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/d;->q()Lcom/facebook/imagepipeline/producers/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 421
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/d;->u()Z

    move-result v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 422
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/d/d;->h()Z

    move-result v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 423
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/d/d;->i()Z

    move-result v5

    iget-object v6, p0, Lcom/facebook/imagepipeline/d/e;->b:Lcom/facebook/imagepipeline/producers/ap;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/d/h;-><init>(Lcom/facebook/imagepipeline/d/g;Lcom/facebook/imagepipeline/producers/ad;ZZZLcom/facebook/imagepipeline/producers/ap;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->q:Lcom/facebook/imagepipeline/d/h;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->q:Lcom/facebook/imagepipeline/d/h;

    return-object v0
.end method

.method private s()Lcom/facebook/imagepipeline/c/e;
    .locals 7

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->r:Lcom/facebook/imagepipeline/c/e;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/facebook/imagepipeline/c/e;

    .line 441
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->l()Lcom/facebook/cache/disk/f;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 442
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/d;->r()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/s;->e()Lcom/facebook/imagepipeline/memory/w;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 443
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/d;->r()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/s;->f()Lcom/facebook/imagepipeline/memory/z;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 444
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/d/d;->k()Lcom/facebook/imagepipeline/d/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/imagepipeline/d/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 445
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/d/d;->k()Lcom/facebook/imagepipeline/d/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/imagepipeline/d/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 446
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/d/d;->l()Lcom/facebook/imagepipeline/c/n;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/c/e;-><init>(Lcom/facebook/cache/disk/j;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/memory/z;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/n;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->r:Lcom/facebook/imagepipeline/c/e;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->r:Lcom/facebook/imagepipeline/c/e;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/facebook/imagepipeline/animated/impl/b;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->d:Lcom/facebook/imagepipeline/animated/impl/b;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/facebook/imagepipeline/d/e$2;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/d/e$2;-><init>(Lcom/facebook/imagepipeline/d/e;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->d:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->d:Lcom/facebook/imagepipeline/animated/impl/b;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/animated/a/a;
    .locals 7

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->f:Lcom/facebook/imagepipeline/animated/a/a;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/facebook/common/c/c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 183
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/d;->k()Lcom/facebook/imagepipeline/d/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/c/c;-><init>(Ljava/util/concurrent/Executor;)V

    .line 184
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 185
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/d;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 189
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/e;->m()Lcom/facebook/imagepipeline/animated/b/a;

    move-result-object v2

    .line 190
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->b()Lcom/facebook/imagepipeline/animated/impl/b;

    move-result-object v3

    .line 191
    invoke-static {}, Lcom/facebook/common/c/i;->b()Lcom/facebook/common/c/i;

    move-result-object v4

    .line 192
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 193
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/d/d;->e()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 186
    invoke-static/range {v0 .. v6}, Lcom/facebook/imagepipeline/d/e;->a(Lcom/facebook/common/c/g;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/imagepipeline/animated/impl/b;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/common/time/b;Landroid/content/res/Resources;)Lcom/facebook/imagepipeline/animated/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->f:Lcom/facebook/imagepipeline/animated/a/a;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->f:Lcom/facebook/imagepipeline/animated/a/a;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/c/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/h",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->h:Lcom/facebook/imagepipeline/c/h;

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 238
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->c()Lcom/facebook/common/internal/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 239
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/d;->p()Lcom/facebook/common/memory/b;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/a;->a(Lcom/facebook/common/internal/i;Lcom/facebook/common/memory/b;)Lcom/facebook/imagepipeline/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->h:Lcom/facebook/imagepipeline/c/h;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->h:Lcom/facebook/imagepipeline/c/h;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/c/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->i:Lcom/facebook/imagepipeline/c/p;

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->d()Lcom/facebook/imagepipeline/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 249
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/d;->l()Lcom/facebook/imagepipeline/c/n;

    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/b;->a(Lcom/facebook/imagepipeline/c/h;Lcom/facebook/imagepipeline/c/n;)Lcom/facebook/imagepipeline/c/p;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->i:Lcom/facebook/imagepipeline/c/p;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->i:Lcom/facebook/imagepipeline/c/p;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/c/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/h",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->j:Lcom/facebook/imagepipeline/c/h;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 258
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->j()Lcom/facebook/common/internal/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 259
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/d;->p()Lcom/facebook/common/memory/b;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/l;->a(Lcom/facebook/common/internal/i;Lcom/facebook/common/memory/b;)Lcom/facebook/imagepipeline/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->j:Lcom/facebook/imagepipeline/c/h;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->j:Lcom/facebook/imagepipeline/c/h;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/c/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->k:Lcom/facebook/imagepipeline/c/p;

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->f()Lcom/facebook/imagepipeline/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 269
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/d;->l()Lcom/facebook/imagepipeline/c/n;

    move-result-object v1

    .line 267
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/m;->a(Lcom/facebook/imagepipeline/c/h;Lcom/facebook/imagepipeline/c/n;)Lcom/facebook/imagepipeline/c/p;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->k:Lcom/facebook/imagepipeline/c/p;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->k:Lcom/facebook/imagepipeline/c/p;

    return-object v0
.end method

.method public h()Lcom/facebook/cache/disk/f;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->m:Lcom/facebook/cache/disk/f;

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 305
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->o()Lcom/facebook/cache/disk/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/cache/disk/d;->a(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->m:Lcom/facebook/cache/disk/f;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->m:Lcom/facebook/cache/disk/f;

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/d/c;
    .locals 10

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->o:Lcom/facebook/imagepipeline/d/c;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/facebook/imagepipeline/d/c;

    .line 314
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/e;->r()Lcom/facebook/imagepipeline/d/h;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 315
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/d;->t()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 316
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/d/d;->n()Lcom/facebook/common/internal/i;

    move-result-object v3

    .line 317
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->e()Lcom/facebook/imagepipeline/c/p;

    move-result-object v4

    .line 318
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->g()Lcom/facebook/imagepipeline/c/p;

    move-result-object v5

    .line 319
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/e;->p()Lcom/facebook/imagepipeline/c/e;

    move-result-object v6

    .line 320
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/e;->s()Lcom/facebook/imagepipeline/c/e;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 321
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/d/d;->d()Lcom/facebook/imagepipeline/c/f;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/d/e;->b:Lcom/facebook/imagepipeline/producers/ap;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/d/c;-><init>(Lcom/facebook/imagepipeline/d/h;Ljava/util/Set;Lcom/facebook/common/internal/i;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ap;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->o:Lcom/facebook/imagepipeline/d/c;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->o:Lcom/facebook/imagepipeline/d/c;

    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/b/e;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->t:Lcom/facebook/imagepipeline/b/e;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 352
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->r()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->k()Lcom/facebook/imagepipeline/h/e;

    move-result-object v1

    .line 351
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/d/e;->a(Lcom/facebook/imagepipeline/memory/s;Lcom/facebook/imagepipeline/h/e;)Lcom/facebook/imagepipeline/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->t:Lcom/facebook/imagepipeline/b/e;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->t:Lcom/facebook/imagepipeline/b/e;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/h/e;
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->u:Lcom/facebook/imagepipeline/h/e;

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 385
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->r()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 386
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/d/d;->g()Z

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 387
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/d/d;->i()Z

    move-result v2

    .line 384
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/d/e;->a(Lcom/facebook/imagepipeline/memory/s;ZZ)Lcom/facebook/imagepipeline/h/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->u:Lcom/facebook/imagepipeline/h/e;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->u:Lcom/facebook/imagepipeline/h/e;

    return-object v0
.end method

.method public l()Lcom/facebook/cache/disk/f;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->s:Lcom/facebook/cache/disk/f;

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->c:Lcom/facebook/imagepipeline/d/d;

    .line 432
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/d;->v()Lcom/facebook/cache/disk/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/cache/disk/d;->a(Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/e;->s:Lcom/facebook/cache/disk/f;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/e;->s:Lcom/facebook/cache/disk/f;

    return-object v0
.end method

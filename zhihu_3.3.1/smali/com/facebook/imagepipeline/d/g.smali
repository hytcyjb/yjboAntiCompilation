.class public Lcom/facebook/imagepipeline/d/g;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/res/Resources;

.field private c:Landroid/content/res/AssetManager;

.field private final d:Lcom/facebook/imagepipeline/memory/e;

.field private final e:Lcom/facebook/imagepipeline/decoder/a;

.field private final f:Lcom/facebook/imagepipeline/decoder/b;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/facebook/imagepipeline/d/b;

.field private final k:Lcom/facebook/imagepipeline/memory/w;

.field private final l:Lcom/facebook/imagepipeline/c/e;

.field private final m:Lcom/facebook/imagepipeline/c/e;

.field private final n:Lcom/facebook/imagepipeline/c/p;
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

.field private final o:Lcom/facebook/imagepipeline/c/p;
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

.field private final p:Lcom/facebook/imagepipeline/c/f;

.field private final q:Lcom/facebook/imagepipeline/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/memory/e;Lcom/facebook/imagepipeline/decoder/a;Lcom/facebook/imagepipeline/decoder/b;ZZLcom/facebook/imagepipeline/d/b;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/b/e;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/imagepipeline/memory/e;",
            "Lcom/facebook/imagepipeline/decoder/a;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "ZZ",
            "Lcom/facebook/imagepipeline/d/b;",
            "Lcom/facebook/imagepipeline/memory/w;",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/imagepipeline/c/f;",
            "Lcom/facebook/imagepipeline/b/e;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/d/g;->a:Landroid/content/ContentResolver;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/d/g;->b:Landroid/content/res/Resources;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/d/g;->c:Landroid/content/res/AssetManager;

    .line 108
    iput-object p2, p0, Lcom/facebook/imagepipeline/d/g;->d:Lcom/facebook/imagepipeline/memory/e;

    .line 109
    iput-object p3, p0, Lcom/facebook/imagepipeline/d/g;->e:Lcom/facebook/imagepipeline/decoder/a;

    .line 110
    iput-object p4, p0, Lcom/facebook/imagepipeline/d/g;->f:Lcom/facebook/imagepipeline/decoder/b;

    .line 111
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/d/g;->g:Z

    .line 112
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/d/g;->h:Z

    .line 114
    iput-object p7, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 115
    iput-object p8, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    .line 117
    iput-object p9, p0, Lcom/facebook/imagepipeline/d/g;->o:Lcom/facebook/imagepipeline/c/p;

    .line 118
    iput-object p10, p0, Lcom/facebook/imagepipeline/d/g;->n:Lcom/facebook/imagepipeline/c/p;

    .line 119
    iput-object p11, p0, Lcom/facebook/imagepipeline/d/g;->l:Lcom/facebook/imagepipeline/c/e;

    .line 120
    iput-object p12, p0, Lcom/facebook/imagepipeline/d/g;->m:Lcom/facebook/imagepipeline/c/e;

    .line 121
    iput-object p13, p0, Lcom/facebook/imagepipeline/d/g;->p:Lcom/facebook/imagepipeline/c/f;

    .line 123
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/g;->q:Lcom/facebook/imagepipeline/b/e;

    .line 125
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/g;->i:Z

    .line 126
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/a;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/facebook/imagepipeline/producers/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/a;-><init>(Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/i;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/i;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/facebook/imagepipeline/producers/i;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/i;-><init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public static b(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/t;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/t;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/facebook/imagepipeline/producers/t;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/t;-><init>(Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public static l(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/an;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;)",
            "Lcom/facebook/imagepipeline/producers/an",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcom/facebook/imagepipeline/producers/an;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/an;-><init>(Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/ad;)Lcom/facebook/imagepipeline/producers/ac;
    .locals 3
    .parameter

    .prologue
    .line 236
    new-instance v0, Lcom/facebook/imagepipeline/producers/ac;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->d:Lcom/facebook/imagepipeline/memory/e;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ac;-><init>(Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/memory/e;Lcom/facebook/imagepipeline/producers/ad;)V

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/ap;)Lcom/facebook/imagepipeline/producers/ao;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/ap;",
            ")",
            "Lcom/facebook/imagepipeline/producers/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lcom/facebook/imagepipeline/producers/ao;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/ao;-><init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/ap;)V

    return-object v0
.end method

.method public a(ILcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/aq;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;)",
            "Lcom/facebook/imagepipeline/producers/aq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/facebook/imagepipeline/producers/aq;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 281
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/facebook/imagepipeline/producers/aq;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public a()Lcom/facebook/imagepipeline/producers/k;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/facebook/imagepipeline/producers/k;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/d/g;->i:Z

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/k;-><init>(Lcom/facebook/imagepipeline/memory/w;Z)V

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/ag;Z)Lcom/facebook/imagepipeline/producers/n;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;Z)",
            "Lcom/facebook/imagepipeline/producers/n;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/facebook/imagepipeline/producers/n;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->l:Lcom/facebook/imagepipeline/c/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->m:Lcom/facebook/imagepipeline/c/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/g;->p:Lcom/facebook/imagepipeline/c/f;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/n;-><init>(Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;Z)V

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/producers/u;
    .locals 5

    .prologue
    .line 194
    new-instance v0, Lcom/facebook/imagepipeline/producers/u;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 195
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/g;->c:Landroid/content/res/AssetManager;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/d/g;->i:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/u;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Landroid/content/res/AssetManager;Z)V

    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/f;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/f;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/facebook/imagepipeline/producers/f;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->o:Lcom/facebook/imagepipeline/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/f;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/producers/v;
    .locals 5

    .prologue
    .line 202
    new-instance v0, Lcom/facebook/imagepipeline/producers/v;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 203
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/g;->a:Landroid/content/ContentResolver;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/d/g;->i:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/v;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Landroid/content/ContentResolver;Z)V

    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/g;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/g;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/facebook/imagepipeline/producers/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/g;-><init>(Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/producers/w;
    .locals 4

    .prologue
    .line 210
    new-instance v0, Lcom/facebook/imagepipeline/producers/w;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 211
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/g;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/w;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/h;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/h;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/facebook/imagepipeline/producers/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->o:Lcom/facebook/imagepipeline/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/h;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/producers/y;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Lcom/facebook/imagepipeline/producers/y;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 218
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/d/g;->i:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/y;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Z)V

    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/l;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/l;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/facebook/imagepipeline/producers/l;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->d:Lcom/facebook/imagepipeline/memory/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 164
    invoke-interface {v2}, Lcom/facebook/imagepipeline/d/b;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/g;->e:Lcom/facebook/imagepipeline/decoder/a;

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/g;->f:Lcom/facebook/imagepipeline/decoder/b;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/d/g;->g:Z

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/d/g;->h:Z

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/l;-><init>(Lcom/facebook/imagepipeline/memory/e;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/a;Lcom/facebook/imagepipeline/decoder/b;ZZLcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/producers/z;
    .locals 5

    .prologue
    .line 224
    new-instance v0, Lcom/facebook/imagepipeline/producers/z;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 225
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    iget-object v3, p0, Lcom/facebook/imagepipeline/d/g;->b:Landroid/content/res/Resources;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/d/g;->i:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/z;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Landroid/content/res/Resources;Z)V

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/producers/aa;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/facebook/imagepipeline/producers/aa;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/aa;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public g(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/p;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/p;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/facebook/imagepipeline/producers/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public h(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/q;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/q;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/facebook/imagepipeline/producers/q;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->n:Lcom/facebook/imagepipeline/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/q;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public i(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ae;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/ae;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/facebook/imagepipeline/producers/ae;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->o:Lcom/facebook/imagepipeline/c/p;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->p:Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ae;-><init>(Lcom/facebook/imagepipeline/c/p;Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public j(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/af;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/af;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/facebook/imagepipeline/producers/af;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->q:Lcom/facebook/imagepipeline/b/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 255
    invoke-interface {v2}, Lcom/facebook/imagepipeline/d/b;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/af;-><init>(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/b/e;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public k(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ak;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/ak;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/facebook/imagepipeline/producers/ak;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 260
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ak;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ar;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/ar;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/facebook/imagepipeline/producers/ar;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/g;->j:Lcom/facebook/imagepipeline/d/b;

    .line 288
    invoke-interface {v1}, Lcom/facebook/imagepipeline/d/b;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/g;->k:Lcom/facebook/imagepipeline/memory/w;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ar;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Lcom/facebook/imagepipeline/producers/ag;)V

    return-object v0
.end method

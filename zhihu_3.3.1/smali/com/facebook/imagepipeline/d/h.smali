.class public Lcom/facebook/imagepipeline/d/h;
.super Ljava/lang/Object;
.source "ProducerSequenceFactory.java"


# instance fields
.field a:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field e:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field f:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field g:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field h:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/facebook/imagepipeline/d/g;

.field private final l:Lcom/facebook/imagepipeline/producers/ad;

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Lcom/facebook/imagepipeline/producers/ap;

.field private q:Lcom/facebook/imagepipeline/producers/ag;
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
.method public constructor <init>(Lcom/facebook/imagepipeline/d/g;Lcom/facebook/imagepipeline/producers/ad;ZZZLcom/facebook/imagepipeline/producers/ap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 87
    iput-object p2, p0, Lcom/facebook/imagepipeline/d/h;->l:Lcom/facebook/imagepipeline/producers/ad;

    .line 88
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/d/h;->m:Z

    .line 89
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/d/h;->o:Z

    .line 90
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/d/h;->n:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->i:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->j:Ljava/util/Map;

    .line 93
    iput-object p6, p0, Lcom/facebook/imagepipeline/d/h;->p:Lcom/facebook/imagepipeline/producers/ap;

    .line 94
    return-void
.end method

.method private declared-synchronized a()Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->c:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 284
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/g;->e()Lcom/facebook/imagepipeline/producers/y;

    move-result-object v0

    .line 286
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->c:Lcom/facebook/imagepipeline/producers/ag;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->c:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/producers/ag;Z)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 391
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->d(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 392
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->b(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/imagepipeline/producers/ag;Z)Lcom/facebook/imagepipeline/producers/ag;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;Z)",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/h;->n:Z

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/g;->m(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ar;

    move-result-object p1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ag;Z)Lcom/facebook/imagepipeline/producers/n;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 418
    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/d/g;->h(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/q;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/d/g;->g(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/p;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/imagepipeline/request/ImageRequest;Z)Lcom/facebook/imagepipeline/producers/ag;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Z)",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x1e

    .line 179
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    .line 182
    const-string v1, "Uri is null."

    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v0}, Lcom/facebook/common/util/d;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/d/h;->a(Z)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-static {v0}, Lcom/facebook/common/util/d;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/h;->b()Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/h;->a()Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {v0}, Lcom/facebook/common/util/d;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/h;->c()Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_3
    invoke-static {v0}, Lcom/facebook/common/util/d;->d(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/h;->e()Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_4
    invoke-static {v0}, Lcom/facebook/common/util/d;->e(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/h;->d()Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_5
    invoke-static {v0}, Lcom/facebook/common/util/d;->f(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 198
    invoke-direct {p0}, Lcom/facebook/imagepipeline/d/h;->f()Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_7

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported uri scheme! Uri is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized a(Z)Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->a:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/d/h;->b(Z)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->b(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->a:Lcom/facebook/imagepipeline/producers/ag;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->a:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->d:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 299
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/g;->g()Lcom/facebook/imagepipeline/producers/aa;

    move-result-object v0

    .line 301
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->c(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->d:Lcom/facebook/imagepipeline/producers/ag;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->d:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/g;->f(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    .line 403
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->c(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(Z)Lcom/facebook/imagepipeline/producers/ag;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->q:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->l:Lcom/facebook/imagepipeline/producers/ad;

    .line 259
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ad;)Lcom/facebook/imagepipeline/producers/ac;

    move-result-object v0

    .line 258
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/producers/ag;Z)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->q:Lcom/facebook/imagepipeline/producers/ag;

    .line 263
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/h;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/h;->o:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->q:Lcom/facebook/imagepipeline/producers/ag;

    .line 265
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/d/g;->k(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->q:Lcom/facebook/imagepipeline/producers/ag;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->q:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->e:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 318
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/g;->c()Lcom/facebook/imagepipeline/producers/v;

    move-result-object v0

    .line 320
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->e:Lcom/facebook/imagepipeline/producers/ag;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->e:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;
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
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 430
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/g;->e(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/h;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 432
    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/d/g;->d(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/g;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/h;->p:Lcom/facebook/imagepipeline/producers/ap;

    .line 434
    invoke-virtual {v1, v0, v2}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/ap;)Lcom/facebook/imagepipeline/producers/ao;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/d/g;->c(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/f;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d()Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->f:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 337
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/g;->f()Lcom/facebook/imagepipeline/producers/z;

    move-result-object v0

    .line 339
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->f:Lcom/facebook/imagepipeline/producers/ag;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->f:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 450
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/a;

    move-result-object v0

    .line 451
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/d/h;->o:Z

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 453
    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/d/g;->k(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ak;

    move-result-object v0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    const/4 v2, 0x5

    .line 457
    invoke-virtual {v1, v2, v0}, Lcom/facebook/imagepipeline/d/g;->a(ILcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/aq;

    move-result-object v1

    .line 460
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 461
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/g;->d()Lcom/facebook/imagepipeline/producers/w;

    move-result-object v0

    .line 462
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/d/h;->o:Z

    if-nez v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 464
    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/d/g;->k(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ak;

    move-result-object v0

    .line 466
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ag;Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/i;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/d;->a(Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->k()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->ENCODED_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 145
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 143
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized e()Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->g:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 355
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/g;->b()Lcom/facebook/imagepipeline/producers/u;

    move-result-object v0

    .line 357
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->g:Lcom/facebook/imagepipeline/producers/ag;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->g:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;
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
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 478
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/d/g;->j(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/af;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 480
    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/d/g;->i(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ae;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Lcom/facebook/imagepipeline/producers/ag;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->h:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/g;->a()Lcom/facebook/imagepipeline/producers/k;

    move-result-object v0

    .line 370
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/d/h;->n:Z

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/d/g;->m(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ar;

    move-result-object v0

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-static {v0}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/a;

    move-result-object v0

    .line 374
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/d/h;->o:Z

    if-nez v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/d/g;->k(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ak;

    move-result-object v0

    .line 377
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->b(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->h:Lcom/facebook/imagepipeline/producers/ag;

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->h:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;
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
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    .line 493
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/g;->l(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/an;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/ag;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/d/h;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 130
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->b:Lcom/facebook/imagepipeline/producers/ag;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/h;->k:Lcom/facebook/imagepipeline/d/g;

    iget-object v2, p0, Lcom/facebook/imagepipeline/d/h;->l:Lcom/facebook/imagepipeline/producers/ad;

    .line 132
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ad;)Lcom/facebook/imagepipeline/producers/ac;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/d/g;->a(Lcom/facebook/imagepipeline/producers/ag;Z)Lcom/facebook/imagepipeline/producers/n;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/facebook/imagepipeline/d/g;->b(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/t;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/h;->b:Lcom/facebook/imagepipeline/producers/ag;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/h;->b:Lcom/facebook/imagepipeline/producers/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/ag;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Z)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Lcom/facebook/imagepipeline/request/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->e(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    .line 161
    :cond_0
    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/ag;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/d/h;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Z)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/d/h;->f(Lcom/facebook/imagepipeline/producers/ag;)Lcom/facebook/imagepipeline/producers/ag;

    move-result-object v0

    return-object v0
.end method

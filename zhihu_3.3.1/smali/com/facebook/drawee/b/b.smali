.class public abstract Lcom/facebook/drawee/b/b;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/drawee/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lcom/facebook/drawee/b/b",
        "<TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/d/d;"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/drawee/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/b/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/NullPointerException;

.field private static final p:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<TIMAGE;>;>;"
        }
    .end annotation
.end field

.field private k:Lcom/facebook/drawee/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/b/d",
            "<-TINFO;>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/facebook/drawee/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/drawee/b/b$1;

    invoke-direct {v0}, Lcom/facebook/drawee/b/b$1;-><init>()V

    sput-object v0, Lcom/facebook/drawee/b/b;->a:Lcom/facebook/drawee/b/d;

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/drawee/b/b;->b:Ljava/lang/NullPointerException;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/drawee/b/b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/facebook/drawee/b/b;->c:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/facebook/drawee/b/b;->d:Ljava/util/Set;

    .line 82
    invoke-direct {p0}, Lcom/facebook/drawee/b/b;->a()V

    .line 83
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/facebook/drawee/b/b;->e:Ljava/lang/Object;

    .line 88
    iput-object v1, p0, Lcom/facebook/drawee/b/b;->f:Ljava/lang/Object;

    .line 89
    iput-object v1, p0, Lcom/facebook/drawee/b/b;->g:Ljava/lang/Object;

    .line 90
    iput-object v1, p0, Lcom/facebook/drawee/b/b;->h:[Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/b/b;->i:Z

    .line 92
    iput-object v1, p0, Lcom/facebook/drawee/b/b;->k:Lcom/facebook/drawee/b/d;

    .line 93
    iput-boolean v2, p0, Lcom/facebook/drawee/b/b;->l:Z

    .line 94
    iput-boolean v2, p0, Lcom/facebook/drawee/b/b;->m:Z

    .line 95
    iput-object v1, p0, Lcom/facebook/drawee/b/b;->o:Lcom/facebook/drawee/d/a;

    .line 96
    return-void
.end method

.method protected static k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/facebook/drawee/b/b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Z)Lcom/facebook/common/internal/i;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;Z)",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/facebook/drawee/b/b$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/facebook/drawee/b/b$2;-><init>(Lcom/facebook/drawee/b/b;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method protected a([Ljava/lang/Object;Z)Lcom/facebook/common/internal/i;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;Z)",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    if-eqz p2, :cond_0

    move v0, v1

    .line 330
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 331
    aget-object v3, p1, v0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/facebook/drawee/b/b;->a(Ljava/lang/Object;Z)Lcom/facebook/common/internal/i;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 335
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/b/b;->c(Ljava/lang/Object;)Lcom/facebook/common/internal/i;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    :cond_1
    invoke-static {v2}, Lcom/facebook/datasource/e;->a(Ljava/util/List;)Lcom/facebook/datasource/e;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/facebook/datasource/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/facebook/datasource/b",
            "<TIMAGE;>;"
        }
    .end annotation
.end method

.method public a(Lcom/facebook/drawee/b/d;)Lcom/facebook/drawee/b/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/b/d",
            "<-TINFO;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 231
    iput-object p1, p0, Lcom/facebook/drawee/b/b;->k:Lcom/facebook/drawee/b/d;

    .line 232
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->c()Lcom/facebook/drawee/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/drawee/d/a;)Lcom/facebook/drawee/b/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/d/a;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lcom/facebook/drawee/b/b;->o:Lcom/facebook/drawee/d/a;

    .line 245
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->c()Lcom/facebook/drawee/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/drawee/b/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/facebook/drawee/b/b;->e:Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->c()Lcom/facebook/drawee/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/facebook/drawee/b/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/facebook/drawee/b/b;->m:Z

    .line 221
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->c()Lcom/facebook/drawee/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/facebook/drawee/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/b/d;

    .line 368
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/b/d;)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->k:Lcom/facebook/drawee/b/d;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->k:Lcom/facebook/drawee/b/d;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/b/d;)V

    .line 374
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/drawee/b/b;->m:Z

    if-eqz v0, :cond_2

    .line 375
    sget-object v0, Lcom/facebook/drawee/b/b;->a:Lcom/facebook/drawee/b/d;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/b/d;)V

    .line 377
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Object;)Lcom/facebook/drawee/b/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/drawee/b/b;->f:Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->c()Lcom/facebook/drawee/b/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/facebook/drawee/d/a;)Lcom/facebook/drawee/d/d;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/b/b;->a(Lcom/facebook/drawee/d/a;)Lcom/facebook/drawee/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/facebook/drawee/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/facebook/drawee/b/b;->l:Z

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/b/a;->c()Lcom/facebook/drawee/components/b;

    move-result-object v0

    .line 385
    if-nez v0, :cond_1

    .line 386
    new-instance v0, Lcom/facebook/drawee/components/b;

    invoke-direct {v0}, Lcom/facebook/drawee/components/b;-><init>()V

    .line 387
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/components/b;)V

    .line 389
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/drawee/b/b;->l:Z

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/b;->a(Z)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/b/b;->c(Lcom/facebook/drawee/b/a;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/Object;)Lcom/facebook/common/internal/i;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/b/b;->a(Ljava/lang/Object;Z)Lcom/facebook/common/internal/i;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c()Lcom/facebook/drawee/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation
.end method

.method protected c(Lcom/facebook/drawee/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/facebook/drawee/b/a;->d()Lcom/facebook/drawee/c/a;

    move-result-object v0

    .line 396
    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/drawee/c/a;->a(Landroid/content/Context;)Lcom/facebook/drawee/c/a;

    move-result-object v0

    .line 398
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/c/a;)V

    .line 400
    :cond_0
    return-void
.end method

.method protected abstract d()Lcom/facebook/drawee/b/a;
.end method

.method public synthetic d(Ljava/lang/Object;)Lcom/facebook/drawee/d/d;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/b/b;->a(Ljava/lang/Object;)Lcom/facebook/drawee/b/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/facebook/drawee/b/b;->n:Z

    return v0
.end method

.method public g()Lcom/facebook/drawee/d/a;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->o:Lcom/facebook/drawee/d/a;

    return-object v0
.end method

.method public h()Lcom/facebook/drawee/b/a;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->i()V

    .line 260
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/b/b;->h:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->g:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/drawee/b/b;->f:Ljava/lang/Object;

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/b/b;->g:Ljava/lang/Object;

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->j()Lcom/facebook/drawee/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->h:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/b/b;->f:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/g;->b(ZLjava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->j:Lcom/facebook/common/internal/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/b/b;->h:[Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/b/b;->f:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/b/b;->g:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    const-string v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Lcom/facebook/common/internal/g;->b(ZLjava/lang/Object;)V

    .line 277
    return-void

    :cond_3
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method protected j()Lcom/facebook/drawee/b/a;
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->d()Lcom/facebook/drawee/b/a;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/a;->a(Z)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/b/b;->b(Lcom/facebook/drawee/b/a;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/b/b;->a(Lcom/facebook/drawee/b/a;)V

    .line 285
    return-object v0
.end method

.method protected l()Lcom/facebook/common/internal/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/i",
            "<",
            "Lcom/facebook/datasource/b",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->j:Lcom/facebook/common/internal/i;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->j:Lcom/facebook/common/internal/i;

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcom/facebook/drawee/b/b;->f:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 303
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/b/b;->c(Ljava/lang/Object;)Lcom/facebook/common/internal/i;

    move-result-object v0

    .line 309
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/drawee/b/b;->g:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/b/b;->c(Ljava/lang/Object;)Lcom/facebook/common/internal/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {v1}, Lcom/facebook/datasource/f;->a(Ljava/util/List;)Lcom/facebook/datasource/f;

    move-result-object v0

    .line 317
    :cond_3
    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcom/facebook/drawee/b/b;->b:Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/common/internal/i;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/facebook/drawee/b/b;->h:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 305
    iget-object v0, p0, Lcom/facebook/drawee/b/b;->h:[Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/facebook/drawee/b/b;->i:Z

    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/b/b;->a([Ljava/lang/Object;Z)Lcom/facebook/common/internal/i;

    move-result-object v0

    goto :goto_1
.end method

.method public synthetic m()Lcom/facebook/drawee/d/a;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/facebook/drawee/b/b;->h()Lcom/facebook/drawee/b/a;

    move-result-object v0

    return-object v0
.end method

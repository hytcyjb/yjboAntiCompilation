.class public Lio/fabric/sdk/android/c;
.super Ljava/lang/Object;
.source "Fabric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/c$a;
    }
.end annotation


# static fields
.field static volatile a:Lio/fabric/sdk/android/c;

.field static final b:Lio/fabric/sdk/android/k;


# instance fields
.field final c:Lio/fabric/sdk/android/k;

.field final d:Z

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Landroid/os/Handler;

.field private final i:Lio/fabric/sdk/android/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/f",
            "<",
            "Lio/fabric/sdk/android/c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lio/fabric/sdk/android/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/f",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:Lio/fabric/sdk/android/services/common/IdManager;

.field private l:Lio/fabric/sdk/android/a;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lio/fabric/sdk/android/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/b;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/c;->b:Lio/fabric/sdk/android/k;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/h;Landroid/os/Handler;Lio/fabric/sdk/android/k;ZLio/fabric/sdk/android/f;Lio/fabric/sdk/android/services/common/IdManager;)V
    .locals 2
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;",
            "Lio/fabric/sdk/android/h;",
            ">;",
            "Lio/fabric/sdk/android/services/concurrency/h;",
            "Landroid/os/Handler;",
            "Lio/fabric/sdk/android/k;",
            "Z",
            "Lio/fabric/sdk/android/f;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lio/fabric/sdk/android/c;->e:Landroid/content/Context;

    .line 285
    iput-object p2, p0, Lio/fabric/sdk/android/c;->f:Ljava/util/Map;

    .line 286
    iput-object p3, p0, Lio/fabric/sdk/android/c;->g:Ljava/util/concurrent/ExecutorService;

    .line 287
    iput-object p4, p0, Lio/fabric/sdk/android/c;->h:Landroid/os/Handler;

    .line 288
    iput-object p5, p0, Lio/fabric/sdk/android/c;->c:Lio/fabric/sdk/android/k;

    .line 289
    iput-boolean p6, p0, Lio/fabric/sdk/android/c;->d:Z

    .line 290
    iput-object p7, p0, Lio/fabric/sdk/android/c;->i:Lio/fabric/sdk/android/f;

    .line 291
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/fabric/sdk/android/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 292
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/c;->a(I)Lio/fabric/sdk/android/f;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/c;->j:Lio/fabric/sdk/android/f;

    .line 293
    iput-object p8, p0, Lio/fabric/sdk/android/c;->k:Lio/fabric/sdk/android/services/common/IdManager;

    .line 294
    return-void
.end method

.method static a()Lio/fabric/sdk/android/c;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;[Lio/fabric/sdk/android/h;)Lio/fabric/sdk/android/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 308
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_1

    .line 309
    const-class v1, Lio/fabric/sdk/android/c;

    monitor-enter v1

    .line 310
    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lio/fabric/sdk/android/c$a;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/c$a;->a([Lio/fabric/sdk/android/h;)Lio/fabric/sdk/android/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/c$a;->a()Lio/fabric/sdk/android/c;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/c;->c(Lio/fabric/sdk/android/c;)V

    .line 313
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/fabric/sdk/android/h;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Lio/fabric/sdk/android/c;->a()Lio/fabric/sdk/android/c;

    move-result-object v0

    iget-object v0, v0, Lio/fabric/sdk/android/c;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/h;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-static {p0}, Lio/fabric/sdk/android/c;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lio/fabric/sdk/android/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lio/fabric/sdk/android/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;",
            "Lio/fabric/sdk/android/h;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/h;

    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    instance-of v2, v0, Lio/fabric/sdk/android/i;

    if-eqz v2, :cond_0

    .line 584
    check-cast v0, Lio/fabric/sdk/android/i;

    invoke-interface {v0}, Lio/fabric/sdk/android/i;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lio/fabric/sdk/android/c;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 587
    :cond_1
    return-void
.end method

.method static synthetic b(Lio/fabric/sdk/android/c;)Lio/fabric/sdk/android/f;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lio/fabric/sdk/android/c;->i:Lio/fabric/sdk/android/f;

    return-object v0
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 572
    invoke-static {v0, p0}, Lio/fabric/sdk/android/c;->a(Ljava/util/Map;Ljava/util/Collection;)V

    .line 574
    return-object v0
.end method

.method private c(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 488
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 489
    check-cast p1, Landroid/app/Activity;

    .line 491
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static c(Lio/fabric/sdk/android/c;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    sput-object p0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    .line 340
    invoke-direct {p0}, Lio/fabric/sdk/android/c;->j()V

    .line 341
    return-void
.end method

.method public static h()Lio/fabric/sdk/android/k;
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_0

    .line 532
    sget-object v0, Lio/fabric/sdk/android/c;->b:Lio/fabric/sdk/android/k;

    .line 534
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    iget-object v0, v0, Lio/fabric/sdk/android/c;->c:Lio/fabric/sdk/android/k;

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/c;->a:Lio/fabric/sdk/android/c;

    iget-boolean v0, v0, Lio/fabric/sdk/android/c;->d:Z

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lio/fabric/sdk/android/c;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/c;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/c;->a(Landroid/app/Activity;)Lio/fabric/sdk/android/c;

    .line 364
    new-instance v0, Lio/fabric/sdk/android/a;

    iget-object v1, p0, Lio/fabric/sdk/android/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/fabric/sdk/android/c;->l:Lio/fabric/sdk/android/a;

    .line 365
    iget-object v0, p0, Lio/fabric/sdk/android/c;->l:Lio/fabric/sdk/android/a;

    new-instance v1, Lio/fabric/sdk/android/c$1;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/c$1;-><init>(Lio/fabric/sdk/android/c;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/a$b;)Z

    .line 383
    iget-object v0, p0, Lio/fabric/sdk/android/c;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/c;->a(Landroid/content/Context;)V

    .line 384
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lio/fabric/sdk/android/c;
    .locals 1
    .parameter

    .prologue
    .line 347
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/fabric/sdk/android/c;->m:Ljava/lang/ref/WeakReference;

    .line 348
    return-object p0
.end method

.method a(I)Lio/fabric/sdk/android/f;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/fabric/sdk/android/f",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Lio/fabric/sdk/android/c$2;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/c$2;-><init>(Lio/fabric/sdk/android/c;I)V

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/c;->b(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lio/fabric/sdk/android/c;->g()Ljava/util/Collection;

    move-result-object v1

    .line 407
    new-instance v2, Lio/fabric/sdk/android/l;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/l;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    .line 408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 413
    sget-object v0, Lio/fabric/sdk/android/f;->d:Lio/fabric/sdk/android/f;

    iget-object v1, p0, Lio/fabric/sdk/android/c;->k:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v2, p1, p0, v0, v1}, Lio/fabric/sdk/android/l;->a(Landroid/content/Context;Lio/fabric/sdk/android/c;Lio/fabric/sdk/android/f;Lio/fabric/sdk/android/services/common/IdManager;)V

    .line 414
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/h;

    .line 415
    iget-object v4, p0, Lio/fabric/sdk/android/c;->j:Lio/fabric/sdk/android/f;

    iget-object v5, p0, Lio/fabric/sdk/android/c;->k:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0, p1, p0, v4, v5}, Lio/fabric/sdk/android/h;->a(Landroid/content/Context;Lio/fabric/sdk/android/c;Lio/fabric/sdk/android/f;Lio/fabric/sdk/android/services/common/IdManager;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v2}, Lio/fabric/sdk/android/l;->B()V

    .line 424
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Fabric"

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], with the following kits:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, v0

    .line 434
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/h;

    .line 435
    iget-object v4, v0, Lio/fabric/sdk/android/h;->f:Lio/fabric/sdk/android/g;

    iget-object v5, v2, Lio/fabric/sdk/android/l;->f:Lio/fabric/sdk/android/g;

    invoke-virtual {v4, v5}, Lio/fabric/sdk/android/g;->a(Lio/fabric/sdk/android/services/concurrency/i;)V

    .line 437
    iget-object v4, p0, Lio/fabric/sdk/android/c;->f:Ljava/util/Map;

    invoke-virtual {p0, v4, v0}, Lio/fabric/sdk/android/c;->a(Ljava/util/Map;Lio/fabric/sdk/android/h;)V

    .line 439
    invoke-virtual {v0}, Lio/fabric/sdk/android/h;->B()V

    .line 441
    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v0}, Lio/fabric/sdk/android/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lio/fabric/sdk/android/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 431
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 449
    :cond_3
    if-eqz v1, :cond_4

    .line 450
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_4
    return-void
.end method

.method a(Ljava/util/Map;Lio/fabric/sdk/android/h;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;",
            "Lio/fabric/sdk/android/h;",
            ">;",
            "Lio/fabric/sdk/android/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/b;

    .line 461
    if-eqz v0, :cond_4

    .line 462
    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/b;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 463
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 464
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/h;

    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 468
    iget-object v6, p2, Lio/fabric/sdk/android/h;->f:Lio/fabric/sdk/android/g;

    iget-object v0, v0, Lio/fabric/sdk/android/h;->f:Lio/fabric/sdk/android/g;

    invoke-virtual {v6, v0}, Lio/fabric/sdk/android/g;->a(Lio/fabric/sdk/android/services/concurrency/i;)V

    goto :goto_1

    .line 474
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/h;

    .line 475
    if-nez v0, :cond_2

    .line 476
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    iget-object v5, p2, Lio/fabric/sdk/android/h;->f:Lio/fabric/sdk/android/g;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/h;

    iget-object v0, v0, Lio/fabric/sdk/android/h;->f:Lio/fabric/sdk/android/g;

    invoke-virtual {v5, v0}, Lio/fabric/sdk/android/g;->a(Lio/fabric/sdk/android/services/concurrency/i;)V

    .line 463
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 485
    :cond_4
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lio/fabric/sdk/android/c;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lio/fabric/sdk/android/c;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/j;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lio/fabric/sdk/android/e;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/e;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lio/fabric/sdk/android/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 616
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    const-string v0, "1.3.8.92"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public e()Lio/fabric/sdk/android/a;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lio/fabric/sdk/android/c;->l:Lio/fabric/sdk/android/a;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lio/fabric/sdk/android/c;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lio/fabric/sdk/android/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

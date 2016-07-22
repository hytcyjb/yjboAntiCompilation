.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;
.super Ljava/lang/Object;
.source "HighThreadExecutor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;)V
    .locals 1
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;)V

    .line 458
    :try_start_0
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 459
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a()V

    .line 464
    return-void

    .line 461
    :catchall_0
    move-exception v0

    .line 462
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a()V

    .line 463
    throw v0
.end method

.method private static a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;)Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a",
            "<TE;>.b<TE;>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, p:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    :goto_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 473
    .local v0, s:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 474
    :cond_0
    return-object v0

    .line 475
    :cond_1
    move-object p0, v0

    .line 471
    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;)V

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    if-nez v1, :cond_0

    .line 483
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :catchall_0
    move-exception v1

    .line 490
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a()V

    .line 491
    throw v1

    .line 484
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->d:Ljava/lang/Object;

    .line 485
    .local v0, x:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 486
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;)Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 487
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a()V

    .line 488
    return-object v0

    .line 487
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->a:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final remove()V
    .locals 5

    .prologue
    .line 495
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;)V

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 498
    .local v0, node:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .line 499
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    iget-object v2, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;

    .local v2, trail:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    iget-object v1, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, p:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    :goto_0
    if-nez v1, :cond_0

    .line 506
    :goto_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a()V

    .line 508
    return-void

    .line 500
    :cond_0
    if-ne v1, v0, :cond_1

    .line 501
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-virtual {v3, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 505
    .end local v0           #node:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    .end local v1           #p:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    .end local v2           #trail:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    :catchall_0
    move-exception v3

    .line 506
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;->a()V

    .line 507
    throw v3

    .line 499
    .restart local v0       #node:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    .restart local v1       #p:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    .restart local v2       #trail:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a<TE;>.b<TE;>;"
    :cond_1
    move-object v2, v1

    :try_start_2
    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

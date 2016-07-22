.class final Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;
.super Ljava/lang/Thread;
.source "MapActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/be;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->b:Z

    .line 345
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 349
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->b:Z

    if-nez v0, :cond_1

    .line 387
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;

    move-result-object v0

    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-interface {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 354
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 351
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)V

    .line 364
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Lcom/tencent/tencentmap/mapsdk/maps/a/az;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Lcom/tencent/tencentmap/mapsdk/maps/a/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/az;->a()V

    .line 370
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    :goto_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->g(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->h(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 378
    :try_start_2
    const-string v0, "mapRender before lockwait"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->h(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Ljava/lang/Object;

    .line 380
    const-string v0, "mapRender after lockwait"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 376
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 351
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 382
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized start()V
    .locals 1

    .prologue
    .line 338
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->b:Z

    .line 339
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

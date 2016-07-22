.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bn;
.super Ljava/lang/Object;
.source "MapDataThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Thread;

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->c:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->d:Ljava/util/ArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;)V
    .locals 2
    .parameter "delegate"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    const-string v0, "engine data thread addDelegate"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->a:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->a:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->c:Ljava/lang/Object;

    .line 64
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 89
    :goto_0
    iget-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->a:Z

    if-nez v2, :cond_0

    .line 118
    return-void

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, needWait:Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 94
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v1, :cond_1

    .line 105
    :try_start_2
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :try_start_3
    const-string v2, "DataThread wait"

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bn;->c:Ljava/lang/Object;

    .line 105
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :cond_1
    const-wide/16 v2, 0x80

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;

    .line 96
    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bn$a;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit p0

    throw v2

    .line 100
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 105
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
.end method

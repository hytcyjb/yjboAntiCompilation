.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cf;
.super Ljava/lang/Object;
.source "TrafficManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bp;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method private d(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/ce;
    .locals 2
    .parameter "mapEngine"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 146
    .local v9, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/a/bp;>;"
    const/4 v6, 0x0

    .line 147
    .local v6, engine:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v0

    const/4 v1, 0x0

    const-string v4, ""

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a([BIZLjava/lang/String;Z)I

    .line 160
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    .line 148
    .local v8, key:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;
    move-object v6, v8

    .line 149
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;

    .line 150
    .local v7, entity:Lcom/tencent/tencentmap/mapsdk/maps/a/ce;
    if-eqz v7, :cond_0

    .line 151
    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->c()Z

    move-result v1

    .line 152
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V
    .locals 2
    .parameter "mapEngine"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;Lcom/tencent/tencentmap/mapsdk/maps/a/cl;)V
    .locals 3
    .parameter "mapEngine"
    .parameter "downloadExecutor"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    monitor-exit v2

    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;

    invoke-direct {v0, p1, p2, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;Lcom/tencent/tencentmap/mapsdk/maps/a/cl;Lcom/tencent/tencentmap/mapsdk/maps/a/ce$a;)V

    .line 44
    .local v0, entity:Lcom/tencent/tencentmap/mapsdk/maps/a/ce;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #entity:Lcom/tencent/tencentmap/mapsdk/maps/a/ce;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;[Ljava/lang/String;)V
    .locals 1
    .parameter "mapEngine"
    .parameter "cityNames"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/ce;

    move-result-object v0

    .line 76
    .local v0, entity:Lcom/tencent/tencentmap/mapsdk/maps/a/ce;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->a([Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V
    .locals 1
    .parameter "mapEngine"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/ce;

    move-result-object v0

    .line 87
    .local v0, entity:Lcom/tencent/tencentmap/mapsdk/maps/a/ce;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->a()V

    .line 90
    :cond_0
    return-void
.end method

.method public final c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V
    .locals 1
    .parameter "mapEngine"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cf;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/ce;

    move-result-object v0

    .line 99
    .local v0, entity:Lcom/tencent/tencentmap/mapsdk/maps/a/ce;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ce;->b()V

    .line 102
    :cond_0
    return-void
.end method

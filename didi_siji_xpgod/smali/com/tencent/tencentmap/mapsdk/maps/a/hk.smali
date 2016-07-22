.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/hk;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/hd;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z

.field private final c:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->b:Z

    return v0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 114
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->b:Z

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 118
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 130
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->b:Z

    .line 122
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->a:Ljava/util/LinkedList;

    .line 123
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/hd;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->a:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 128
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/hd;

    :try_start_2
    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hd;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    if-nez v2, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_0

    .line 125
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/hd;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 128
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/hd;>;"
    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_5

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_3
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/he;

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;-><init>(Ljava/util/Collection;)V

    throw v1

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

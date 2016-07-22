.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cn;
.super Ljava/lang/Object;
.source "DownloadMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Thread;

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->b:Ljava/util/Hashtable;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->g:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    monitor-exit v1

    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;[B)V
    .locals 1
    .parameter "url"
    .parameter "data"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    if-nez p2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cm;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cm;->a(Ljava/lang/String;[B)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/cl;)V
    .locals 0
    .parameter "executor"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

    .line 79
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/cm;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    .line 87
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "run"

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    monitor-enter v3

    move v1, v2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 102
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->h:Ljava/lang/Runnable;

    .line 103
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->c:Z

    .line 104
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 107
    :cond_0
    return-void

    .line 101
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cm;

    invoke-interface {v4, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cm;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 140
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->c:Z

    if-nez v0, :cond_0

    .line 141
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->c:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 149
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->b:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->g:Ljava/lang/Object;

    .line 156
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 149
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 163
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->c:Z

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->h:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->h:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 186
    :cond_0
    return-void

    .line 165
    :cond_1
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 167
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 170
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->g:Ljava/lang/Object;

    .line 170
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    .end local v0           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 175
    .restart local v0       #url:Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/cl;

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cl;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cn;->a(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

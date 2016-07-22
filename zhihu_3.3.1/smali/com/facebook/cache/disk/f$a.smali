.class Lcom/facebook/cache/disk/f$a;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/cache/disk/f$a;->a:Z

    .line 91
    iput-wide v2, p0, Lcom/facebook/cache/disk/f$a;->b:J

    .line 92
    iput-wide v2, p0, Lcom/facebook/cache/disk/f$a;->c:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iput-wide p3, p0, Lcom/facebook/cache/disk/f$a;->c:J

    .line 106
    iput-wide p1, p0, Lcom/facebook/cache/disk/f$a;->b:J

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cache/disk/f$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/cache/disk/f$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/cache/disk/f$a;->a:Z

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/cache/disk/f$a;->c:J

    .line 101
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/cache/disk/f$a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/cache/disk/f$a;->a:Z

    if-eqz v0, :cond_0

    .line 112
    iget-wide v0, p0, Lcom/facebook/cache/disk/f$a;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/cache/disk/f$a;->b:J

    .line 113
    iget-wide v0, p0, Lcom/facebook/cache/disk/f$a;->c:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/facebook/cache/disk/f$a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/cache/disk/f$a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

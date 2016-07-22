.class public final Lct/t;
.super Ljava/lang/Object;


# static fields
.field private static b:Lct/t;


# instance fields
.field public a:Lct/u;

.field private c:Lct/s;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lct/v;->a()Lct/v;

    move-result-object v0

    iput-object v0, p0, Lct/t;->a:Lct/u;

    invoke-direct {p0}, Lct/t;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lct/t;
    .locals 2

    const-class v1, Lct/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lct/t;->b:Lct/t;

    if-nez v0, :cond_0

    new-instance v0, Lct/t;

    invoke-direct {v0}, Lct/t;-><init>()V

    sput-object v0, Lct/t;->b:Lct/t;

    :cond_0
    sget-object v0, Lct/t;->b:Lct/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessSchedulerStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "try updateCacheInfo...currentApn:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "AccessSchedulerStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateCacheInfo failed... get current apn from ApnInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lct/t;->c:Lct/s;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lct/t;->c:Lct/s;

    iget-object v1, v1, Lct/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lct/t;->a:Lct/u;

    invoke-interface {v1, v0}, Lct/u;->a(Ljava/lang/String;)Lct/s;

    move-result-object v1

    iput-object v1, p0, Lct/t;->c:Lct/s;

    iget-object v1, p0, Lct/t;->c:Lct/s;

    if-eqz v1, :cond_3

    const-string v1, "AccessSchedulerStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache succ for current apn:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string v1, "AccessSchedulerStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache failed for apn:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "AccessSchedulerStorageManager"

    const-string v1, "same apn. no need update."

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lct/s$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lct/t;->b()V

    iget-object v0, p0, Lct/t;->c:Lct/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/t;->c:Lct/s;

    iget-object v0, v0, Lct/s;->a:Ljava/lang/String;

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/t;->c:Lct/s;

    iget-object v0, v0, Lct/s;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/s$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lct/s;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AccessSchedulerStorageManager"

    const-string v1, "try updateAccessInfo..."

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "AccessSchedulerStorageManager"

    const-string v1, "updateAccessInfo info==null"

    invoke-static {v0, v1}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lct/t;->c:Lct/s;

    iget-object v0, p0, Lct/t;->a:Lct/u;

    invoke-interface {v0, p1}, Lct/u;->a(Lct/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/Set;)Z
    .locals 5

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "AccessSchedulerStorageManager"

    const-string v1, "isNeedScheduler... "

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lct/t;->b()V

    iget-object v0, p0, Lct/t;->c:Lct/s;

    if-nez v0, :cond_0

    const-string v0, "AccessSchedulerStorageManager"

    const-string v1, "no cache, need schedule..."

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lct/t;->c:Lct/s;

    iget-object v3, v0, Lct/s;->b:Ljava/util/Map;

    if-nez v3, :cond_1

    const-string v0, "AccessSchedulerStorageManager"

    const-string v1, "DomainAccessInfo is null, need schedule..."

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const-string v0, "AccessSchedulerStorageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "DomainAccessInfo map not enough, need schedule...map.size:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lct/s$a;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lct/s$a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4
    const-string v1, "AccessSchedulerStorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "domainInfo for domain:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is null or expired. need schedule..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

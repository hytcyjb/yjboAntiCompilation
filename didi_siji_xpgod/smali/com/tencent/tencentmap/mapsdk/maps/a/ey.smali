.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ey;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"


# instance fields
.field private a:Z

.field private b:[B

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->a:Z

    .line 15
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    .line 16
    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->c:I

    .line 17
    const/16 v0, 0x1388

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->d:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/ey;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->e()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/ey;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/ey;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->c:I

    return v0
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    if-eq v1, v3, :cond_1

    .line 82
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 102
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_1
    :try_start_2
    monitor-exit v2

    .line 86
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ex;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ex;-><init>()V

    .line 87
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ex;->a()Ljava/lang/Integer;

    move-result-object v0

    .line 88
    .local v0, result:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 93
    if-nez v1, :cond_2

    .line 94
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    .line 99
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->g:I

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->h:I

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sput v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->i:I

    .line 102
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 80
    .end local v0           #result:Ljava/lang/Integer;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 84
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    .restart local v0       #result:Ljava/lang/Integer;
    :cond_2
    :try_start_6
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    monitor-enter v1

    .line 31
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->a:Z

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    monitor-enter v1

    .line 37
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->a:Z

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    monitor-enter v3

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->a:Z

    if-nez v0, :cond_0

    monitor-exit v3

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    sget-object v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    if-eq v0, v4, :cond_4

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->b()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->g:I

    if-nez v0, :cond_1

    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->h:I

    if-nez v0, :cond_1

    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->i:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sget v6, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->g:I

    if-ne v0, v6, :cond_2

    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->h:I

    if-ne v4, v0, :cond_2

    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->i:I

    if-ne v5, v0, :cond_2

    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_3

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ds$a;

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    monitor-enter v3

    :try_start_2
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->c:I

    if-lez v0, :cond_5

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    :try_start_3
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->c:I

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ey;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b:[B

    monitor-enter v1

    .line 48
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->a:Z

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

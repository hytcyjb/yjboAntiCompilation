.class Lcom/google/android/gms/analytics/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/af;
.implements Lcom/google/android/gms/analytics/c$b;
.implements Lcom/google/android/gms/analytics/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/r$2;,
        Lcom/google/android/gms/analytics/r$d;,
        Lcom/google/android/gms/analytics/r$b;,
        Lcom/google/android/gms/analytics/r$e;,
        Lcom/google/android/gms/analytics/r$c;,
        Lcom/google/android/gms/analytics/r$a;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private yA:Z

.field private yB:Z

.field private yC:Z

.field private yD:Lcom/google/android/gms/internal/ju;

.field private yE:J

.field private yd:Lcom/google/android/gms/analytics/d;

.field private final ye:Lcom/google/android/gms/analytics/f;

.field private yg:Z

.field private volatile yq:J

.field private volatile yr:Lcom/google/android/gms/analytics/r$a;

.field private volatile ys:Lcom/google/android/gms/analytics/b;

.field private yt:Lcom/google/android/gms/analytics/d;

.field private final yu:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final yv:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/analytics/r$d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile yw:I

.field private volatile yx:Ljava/util/Timer;

.field private volatile yy:Ljava/util/Timer;

.field private volatile yz:Ljava/util/Timer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/r;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/d;Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;Lcom/google/android/gms/analytics/d;Lcom/google/android/gms/analytics/GoogleAnalytics;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/r;->yE:J

    iput-object p3, p0, Lcom/google/android/gms/analytics/r;->yt:Lcom/google/android/gms/analytics/d;

    iput-object p1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/analytics/r;->ye:Lcom/google/android/gms/analytics/f;

    iput-object p4, p0, Lcom/google/android/gms/analytics/r;->yu:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {}, Lcom/google/android/gms/internal/jw;->hA()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yD:Lcom/google/android/gms/internal/ju;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/analytics/r;->yw:I

    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yN:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    return-void
.end method

.method private a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->eh()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/analytics/r$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ej()V

    return-void
.end method

.method private declared-synchronized cC()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yI:Lcom/google/android/gms/analytics/r$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yM:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ek()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/analytics/r;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    return-object v0
.end method

.method private ef()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yx:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yx:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yy:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yy:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yz:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yz:Ljava/util/Timer;

    return-void
.end method

.method private declared-synchronized eh()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/r;->ye:Lcom/google/android/gms/analytics/f;

    invoke-interface {v3}, Lcom/google/android/gms/analytics/f;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->ye:Lcom/google/android/gms/analytics/f;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/f;->dO()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/analytics/r$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/analytics/r$1;-><init>(Lcom/google/android/gms/analytics/r;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/r;->yA:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->dH()V

    :cond_2
    sget-object v2, Lcom/google/android/gms/analytics/r$2;->yG:[I

    iget-object v3, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/r$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/analytics/r$d;

    move-object v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending hit to store  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yd:Lcom/google/android/gms/analytics/d;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/r$d;->em()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/r$d;->en()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/r$d;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/r$d;->eo()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_2
    :try_start_2
    const-string v2, "Blocked. Dropping hits."

    invoke-static {v2}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/r;->yg:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ei()V

    goto :goto_0

    :goto_2
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/analytics/r$d;

    move-object v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending hit to service   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yu:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/r$d;->em()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/r$d;->en()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/r$d;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/r$d;->eo()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/b;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v2, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v2}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yD:Lcom/google/android/gms/internal/ju;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ju;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/analytics/r;->yq:J

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "Need to reconnect"

    invoke-static {v2}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ek()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private ei()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yd:Lcom/google/android/gms/analytics/d;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/d;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yg:Z

    return-void
.end method

.method private declared-synchronized ej()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yJ:Lcom/google/android/gms/analytics/r$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.gms"

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yK:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->disconnect()V

    const-string v0, "Attempted to fall back to local store from service."

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->W(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ef()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yt:Lcom/google/android/gms/analytics/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yt:Lcom/google/android/gms/analytics/d;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yd:Lcom/google/android/gms/analytics/d;

    :goto_1
    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yJ:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->eh()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/analytics/q;->dZ()Lcom/google/android/gms/analytics/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->ye:Lcom/google/android/gms/analytics/f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/q;->a(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/q;->ec()Lcom/google/android/gms/analytics/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yd:Lcom/google/android/gms/analytics/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized ek()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yJ:Lcom/google/android/gms/analytics/r$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/analytics/r;->yw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/r;->yw:I

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yy:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yH:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yy:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yy:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/r$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/r$c;-><init>(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/analytics/r$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->W(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ej()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->W(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ej()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private el()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yx:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yx:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yx:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yx:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/r$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/r$e;-><init>(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/analytics/r$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/analytics/r;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/r;->yq:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/analytics/r;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/r;->yE:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/gms/analytics/r;)Lcom/google/android/gms/internal/ju;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yD:Lcom/google/android/gms/internal/ju;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/analytics/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->cC()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/analytics/r;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yz:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(ILandroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yL:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    iget v0, p0, Lcom/google/android/gms/analytics/r;->yw:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->W(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->el()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->W(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ej()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/hb;",
            ">;)V"
        }
    .end annotation

    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    new-instance v0, Lcom/google/android/gms/analytics/r$d;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/r$d;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->eh()V

    return-void
.end method

.method public dH()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "clearHits called"

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yv:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    sget-object v0, Lcom/google/android/gms/analytics/r$2;->yG:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/r$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yA:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yd:Lcom/google/android/gms/analytics/d;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/analytics/d;->l(J)V

    iput-boolean v4, p0, Lcom/google/android/gms/analytics/r;->yA:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->dH()V

    iput-boolean v4, p0, Lcom/google/android/gms/analytics/r;->yA:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized dN()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yC:Z

    sget-object v0, Lcom/google/android/gms/analytics/r$2;->yG:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/r$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->cC()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yB:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatch()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/r$2;->yG:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/r$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yg:Z

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ei()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public eg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/analytics/c;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/analytics/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/c$b;Lcom/google/android/gms/analytics/c$c;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->ys:Lcom/google/android/gms/analytics/b;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ek()V

    goto :goto_0
.end method

.method public declared-synchronized onConnected()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yy:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yy:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/analytics/r;->yw:I

    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yI:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yB:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->cC()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->yB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->eh()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yz:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yz:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yz:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yz:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/r$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/r$b;-><init>(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/analytics/r$1;)V

    iget-wide v2, p0, Lcom/google/android/gms/analytics/r;->yE:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisconnected()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yK:Lcom/google/android/gms/analytics/r$a;

    if-ne v0, v1, :cond_0

    const-string v0, "Service blocked."

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ef()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yM:Lcom/google/android/gms/analytics/r$a;

    if-ne v0, v1, :cond_1

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ef()V

    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yN:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/android/gms/analytics/z;->V(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yL:Lcom/google/android/gms/analytics/r$a;

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->yr:Lcom/google/android/gms/analytics/r$a;

    iget v0, p0, Lcom/google/android/gms/analytics/r;->yw:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->el()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->ej()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.class public Lcom/ddtaxi/common/tracesdk/bk;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/ddtaxi/common/tracesdk/bk; = null

.field private static final d:I = 0xea60

.field private static final e:F = 10.0f


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/net/wifi/WifiManager;

.field private f:Ljava/util/ArrayList;

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Lcom/ddtaxi/common/tracesdk/bp;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->j:Z

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->k:Z

    new-instance v0, Lcom/ddtaxi/common/tracesdk/bl;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/bl;-><init>(Lcom/ddtaxi/common/tracesdk/bk;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->m:Ljava/lang/Runnable;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/bm;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/bm;-><init>(Lcom/ddtaxi/common/tracesdk/bk;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/bn;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/bn;-><init>(Lcom/ddtaxi/common/tracesdk/bk;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->o:Lcom/ddtaxi/common/tracesdk/bp;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/bo;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/bo;-><init>(Lcom/ddtaxi/common/tracesdk/bk;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->c:Landroid/net/wifi/WifiManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)I
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/bk;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/bk;
    .locals 2

    sget-object v0, Lcom/ddtaxi/common/tracesdk/bk;->a:Lcom/ddtaxi/common/tracesdk/bk;

    if-nez v0, :cond_1

    const-class v1, Lcom/ddtaxi/common/tracesdk/bk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/bk;->a:Lcom/ddtaxi/common/tracesdk/bk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/common/tracesdk/bk;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/bk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/bk;->a:Lcom/ddtaxi/common/tracesdk/bk;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ddtaxi/common/tracesdk/bk;->a:Lcom/ddtaxi/common/tracesdk/bk;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/bk;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/bk;->h:J

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/bk;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/bk;->b(Z)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8

    const/4 v0, 0x0

    const-wide/high16 v6, 0x3fe0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/ddtaxi/common/tracesdk/bk;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    int-to-double v2, v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_2

    int-to-double v1, v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v6

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)[B
    .locals 5

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/at;->l()Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v1

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/bk;->g:J

    invoke-virtual {v1, v2, v3}, Lcom/ddtaxi/common/tracesdk/av;->a(J)Lcom/ddtaxi/common/tracesdk/av;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/av;->m()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/at;->Y()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/bq;

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/aw;->q()Lcom/ddtaxi/common/tracesdk/ay;

    move-result-object v3

    iget-object v4, v0, Lcom/ddtaxi/common/tracesdk/bq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ddtaxi/common/tracesdk/ay;->a(Ljava/lang/String;)Lcom/ddtaxi/common/tracesdk/ay;

    iget v4, v0, Lcom/ddtaxi/common/tracesdk/bq;->d:I

    invoke-virtual {v3, v4}, Lcom/ddtaxi/common/tracesdk/ay;->b(I)Lcom/ddtaxi/common/tracesdk/ay;

    iget v4, v0, Lcom/ddtaxi/common/tracesdk/bq;->c:I

    invoke-virtual {v3, v4}, Lcom/ddtaxi/common/tracesdk/ay;->a(I)Lcom/ddtaxi/common/tracesdk/ay;

    iget-object v0, v0, Lcom/ddtaxi/common/tracesdk/bq;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/ddtaxi/common/tracesdk/ay;->b(Ljava/lang/String;)Lcom/ddtaxi/common/tracesdk/ay;

    invoke-virtual {v1, v3}, Lcom/ddtaxi/common/tracesdk/av;->a(Lcom/ddtaxi/common/tracesdk/ay;)Lcom/ddtaxi/common/tracesdk/av;

    goto :goto_0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/bk;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->j:Z

    return v0
.end method

.method private b(Z)Z
    .locals 11

    const/16 v10, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->g:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x4024

    mul-double/2addr v0, v4

    double-to-int v0, v0

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/bk;->h:J

    iput-wide v4, p0, Lcom/ddtaxi/common/tracesdk/bk;->g:J

    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/bk;->i:J

    iget-wide v6, p0, Lcom/ddtaxi/common/tracesdk/bk;->h:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/bk;->h:J

    iput-wide v4, p0, Lcom/ddtaxi/common/tracesdk/bk;->i:J

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v5}, Lcom/ddtaxi/common/tracesdk/bk;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-direct {p0, v5}, Lcom/ddtaxi/common/tracesdk/bk;->a(Ljava/util/ArrayList;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/f;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/f;->a([B)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->b(Ljava/lang/String;)Z

    iput-object v5, p0, Lcom/ddtaxi/common/tracesdk/bk;->f:Ljava/util/ArrayList;

    move v3, v2

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v7, Lcom/ddtaxi/common/tracesdk/bq;

    const/4 v4, 0x0

    invoke-direct {v7, p0, v4}, Lcom/ddtaxi/common/tracesdk/bq;-><init>(Lcom/ddtaxi/common/tracesdk/bk;Lcom/ddtaxi/common/tracesdk/bq;)V

    if-eqz v1, :cond_6

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v8, "\\|"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_5

    invoke-virtual {v4, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_5
    iput-object v4, v7, Lcom/ddtaxi/common/tracesdk/bq;->a:Ljava/lang/String;

    :goto_4
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v7, Lcom/ddtaxi/common/tracesdk/bq;->b:Ljava/lang/String;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v4, v7, Lcom/ddtaxi/common/tracesdk/bq;->c:I

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, v7, Lcom/ddtaxi/common/tracesdk/bq;->d:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v4, ""

    iput-object v4, v7, Lcom/ddtaxi/common/tracesdk/bq;->a:Ljava/lang/String;

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/bq;

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/bq;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3
.end method

.method static synthetic c(Lcom/ddtaxi/common/tracesdk/bk;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/common/tracesdk/bk;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/ddtaxi/common/tracesdk/bk;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->n:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4

    const-string v0, "WifiMonitor#start()"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->l:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/l;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bk;->o:Lcom/ddtaxi/common/tracesdk/bp;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/l;->a(Lcom/ddtaxi/common/tracesdk/bp;)V

    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bk;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->p:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->h:J

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bk;->p:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->k:Z

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/common/tracesdk/bk;->j:Z

    return-void
.end method

.method b()V
    .locals 2

    const-string v0, "WifiMonitor#stop()"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bk;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bk;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/l;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/l;->c()V

    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bk;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bk;->k:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class final Lcom/ddtaxi/common/tracesdk/bh;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/bf;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/ddtaxi/common/tracesdk/bf;)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/bh;->a:Lcom/ddtaxi/common/tracesdk/bf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/common/tracesdk/bf;Lcom/ddtaxi/common/tracesdk/bh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/bh;-><init>(Lcom/ddtaxi/common/tracesdk/bf;)V

    return-void
.end method

.method private a(Lcom/ddtaxi/common/tracesdk/bg;Ljava/util/ArrayList;)V
    .locals 8

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->a:Lcom/ddtaxi/common/tracesdk/bf;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ddtaxi/common/tracesdk/f;->a(Ljava/util/ArrayList;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data.length[before zip]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->c([B)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->b:Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data.length[after zip]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bh;->a:Lcom/ddtaxi/common/tracesdk/bf;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/ddtaxi/common/tracesdk/a/c;

    invoke-direct {v3}, Lcom/ddtaxi/common/tracesdk/a/c;-><init>()V

    const-string v4, "http://api.diditaxi.com.cn/bigdata/location/uploadtracedata/index.php?c=c_uploadtracedata"

    iput-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->a:Ljava/lang/String;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "os_type"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "uid"

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "imei"

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getIMEI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "imsi"

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "package_name"

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getPakcageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "system_version"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getSystemVerion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "version_name"

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "version_code"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getVersionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v5, "device_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/ddtaxi/common/tracesdk/a/c;->b:Ljava/util/HashMap;

    const-string v4, "sucs_fail_times"

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getTotalSucsFailTimes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/ddtaxi/common/tracesdk/a/c;->c:Ljava/util/HashMap;

    const-string v2, "__trace_log"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/bj;

    invoke-direct {v0, p0, p1}, Lcom/ddtaxi/common/tracesdk/bj;-><init>(Lcom/ddtaxi/common/tracesdk/bh;Lcom/ddtaxi/common/tracesdk/bg;)V

    new-instance v1, Lcom/ddtaxi/common/tracesdk/a/a;

    invoke-direct {v1, v0, v3}, Lcom/ddtaxi/common/tracesdk/a/a;-><init>(Lcom/ddtaxi/common/tracesdk/a/d;Lcom/ddtaxi/common/tracesdk/a/c;)V

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/a/a;->start()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/bh;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/bh;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/bh;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/common/tracesdk/bh;->b:Z

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/bh;)Lcom/ddtaxi/common/tracesdk/bf;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->a:Lcom/ddtaxi/common/tracesdk/bf;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->a:Lcom/ddtaxi/common/tracesdk/bf;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->a(Lcom/ddtaxi/common/tracesdk/bf;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/f;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/bf;->d()[I

    move-result-object v1

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bh;->a:Lcom/ddtaxi/common/tracesdk/bf;

    invoke-static {v2}, Lcom/ddtaxi/common/tracesdk/bf;->b(Lcom/ddtaxi/common/tracesdk/bf;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/f;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->a:Lcom/ddtaxi/common/tracesdk/bf;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->c(Lcom/ddtaxi/common/tracesdk/bf;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->b:Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/ddtaxi/common/tracesdk/bi;

    invoke-direct {v2, p0, v0, v1}, Lcom/ddtaxi/common/tracesdk/bi;-><init>(Lcom/ddtaxi/common/tracesdk/bh;Lcom/ddtaxi/common/tracesdk/f;Ljava/util/ArrayList;)V

    invoke-direct {p0, v2, v1}, Lcom/ddtaxi/common/tracesdk/bh;->a(Lcom/ddtaxi/common/tracesdk/bg;Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->b:Z

    return v0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/bh;->b:Z

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/bh;->b()V

    return-void
.end method

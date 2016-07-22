.class public Lcom/ddtaxi/common/tracesdk/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/ddtaxi/common/tracesdk/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/telephony/TelephonyManager;

.field private d:Landroid/telephony/PhoneStateListener;

.field private e:I

.field private f:Lcom/ddtaxi/common/tracesdk/w;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/a;->e:I

    sget-object v0, Lcom/ddtaxi/common/tracesdk/w;->a:Lcom/ddtaxi/common/tracesdk/w;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/a;->f:Lcom/ddtaxi/common/tracesdk/w;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/a;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/a;
    .locals 2

    sget-object v0, Lcom/ddtaxi/common/tracesdk/a;->a:Lcom/ddtaxi/common/tracesdk/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/ddtaxi/common/tracesdk/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/a;->a:Lcom/ddtaxi/common/tracesdk/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/common/tracesdk/a;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/a;->a:Lcom/ddtaxi/common/tracesdk/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ddtaxi/common/tracesdk/a;->a:Lcom/ddtaxi/common/tracesdk/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/a;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/a;->e:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/a;Lcom/ddtaxi/common/tracesdk/w;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/a;->f:Lcom/ddtaxi/common/tracesdk/w;

    return-void
.end method

.method private a(Lcom/ddtaxi/common/tracesdk/b;)[B
    .locals 5

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->C()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v1

    iget-wide v2, p1, Lcom/ddtaxi/common/tracesdk/b;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/ddtaxi/common/tracesdk/v;->a(J)Lcom/ddtaxi/common/tracesdk/v;

    iget v0, p1, Lcom/ddtaxi/common/tracesdk/b;->c:I

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/v;->c(I)Lcom/ddtaxi/common/tracesdk/v;

    iget v0, p1, Lcom/ddtaxi/common/tracesdk/b;->d:I

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/v;->d(I)Lcom/ddtaxi/common/tracesdk/v;

    iget v0, p1, Lcom/ddtaxi/common/tracesdk/b;->e:I

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/v;->e(I)Lcom/ddtaxi/common/tracesdk/v;

    iget v0, p1, Lcom/ddtaxi/common/tracesdk/b;->f:I

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/v;->f(I)Lcom/ddtaxi/common/tracesdk/v;

    iget-object v0, p1, Lcom/ddtaxi/common/tracesdk/b;->b:Lcom/ddtaxi/common/tracesdk/w;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/common/tracesdk/w;)Lcom/ddtaxi/common/tracesdk/v;

    iget v0, p1, Lcom/ddtaxi/common/tracesdk/b;->g:I

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/v;->h(I)Lcom/ddtaxi/common/tracesdk/v;

    iget v0, p1, Lcom/ddtaxi/common/tracesdk/b;->h:I

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/v;->g(I)Lcom/ddtaxi/common/tracesdk/v;

    iget-object v0, p1, Lcom/ddtaxi/common/tracesdk/b;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ddtaxi/common/tracesdk/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/t;->Y()[B

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/d;

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/y;->o()Lcom/ddtaxi/common/tracesdk/aa;

    move-result-object v3

    iget v4, v0, Lcom/ddtaxi/common/tracesdk/d;->b:I

    invoke-virtual {v3, v4}, Lcom/ddtaxi/common/tracesdk/aa;->b(I)Lcom/ddtaxi/common/tracesdk/aa;

    iget v4, v0, Lcom/ddtaxi/common/tracesdk/d;->a:I

    invoke-virtual {v3, v4}, Lcom/ddtaxi/common/tracesdk/aa;->a(I)Lcom/ddtaxi/common/tracesdk/aa;

    iget v4, v0, Lcom/ddtaxi/common/tracesdk/d;->d:I

    invoke-virtual {v3, v4}, Lcom/ddtaxi/common/tracesdk/aa;->d(I)Lcom/ddtaxi/common/tracesdk/aa;

    iget v0, v0, Lcom/ddtaxi/common/tracesdk/d;->c:I

    invoke-virtual {v3, v0}, Lcom/ddtaxi/common/tracesdk/aa;->c(I)Lcom/ddtaxi/common/tracesdk/aa;

    invoke-virtual {v1, v3}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/common/tracesdk/aa;)Lcom/ddtaxi/common/tracesdk/v;

    goto :goto_0
.end method

.method private c()Lcom/ddtaxi/common/tracesdk/b;
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Lcom/ddtaxi/common/tracesdk/b;

    invoke-direct {v3, p0}, Lcom/ddtaxi/common/tracesdk/b;-><init>(Lcom/ddtaxi/common/tracesdk/a;)V

    :try_start_0
    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/a;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/ddtaxi/common/tracesdk/b;->c:I

    const/4 v4, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/ddtaxi/common/tracesdk/b;->d:I

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/a;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    iput-boolean v2, v3, Lcom/ddtaxi/common/tracesdk/b;->i:Z

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/a;->f:Lcom/ddtaxi/common/tracesdk/w;

    iput-object v2, v3, Lcom/ddtaxi/common/tracesdk/b;->b:Lcom/ddtaxi/common/tracesdk/w;

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/a;->e:I

    iput v2, v3, Lcom/ddtaxi/common/tracesdk/b;->h:I

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/a;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v1, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v3, Lcom/ddtaxi/common/tracesdk/b;->e:I

    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v3, Lcom/ddtaxi/common/tracesdk/b;->f:I

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v1

    iput v1, v3, Lcom/ddtaxi/common/tracesdk/b;->g:I

    :cond_3
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    iput-object v2, v3, Lcom/ddtaxi/common/tracesdk/b;->j:Ljava/util/ArrayList;

    :goto_3
    move-object v1, v3

    goto/16 :goto_0

    :cond_6
    instance-of v1, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    iput v1, v3, Lcom/ddtaxi/common/tracesdk/b;->d:I

    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    iput v1, v3, Lcom/ddtaxi/common/tracesdk/b;->e:I

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iput v1, v3, Lcom/ddtaxi/common/tracesdk/b;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_7
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    if-eqz v1, :cond_4

    new-instance v5, Lcom/ddtaxi/common/tracesdk/d;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/ddtaxi/common/tracesdk/d;-><init>(Lcom/ddtaxi/common/tracesdk/a;Lcom/ddtaxi/common/tracesdk/d;)V

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x71

    iput v6, v5, Lcom/ddtaxi/common/tracesdk/d;->c:I

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    iput v6, v5, Lcom/ddtaxi/common/tracesdk/d;->a:I

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    iput v6, v5, Lcom/ddtaxi/common/tracesdk/d;->b:I

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v1

    iput v1, v5, Lcom/ddtaxi/common/tracesdk/d;->d:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/ddtaxi/common/tracesdk/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private d()V
    .locals 3

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/a;->c()Lcom/ddtaxi/common/tracesdk/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cellInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ddtaxi/common/tracesdk/a;->a(Lcom/ddtaxi/common/tracesdk/b;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/ddtaxi/common/tracesdk/f;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ddtaxi/common/tracesdk/f;->b([B)V

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->b(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    const-string v0, "CellMonitor#start()"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ddtaxi/common/tracesdk/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/common/tracesdk/c;-><init>(Lcom/ddtaxi/common/tracesdk/a;Lcom/ddtaxi/common/tracesdk/c;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/a;->d:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a;->d:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x110

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method b()V
    .locals 3

    const-string v0, "CellMonitor#stop()"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a;->d:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/a;->d:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

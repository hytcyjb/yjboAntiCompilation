.class public Lcom/ddtaxi/common/tracesdk/l;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/ddtaxi/common/tracesdk/l; = null

.field private static final i:F = 10.0f

.field private static final j:F = 25.0f

.field private static final k:J = 0xbb8L


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:Lcom/ddtaxi/common/tracesdk/bc;

.field private e:Lcom/ddtaxi/common/tracesdk/bp;

.field private f:Ljava/util/ArrayList;

.field private g:Lcom/ddtaxi/common/tracesdk/q;

.field private h:J

.field private l:Landroid/location/LocationListener;

.field private m:Landroid/location/GpsStatus$Listener;

.field private n:Landroid/location/GpsStatus$NmeaListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/l;->h:J

    new-instance v0, Lcom/ddtaxi/common/tracesdk/m;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/m;-><init>(Lcom/ddtaxi/common/tracesdk/l;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->l:Landroid/location/LocationListener;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/n;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/n;-><init>(Lcom/ddtaxi/common/tracesdk/l;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->m:Landroid/location/GpsStatus$Listener;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/o;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/o;-><init>(Lcom/ddtaxi/common/tracesdk/l;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->n:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->c:Landroid/location/LocationManager;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/bc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/common/tracesdk/bc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->d:Lcom/ddtaxi/common/tracesdk/bc;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/common/tracesdk/q;-><init>(Lcom/ddtaxi/common/tracesdk/l;Lcom/ddtaxi/common/tracesdk/q;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->g:Lcom/ddtaxi/common/tracesdk/q;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/l;)Lcom/ddtaxi/common/tracesdk/bp;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->e:Lcom/ddtaxi/common/tracesdk/bp;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/l;
    .locals 2

    sget-object v0, Lcom/ddtaxi/common/tracesdk/l;->a:Lcom/ddtaxi/common/tracesdk/l;

    if-nez v0, :cond_1

    const-class v1, Lcom/ddtaxi/common/tracesdk/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/l;->a:Lcom/ddtaxi/common/tracesdk/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/common/tracesdk/l;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/l;->a:Lcom/ddtaxi/common/tracesdk/l;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ddtaxi/common/tracesdk/l;->a:Lcom/ddtaxi/common/tracesdk/l;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/location/Location;)Lcom/ddtaxi/common/tracesdk/p;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/ddtaxi/common/tracesdk/p;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/p;-><init>(Lcom/ddtaxi/common/tracesdk/l;)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/l;->d:Lcom/ddtaxi/common/tracesdk/bc;

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/bc;->a()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "pdop"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/ddtaxi/common/tracesdk/p;->f:F

    const-string v2, "hdop"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/ddtaxi/common/tracesdk/p;->g:F

    const-string v2, "vdop"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/ddtaxi/common/tracesdk/p;->h:F

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ddtaxi/common/tracesdk/p;->b:D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ddtaxi/common/tracesdk/p;->c:D

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ddtaxi/common/tracesdk/p;->d:D

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    iput v1, v0, Lcom/ddtaxi/common/tracesdk/p;->i:F

    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, v0, Lcom/ddtaxi/common/tracesdk/p;->e:F

    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    iput v1, v0, Lcom/ddtaxi/common/tracesdk/p;->k:F

    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ddtaxi/common/tracesdk/p;->j:J

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/l;->f:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/ddtaxi/common/tracesdk/p;->l:I

    iput-object v1, v0, Lcom/ddtaxi/common/tracesdk/p;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/l;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/l;->h:J

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/l;Landroid/location/Location;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/l;->c(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/ddtaxi/common/tracesdk/p;)[B
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->Q()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    iget-wide v1, p1, Lcom/ddtaxi/common/tracesdk/p;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->a(J)Lcom/ddtaxi/common/tracesdk/aj;

    iget-wide v1, p1, Lcom/ddtaxi/common/tracesdk/p;->b:D

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->a(D)Lcom/ddtaxi/common/tracesdk/aj;

    iget-wide v1, p1, Lcom/ddtaxi/common/tracesdk/p;->c:D

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->b(D)Lcom/ddtaxi/common/tracesdk/aj;

    iget-wide v1, p1, Lcom/ddtaxi/common/tracesdk/p;->d:D

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->c(D)Lcom/ddtaxi/common/tracesdk/aj;

    iget v1, p1, Lcom/ddtaxi/common/tracesdk/p;->e:F

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->a(F)Lcom/ddtaxi/common/tracesdk/aj;

    iget v1, p1, Lcom/ddtaxi/common/tracesdk/p;->f:F

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->b(F)Lcom/ddtaxi/common/tracesdk/aj;

    iget v1, p1, Lcom/ddtaxi/common/tracesdk/p;->g:F

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->c(F)Lcom/ddtaxi/common/tracesdk/aj;

    iget v1, p1, Lcom/ddtaxi/common/tracesdk/p;->h:F

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->d(F)Lcom/ddtaxi/common/tracesdk/aj;

    iget v1, p1, Lcom/ddtaxi/common/tracesdk/p;->i:F

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->e(F)Lcom/ddtaxi/common/tracesdk/aj;

    iget-wide v1, p1, Lcom/ddtaxi/common/tracesdk/p;->j:J

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->b(J)Lcom/ddtaxi/common/tracesdk/aj;

    iget v1, p1, Lcom/ddtaxi/common/tracesdk/p;->k:F

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->f(F)Lcom/ddtaxi/common/tracesdk/aj;

    iget v1, p1, Lcom/ddtaxi/common/tracesdk/p;->l:I

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->c(I)Lcom/ddtaxi/common/tracesdk/aj;

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/ah;->Y()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/l;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/location/Location;)V
    .locals 11

    const/high16 v10, 0x4120

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/l;->a(Landroid/location/Location;)Lcom/ddtaxi/common/tracesdk/p;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xf

    new-array v8, v0, [F

    iget-wide v0, v9, Lcom/ddtaxi/common/tracesdk/p;->c:D

    iget-wide v2, v9, Lcom/ddtaxi/common/tracesdk/p;->b:D

    iget-object v4, p0, Lcom/ddtaxi/common/tracesdk/l;->g:Lcom/ddtaxi/common/tracesdk/q;

    iget-wide v4, v4, Lcom/ddtaxi/common/tracesdk/q;->a:D

    iget-object v6, p0, Lcom/ddtaxi/common/tracesdk/l;->g:Lcom/ddtaxi/common/tracesdk/q;

    iget-wide v6, v6, Lcom/ddtaxi/common/tracesdk/q;->b:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    cmpl-float v1, v0, v10

    if-ltz v1, :cond_2

    iget v1, v9, Lcom/ddtaxi/common/tracesdk/p;->i:F

    cmpg-float v1, v1, v10

    if-ltz v1, :cond_3

    :cond_2
    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_3
    invoke-direct {p0, v9}, Lcom/ddtaxi/common/tracesdk/l;->a(Lcom/ddtaxi/common/tracesdk/p;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/f;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/f;->c([B)V

    invoke-virtual {v9}, Lcom/ddtaxi/common/tracesdk/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->g:Lcom/ddtaxi/common/tracesdk/q;

    iget-wide v1, v9, Lcom/ddtaxi/common/tracesdk/p;->c:D

    iput-wide v1, v0, Lcom/ddtaxi/common/tracesdk/q;->a:D

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->g:Lcom/ddtaxi/common/tracesdk/q;

    iget-wide v1, v9, Lcom/ddtaxi/common/tracesdk/p;->b:D

    iput-wide v1, v0, Lcom/ddtaxi/common/tracesdk/q;->b:D

    goto :goto_0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/l;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/l;->b(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/common/tracesdk/l;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method private c(Landroid/location/Location;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x41c8

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x4120

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/l;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/ddtaxi/common/tracesdk/l;)Lcom/ddtaxi/common/tracesdk/bc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->d:Lcom/ddtaxi/common/tracesdk/bc;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 6

    const-string v0, "GpsMonitor#start()"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->c:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/ddtaxi/common/tracesdk/l;->l:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/l;->m:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/l;->n:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lcom/ddtaxi/common/tracesdk/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/l;->e:Lcom/ddtaxi/common/tracesdk/bp;

    return-void
.end method

.method b()V
    .locals 2

    const-string v0, "GpsMonitor#stop()"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/l;->l:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/l;->m:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/l;->n:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->e:Lcom/ddtaxi/common/tracesdk/bp;

    return-void
.end method

.method d()F
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->d:Lcom/ddtaxi/common/tracesdk/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/l;->d:Lcom/ddtaxi/common/tracesdk/bc;

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/bc;->a()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

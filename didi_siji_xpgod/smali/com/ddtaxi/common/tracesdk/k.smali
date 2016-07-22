.class public Lcom/ddtaxi/common/tracesdk/k;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/ddtaxi/common/tracesdk/k; = null

.field private static final d:I = 0xa


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/location/Location;

.field private volatile e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/k;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/k;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/k;
    .locals 2

    sget-object v0, Lcom/ddtaxi/common/tracesdk/k;->a:Lcom/ddtaxi/common/tracesdk/k;

    if-nez v0, :cond_1

    const-class v1, Lcom/ddtaxi/common/tracesdk/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/k;->a:Lcom/ddtaxi/common/tracesdk/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/common/tracesdk/k;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/k;->a:Lcom/ddtaxi/common/tracesdk/k;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ddtaxi/common/tracesdk/k;->a:Lcom/ddtaxi/common/tracesdk/k;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Landroid/location/Location;)V
    .locals 2

    const-string v0, "ExtraLocMonitor#saveLocation"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/k;->c(Landroid/location/Location;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/k;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/f;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/f;->d([B)V

    return-void
.end method

.method private c(Landroid/location/Location;)[B
    .locals 4

    const/high16 v2, -0x4080

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ad;->w()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->a(J)Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->b(D)Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->a(D)Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->b(J)Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->c(D)Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ddtaxi/common/tracesdk/af;->a(F)Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Lcom/ddtaxi/common/tracesdk/af;->b(F)Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    :cond_0
    invoke-virtual {v3, v2}, Lcom/ddtaxi/common/tracesdk/af;->c(F)Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {v3}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/ad;->Y()[B

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/high16 v0, -0x4010

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/k;->e:Z

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 9

    const-string v0, "ExtraLocMonitor#onLocationChanged"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/k;->e:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/k;->c:Landroid/location/Location;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/k;->b(Landroid/location/Location;)V

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/k;->c:Landroid/location/Location;

    goto :goto_0

    :cond_2
    const/16 v0, 0xf

    new-array v8, v0, [F

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/k;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/k;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/k;->b(Landroid/location/Location;)V

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/k;->c:Landroid/location/Location;

    goto :goto_0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/k;->e:Z

    return-void
.end method

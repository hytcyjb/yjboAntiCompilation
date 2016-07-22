.class final Lct/br;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private a:J

.field private final b:Lct/be;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private volatile h:Z

.field private i:Z

.field private final j:[D


# direct methods
.method public constructor <init>(Lct/be;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/br;->a:J

    .line 54
    const/16 v0, 0x400

    iput v0, p0, Lct/br;->c:I

    .line 56
    iput-boolean v2, p0, Lct/br;->d:Z

    .line 57
    iput-boolean v2, p0, Lct/br;->e:Z

    .line 59
    iput v2, p0, Lct/br;->f:I

    .line 60
    iput v2, p0, Lct/br;->g:I

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lct/br;->j:[D

    .line 69
    iput-object p1, p0, Lct/br;->b:Lct/be;

    .line 70
    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .locals 4
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 224
    sget-boolean v2, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->MOCK_LOCATION_FILTER:Z

    if-nez v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    :try_start_0
    iget-object v2, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v2}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 231
    goto :goto_0

    :catch_0
    move-exception v2

    .line 237
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 239
    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Lct/br;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 207
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 208
    const/16 v2, 0x32c7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 209
    const/16 v2, 0x2ee2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 210
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 211
    iget-object v0, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v0, v1}, Lct/be;->c(Ljava/lang/Object;)V

    .line 212
    return-void

    .line 200
    :cond_0
    iget v0, p0, Lct/br;->c:I

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lct/br;->g:I

    iput v0, p0, Lct/br;->f:I

    .line 370
    iget-object v0, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 372
    if-nez v0, :cond_1

    .line 388
    :cond_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    .line 377
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 379
    if-eqz v2, :cond_0

    .line 382
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lct/br;->f:I

    if-gt v0, v1, :cond_0

    .line 383
    iget v0, p0, Lct/br;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/br;->f:I

    .line 384
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget v0, p0, Lct/br;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/br;->g:I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lct/br;->h:Z

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 106
    :cond_0
    iput-boolean v2, p0, Lct/br;->h:Z

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/br;->a:J

    .line 109
    const/16 v0, 0x400

    iput v0, p0, Lct/br;->c:I

    .line 110
    iput-boolean v2, p0, Lct/br;->d:Z

    .line 111
    iput-boolean v2, p0, Lct/br;->e:Z

    .line 112
    iput v2, p0, Lct/br;->f:I

    .line 113
    iput v2, p0, Lct/br;->g:I

    .line 114
    iput-boolean v2, p0, Lct/br;->i:Z

    .line 115
    iget-object v0, p0, Lct/br;->j:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 117
    iget-object v0, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v0, p0}, Lct/be;->b(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 121
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :goto_2
    const-string v0, "TxGpsProvider"

    const-string v1, "shutdown: state=[shutdown]"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 74
    iget-boolean v0, p0, Lct/br;->h:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-boolean v7, p0, Lct/br;->h:Z

    .line 79
    iget-object v0, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v0, p0}, Lct/be;->a(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 85
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 86
    const-string v1, "gps"

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x3f00

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    invoke-virtual {p0}, Lct/br;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x4

    iput v0, p0, Lct/br;->c:I

    .line 96
    invoke-direct {p0}, Lct/br;->d()V

    .line 99
    :cond_1
    const-string v0, "TxGpsProvider"

    const-string v1, "startup: state=[start]"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    sput-boolean v7, Lct/cl;->a:Z

    .line 90
    const-string v1, "TxGpsProvider"

    const-string v2, "startup: can not add location listener"

    invoke-static {v1, v2, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lct/br;->i:Z

    .line 156
    return-void
.end method

.method public final b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 132
    iget v1, p0, Lct/br;->c:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lct/br;->a:J

    sub-long/2addr v1, v3

    invoke-static {}, Lct/bq;->a()Lct/bq;

    move-result-object v3

    invoke-virtual {v3}, Lct/bq;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 139
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v1}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v1

    .line 147
    :try_start_0
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 151
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onDeflectedEvent(Landroid/location/Location;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 283
    sget-object v0, Lct/bn;->b:Landroid/location/Location;

    if-ne p1, v0, :cond_0

    .line 285
    new-instance v0, Lct/cb;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lct/cb;-><init>(Landroid/location/Location;JIII)V

    .line 286
    iget-object v1, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v1, v0}, Lct/be;->c(Ljava/lang/Object;)V

    .line 293
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v0, Lct/cb;

    iget-wide v2, p0, Lct/br;->a:J

    iget v4, p0, Lct/br;->f:I

    iget v5, p0, Lct/br;->g:I

    iget v6, p0, Lct/br;->c:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lct/cb;-><init>(Landroid/location/Location;JIII)V

    .line 291
    iget-object v1, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v1, v0}, Lct/be;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onGpsStatusChanged(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 349
    packed-switch p1, :pswitch_data_0

    .line 360
    :goto_0
    invoke-direct {p0}, Lct/br;->e()V

    .line 364
    iget-object v0, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_5

    move v2, v3

    :goto_1
    iget-object v0, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_0
    :goto_2
    if-lez v2, :cond_1

    iput-boolean v6, p0, Lct/br;->e:Z

    :cond_1
    if-lez v3, :cond_2

    iput-boolean v6, p0, Lct/br;->d:Z

    :cond_2
    iget-boolean v0, p0, Lct/br;->e:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-le v2, v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lct/br;->d:Z

    .line 365
    :cond_4
    return-void

    .line 351
    :pswitch_0
    iget v0, p0, Lct/br;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/br;->c:I

    goto :goto_0

    .line 354
    :pswitch_1
    iput v1, p0, Lct/br;->c:I

    goto :goto_0

    .line 357
    :pswitch_2
    iget v0, p0, Lct/br;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lct/br;->c:I

    goto :goto_0

    .line 364
    :cond_5
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    if-nez v4, :cond_6

    move v2, v3

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    if-gt v0, v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v2, v0

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v4

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    if-gt v1, v4, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    move v3, v1

    goto :goto_2

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v11, 0x3ff0

    const-wide v9, 0x3e45798ee2308c3aL

    const/4 v2, 0x0

    .line 297
    if-eqz p1, :cond_0

    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 302
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 303
    const-wide v7, 0x403dffffe2000000L

    cmpl-double v0, v3, v7

    if-eqz v0, :cond_2

    const-wide v7, 0x4059fffffc800000L

    cmpl-double v0, v5, v7

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lct/br;->e()V

    .line 308
    iget v0, p0, Lct/br;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lct/br;->c:I

    .line 310
    iget-object v0, p0, Lct/br;->b:Lct/be;

    iget-object v0, v0, Lct/be;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lct/br;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lct/br;->a:J

    .line 316
    iget-boolean v0, p0, Lct/br;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lct/br;->j:[D

    invoke-static {p1, v0}, Lct/b$a;->a(Landroid/location/Location;[D)Z

    iget-object v0, p0, Lct/br;->j:[D

    aget-wide v2, v0, v2

    iget-object v0, p0, Lct/br;->j:[D

    aget-wide v0, v0, v1

    invoke-static {p1, v2, v3, v0, v1}, Lct/bo;->a(Landroid/location/Location;DD)V

    :cond_3
    new-instance v0, Lct/cb;

    iget-wide v2, p0, Lct/br;->a:J

    iget v4, p0, Lct/br;->f:I

    iget v5, p0, Lct/br;->g:I

    iget v6, p0, Lct/br;->c:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lct/cb;-><init>(Landroid/location/Location;JIII)V

    iget-object v1, p0, Lct/br;->b:Lct/be;

    invoke-virtual {v1, v0}, Lct/be;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 303
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v0, v7, v9

    if-ltz v0, :cond_5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v0, v7, v9

    if-gez v0, :cond_6

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    sub-double v7, v3, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v0, v7, v9

    if-ltz v0, :cond_7

    sub-double v7, v5, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v0, v7, v9

    if-gez v0, :cond_8

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    const-wide v7, -0x3fa9800000000000L

    cmpg-double v0, v3, v7

    if-ltz v0, :cond_9

    const-wide v7, 0x4056800000000000L

    cmpl-double v0, v3, v7

    if-gtz v0, :cond_9

    const-wide v3, -0x3f99800000000000L

    cmpg-double v0, v5, v3

    if-ltz v0, :cond_9

    const-wide v3, 0x4066800000000000L

    cmpl-double v0, v5, v3

    if-lez v0, :cond_a

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 336
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "TxGpsProvider"

    const-string v1, "onProviderDisabled: gps is disabled"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iput v2, p0, Lct/br;->g:I

    iput v2, p0, Lct/br;->f:I

    .line 340
    iput v2, p0, Lct/br;->c:I

    .line 341
    iput-boolean v2, p0, Lct/br;->d:Z

    .line 342
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/br;->a:J

    .line 343
    invoke-direct {p0}, Lct/br;->d()V

    .line 345
    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "TxGpsProvider"

    const-string v1, "onProviderEnabled: gps is enabled"

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x4

    iput v0, p0, Lct/br;->c:I

    .line 329
    invoke-direct {p0}, Lct/br;->d()V

    .line 332
    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    return-void
.end method

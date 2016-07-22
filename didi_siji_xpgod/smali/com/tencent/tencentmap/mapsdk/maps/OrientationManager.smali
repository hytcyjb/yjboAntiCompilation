.class public Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static a:Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:F

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mcontex"

    .prologue
    .line 41
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->e:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->e:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;
    .locals 1
    .parameter "mcontex"

    .prologue
    .line 34
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;

    return-object v0
.end method


# virtual methods
.method public addOrientationListener(Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->enable()V

    .line 77
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->e:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 79
    .local v1, sensorManager:Landroid/hardware/SensorManager;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, sensor:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0           #sensor:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v1           #sensorManager:Landroid/hardware/SensorManager;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->disable()V

    .line 53
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->e:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 55
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #sensorManager:Landroid/hardware/SensorManager;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->e:Landroid/content/Context;

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 118
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 173
    if-ltz p1, :cond_0

    .line 174
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->c:I

    .line 176
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    .line 123
    iget-object v8, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 124
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v0, v8, v9

    .line 125
    .local v0, a:F
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x1

    aget v6, v8, v9

    .line 126
    .local v6, y:F
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v7, v8, v9

    .line 128
    .local v7, z:F
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-nez v8, :cond_1

    .line 169
    .end local v0           #a:F
    .end local v6           #y:F
    .end local v7           #z:F
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v0       #a:F
    .restart local v6       #y:F
    .restart local v7       #z:F
    :cond_1
    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->d:F

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x41f0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 134
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->d:F

    goto :goto_0

    .line 137
    :cond_2
    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->d:F

    add-float/2addr v8, v0

    const/high16 v9, 0x4000

    div-float v0, v8, v9

    .line 138
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->d:F

    .line 141
    const/4 v5, 0x0

    .line 143
    .local v5, viewStat:I
    :try_start_0
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 144
    const/4 v5, 0x1

    .line 150
    :cond_3
    :goto_1
    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->c:I

    .line 151
    .local v3, o:I
    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 152
    const/16 v8, 0x2d

    if-le v3, v8, :cond_6

    const/16 v8, 0x87

    if-gt v3, v8, :cond_6

    .line 153
    const/high16 v8, 0x4387

    add-float/2addr v8, v0

    const/high16 v9, 0x43b4

    rem-float v0, v8, v9

    .line 160
    :cond_4
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v4, temp:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;>;"
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;

    .line 163
    .local v2, listener:Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;
    if-eqz v2, :cond_5

    .line 164
    invoke-interface {v2, v0, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;->onOrientationChanged(FFF)V

    goto :goto_3

    .line 147
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;
    .end local v3           #o:I
    .end local v4           #temp:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;>;"
    :catch_0
    move-exception v8

    const/4 v5, 0x0

    goto :goto_1

    .line 154
    .restart local v3       #o:I
    :cond_6
    const/16 v8, 0x87

    if-le v3, v8, :cond_7

    const/16 v8, 0xe1

    if-gt v3, v8, :cond_7

    .line 155
    const/high16 v8, 0x4334

    add-float/2addr v8, v0

    const/high16 v9, 0x43b4

    rem-float v0, v8, v9

    goto :goto_2

    .line 156
    :cond_7
    const/16 v8, 0xe1

    if-le v3, v8, :cond_4

    const/16 v8, 0x13b

    if-ge v3, v8, :cond_4

    .line 157
    const/high16 v8, 0x42b4

    add-float/2addr v8, v0

    const/high16 v9, 0x43b4

    rem-float v0, v8, v9

    goto :goto_2
.end method

.method public removeOrientationListener(Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->disable()V

    .line 103
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->e:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 105
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0           #sensorManager:Landroid/hardware/SensorManager;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

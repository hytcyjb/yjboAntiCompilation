.class public Lcom/zhihu/android/base/util/i;
.super Ljava/lang/Object;
.source "ShakeHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/base/util/i$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:F

.field private d:F

.field private e:Lcom/zhihu/android/base/util/i$a;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/base/util/i;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/base/util/i;->f:Z

    .line 50
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 55
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/zhihu/android/base/util/i$a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 31
    iget-boolean v0, p0, Lcom/zhihu/android/base/util/i;->f:Z

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    iput-boolean v2, p0, Lcom/zhihu/android/base/util/i;->f:Z

    .line 41
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/zhihu/android/base/util/i;->e:Lcom/zhihu/android/base/util/i$a;

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    iget-wide v2, p0, Lcom/zhihu/android/base/util/i;->a:J

    sub-long v2, v0, v2

    .line 67
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iput-wide v0, p0, Lcom/zhihu/android/base/util/i;->a:J

    .line 73
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iget v1, p0, Lcom/zhihu/android/base/util/i;->b:F

    sub-float/2addr v0, v1

    .line 74
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    iget v4, p0, Lcom/zhihu/android/base/util/i;->c:F

    sub-float/2addr v1, v4

    .line 75
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    iget v5, p0, Lcom/zhihu/android/base/util/i;->d:F

    sub-float/2addr v4, v5

    .line 77
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    iput v5, p0, Lcom/zhihu/android/base/util/i;->b:F

    .line 78
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    iput v5, p0, Lcom/zhihu/android/base/util/i;->c:F

    .line 79
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    iput v5, p0, Lcom/zhihu/android/base/util/i;->d:F

    .line 81
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v4, v4

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 83
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/zhihu/android/base/util/i;->e:Lcom/zhihu/android/base/util/i$a;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/zhihu/android/base/util/i;->e:Lcom/zhihu/android/base/util/i$a;

    invoke-interface {v1, v0}, Lcom/zhihu/android/base/util/i$a;->e(I)V

    goto :goto_0
.end method

.class Lcom/tendcloud/tenddata/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final a:F

.field final b:F

.field c:Z

.field final synthetic d:Lcom/tendcloud/tenddata/d;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/d;)V
    .locals 1

    iput-object p1, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/tendcloud/tenddata/ab;->a:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/tendcloud/tenddata/ab;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ab;->c:Z

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v4

    aget v2, v0, v5

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/tendcloud/tenddata/ab;->c:Z

    if-nez v1, :cond_4

    const/high16 v1, 0x4234

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput-boolean v5, p0, Lcom/tendcloud/tenddata/ab;->c:Z

    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->c(Lcom/tendcloud/tenddata/d;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->d(Lcom/tendcloud/tenddata/d;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->e(Lcom/tendcloud/tenddata/d;)Lcom/tendcloud/tenddata/d$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->f(Lcom/tendcloud/tenddata/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->f(Lcom/tendcloud/tenddata/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->e(Lcom/tendcloud/tenddata/d;)Lcom/tendcloud/tenddata/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tendcloud/tenddata/d$a;->a()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->a(Lcom/tendcloud/tenddata/d;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0}, Lcom/tendcloud/tenddata/d;->a(Lcom/tendcloud/tenddata/d;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v1}, Lcom/tendcloud/tenddata/d;->b(Lcom/tendcloud/tenddata/d;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/ab;->d:Lcom/tendcloud/tenddata/d;

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/d;->a(Lcom/tendcloud/tenddata/d;I)I

    :cond_3
    return-void

    :cond_4
    const/high16 v1, 0x41c8

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iput-boolean v4, p0, Lcom/tendcloud/tenddata/ab;->c:Z

    goto :goto_0
.end method

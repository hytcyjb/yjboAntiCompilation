.class final Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$7;
.super Ljava/lang/Object;
.source "WaitForArrivelMapHelper.java"

# interfaces
.implements Lcom/didi/map/CompassManager$CompassListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 454
    const-string v0, ""

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isSimpleMarkerRemove()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    invoke-static {p1}, Lcom/didi/map/marker/MarkerController;->updateSimpleMarkerAngle(F)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isTimeDownMarkerRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    invoke-static {p1}, Lcom/didi/map/marker/MarkerController;->updateTimeDownMarkerAngle(F)V

    goto :goto_0
.end method

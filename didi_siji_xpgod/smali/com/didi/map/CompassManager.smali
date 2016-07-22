.class public Lcom/didi/map/CompassManager;
.super Ljava/lang/Object;
.source "CompassManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/map/CompassManager$CompassListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/didi/map/CompassManager;


# instance fields
.field private mListener:Lcom/didi/map/CompassManager$CompassListener;

.field private orentationListener:Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/didi/map/CompassManager;)Lcom/didi/map/CompassManager$CompassListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/didi/map/CompassManager;->mListener:Lcom/didi/map/CompassManager$CompassListener;

    return-object v0
.end method

.method public static getInstance()Lcom/didi/map/CompassManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/didi/map/CompassManager;->mInstance:Lcom/didi/map/CompassManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/didi/map/CompassManager;

    invoke-direct {v0}, Lcom/didi/map/CompassManager;-><init>()V

    sput-object v0, Lcom/didi/map/CompassManager;->mInstance:Lcom/didi/map/CompassManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/didi/map/CompassManager;->mInstance:Lcom/didi/map/CompassManager;

    return-object v0
.end method

.method private setUpSensorManager()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/map/CompassManager;->orentationListener:Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/didi/map/CompassManager$1;

    invoke-direct {v0, p0}, Lcom/didi/map/CompassManager$1;-><init>(Lcom/didi/map/CompassManager;)V

    iput-object v0, p0, Lcom/didi/map/CompassManager;->orentationListener:Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public startCompass(Lcom/didi/map/CompassManager$CompassListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/map/CompassManager;->mListener:Lcom/didi/map/CompassManager$CompassListener;

    if-nez v0, :cond_0

    .line 27
    iput-object p1, p0, Lcom/didi/map/CompassManager;->mListener:Lcom/didi/map/CompassManager$CompassListener;

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/didi/map/CompassManager;->setUpSensorManager()V

    .line 30
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->getInstance(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/CompassManager;->orentationListener:Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->addOrientationListener(Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;)V

    .line 31
    return-void
.end method

.method public stopCompass()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->getInstance(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/CompassManager;->orentationListener:Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/OrientationManager;->removeOrientationListener(Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;)V

    .line 35
    iput-object v2, p0, Lcom/didi/map/CompassManager;->orentationListener:Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;

    .line 36
    iput-object v2, p0, Lcom/didi/map/CompassManager;->mListener:Lcom/didi/map/CompassManager$CompassListener;

    .line 37
    return-void
.end method

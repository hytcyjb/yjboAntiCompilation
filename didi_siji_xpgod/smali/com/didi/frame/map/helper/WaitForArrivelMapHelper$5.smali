.class final Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$5;
.super Ljava/lang/Object;
.source "WaitForArrivelMapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->registerCompssListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 426
    const-string v0, "stopCompassStart"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->mCompassListener:Lcom/didi/map/CompassManager$CompassListener;

    invoke-static {v0}, Lcom/didi/map/MapController;->startCompass(Lcom/didi/map/CompassManager$CompassListener;)V

    .line 428
    return-void
.end method

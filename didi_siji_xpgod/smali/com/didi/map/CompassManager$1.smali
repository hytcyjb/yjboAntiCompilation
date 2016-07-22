.class Lcom/didi/map/CompassManager$1;
.super Ljava/lang/Object;
.source "CompassManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/OrientationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/CompassManager;->setUpSensorManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/CompassManager;


# direct methods
.method constructor <init>(Lcom/didi/map/CompassManager;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/map/CompassManager$1;->this$0:Lcom/didi/map/CompassManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/map/CompassManager$1;->this$0:Lcom/didi/map/CompassManager;

    #getter for: Lcom/didi/map/CompassManager;->mListener:Lcom/didi/map/CompassManager$CompassListener;
    invoke-static {v0}, Lcom/didi/map/CompassManager;->access$000(Lcom/didi/map/CompassManager;)Lcom/didi/map/CompassManager$CompassListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/didi/map/CompassManager$1;->this$0:Lcom/didi/map/CompassManager;

    #getter for: Lcom/didi/map/CompassManager;->mListener:Lcom/didi/map/CompassManager$CompassListener;
    invoke-static {v0}, Lcom/didi/map/CompassManager;->access$000(Lcom/didi/map/CompassManager;)Lcom/didi/map/CompassManager$CompassListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/didi/map/CompassManager$CompassListener;->onOrientationChanged(F)V

    .line 51
    :cond_0
    return-void
.end method

.class Lcom/didi/car/helper/CarMoveAnimationHelper$2;
.super Ljava/lang/Object;
.source "CarMoveAnimationHelper.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarMoveAnimationHelper;->moveSyncAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

.field final synthetic val$latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarMoveAnimationHelper;FLcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    iput p2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->val$to:F

    iput-object p3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->val$latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->val$to:F

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    .line 263
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->val$latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 264
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$2;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$300(Lcom/didi/car/helper/CarMoveAnimationHelper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x27d9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

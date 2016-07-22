.class Lcom/didi/car/helper/CarMoveAnimationHelper$3$1;
.super Ljava/lang/Object;
.source "CarMoveAnimationHelper.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarMoveAnimationHelper$3;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/car/helper/CarMoveAnimationHelper$3;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarMoveAnimationHelper$3;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3$1;->this$1:Lcom/didi/car/helper/CarMoveAnimationHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3$1;->this$1:Lcom/didi/car/helper/CarMoveAnimationHelper$3;

    iget-object v0, v0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3$1;->this$1:Lcom/didi/car/helper/CarMoveAnimationHelper$3;

    iget-object v1, v1, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->val$latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 314
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3$1;->this$1:Lcom/didi/car/helper/CarMoveAnimationHelper$3;

    iget-object v0, v0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$300(Lcom/didi/car/helper/CarMoveAnimationHelper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x27d9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

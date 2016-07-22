.class Lcom/didi/car/helper/CarMoveAnimationHelper$3;
.super Ljava/lang/Object;
.source "CarMoveAnimationHelper.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarMoveAnimationHelper;->moveSerialAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

.field final synthetic val$latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field final synthetic val$rotateDuration:I

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarMoveAnimationHelper;FLcom/tencent/tencentmap/mapsdk/maps/model/LatLng;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    iput p2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->val$to:F

    iput-object p3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->val$latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iput p4, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->val$rotateDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 5

    .prologue
    const/16 v2, 0x3e8

    .line 298
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v3}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v3

    if-nez v3, :cond_0

    .line 319
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v3}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v3

    iget v4, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->val$to:F

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    .line 302
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;

    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->val$latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 303
    .local v0, animation:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->frequency:I
    invoke-static {v3}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$400(Lcom/didi/car/helper/CarMoveAnimationHelper;)I

    move-result v3

    iget-object v4, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;
    invoke-static {v4}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$100(Lcom/didi/car/helper/CarMoveAnimationHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    iget v4, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->val$rotateDuration:I

    sub-int v1, v3, v4

    .line 304
    .local v1, transDuration:I
    if-ge v1, v2, :cond_1

    move v1, v2

    .line 305
    :cond_1
    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->setDuration(I)V

    .line 306
    iget-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v2}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v2

    new-instance v3, Lcom/didi/car/helper/CarMoveAnimationHelper$3$1;

    invoke-direct {v3, p0}, Lcom/didi/car/helper/CarMoveAnimationHelper$3$1;-><init>(Lcom/didi/car/helper/CarMoveAnimationHelper$3;)V

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimationListener(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 317
    iget-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v2}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 318
    iget-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper$3;->this$0:Lcom/didi/car/helper/CarMoveAnimationHelper;

    #getter for: Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v2}, Lcom/didi/car/helper/CarMoveAnimationHelper;->access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->startAnimation()Z

    goto :goto_0
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

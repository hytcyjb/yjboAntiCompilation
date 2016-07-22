.class Lcom/didi/frame/DepartureActivity$11;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/DepartureActivity;->animation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;

.field final synthetic val$l:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    iput-object p2, p0, Lcom/didi/frame/DepartureActivity$11;->val$l:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 628
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$3100(Lcom/didi/frame/DepartureActivity;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$3100(Lcom/didi/frame/DepartureActivity;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$11;->val$l:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/didi/map/MapController;->lineDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$11;->val$l:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/didi/frame/DepartureActivity$11;->val$l:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    #calls: Lcom/didi/frame/DepartureActivity;->getAddressList(DD)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/frame/DepartureActivity;->access$3200(Lcom/didi/frame/DepartureActivity;DD)V

    .line 635
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$11;->val$l:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    #setter for: Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$3102(Lcom/didi/frame/DepartureActivity;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 636
    return-void

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$2600(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$2600(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->enableListClick(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$300(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 632
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$2600(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$11;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$2600(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 623
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 619
    return-void
.end method

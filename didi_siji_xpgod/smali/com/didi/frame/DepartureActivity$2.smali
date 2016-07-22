.class Lcom/didi/frame/DepartureActivity$2;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/DepartureActivity;->initOtherView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$2;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 188
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$2;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->callBack:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$400(Lcom/didi/frame/DepartureActivity;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/frame/departure/DepartureMap;->setMapNorth(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 189
    return-void
.end method

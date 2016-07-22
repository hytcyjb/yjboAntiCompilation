.class Lcom/didi/frame/DepartureActivity$6;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/DepartureActivity;
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
    .line 533
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$6;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$6;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->animation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$000(Lcom/didi/frame/DepartureActivity;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 538
    return-void
.end method

.class Lcom/didi/common/ui/fragment/MenuFragment$24;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Lcom/didi/soso/location/LocationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$24;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 4
    .parameter "result"

    .prologue
    const-wide/16 v2, 0x0

    .line 1217
    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$24;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #getter for: Lcom/didi/common/ui/fragment/MenuFragment;->isLocation:Z
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1800(Lcom/didi/common/ui/fragment/MenuFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$24;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/ui/fragment/MenuFragment;->isLocation:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1802(Lcom/didi/common/ui/fragment/MenuFragment;Z)Z

    .line 1224
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/soso/location/LocationController;->setLat(D)V

    .line 1225
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/soso/location/LocationController;->setLng(D)V

    .line 1227
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$24;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->getGameConfig()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$400(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 1230
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$24;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->getMenuCommonBizConfig()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$300(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 1231
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isMenuGameShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1232
    const-string v0, "pxxmenu01_sw"

    const-string v1, "[menu_type=1]"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$24;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #getter for: Lcom/didi/common/ui/fragment/MenuFragment;->locationInterface:Lcom/didi/soso/location/LocationInterface;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1900(Lcom/didi/common/ui/fragment/MenuFragment;)Lcom/didi/soso/location/LocationInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->removeLocationListener(Lcom/didi/soso/location/LocationInterface;)V

    goto :goto_0

    .line 1234
    :cond_2
    const-string v0, "pxxmenu01_sw "

    const-string v1, "[menu_type=0]"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

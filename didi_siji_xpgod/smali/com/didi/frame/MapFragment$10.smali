.class Lcom/didi/frame/MapFragment$10;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/didi/soso/location/LocationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MapFragment;


# direct methods
.method constructor <init>(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/didi/frame/MapFragment$10;->this$0:Lcom/didi/frame/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SosoResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/didi/frame/MapFragment$10;->this$0:Lcom/didi/frame/MapFragment;

    #calls: Lcom/didi/frame/MapFragment;->updateLocation(Lcom/tencent/map/geolocation/TencentLocation;)V
    invoke-static {v0, p1}, Lcom/didi/frame/MapFragment;->access$400(Lcom/didi/frame/MapFragment;Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 754
    iget-object v0, p0, Lcom/didi/frame/MapFragment$10;->this$0:Lcom/didi/frame/MapFragment;

    #getter for: Lcom/didi/frame/MapFragment;->hasUploadCid:Z
    invoke-static {v0}, Lcom/didi/frame/MapFragment;->access$500(Lcom/didi/frame/MapFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/didi/frame/MapFragment$10;->this$0:Lcom/didi/frame/MapFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/frame/MapFragment;->hasUploadCid:Z
    invoke-static {v0, v1}, Lcom/didi/frame/MapFragment;->access$502(Lcom/didi/frame/MapFragment;Z)Z

    .line 756
    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->uploadCid()V

    .line 758
    :cond_0
    return-void
.end method

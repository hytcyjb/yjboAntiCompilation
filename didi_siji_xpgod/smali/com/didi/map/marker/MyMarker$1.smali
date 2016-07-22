.class Lcom/didi/map/marker/MyMarker$1;
.super Ljava/lang/Object;
.source "MyMarker.java"

# interfaces
.implements Lcom/didi/map/CompassManager$CompassListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/marker/MyMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/MyMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/MyMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/didi/map/marker/MyMarker$1;->this$0:Lcom/didi/map/marker/MyMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker$1;->this$0:Lcom/didi/map/marker/MyMarker;

    iget-object v0, v0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/didi/map/marker/MyMarker$1;->this$0:Lcom/didi/map/marker/MyMarker;

    iget-object v0, v0, Lcom/didi/map/marker/MyMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    .line 177
    :cond_0
    return-void
.end method

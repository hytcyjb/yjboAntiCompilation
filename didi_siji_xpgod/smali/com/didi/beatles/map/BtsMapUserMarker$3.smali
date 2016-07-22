.class Lcom/didi/beatles/map/BtsMapUserMarker$3;
.super Ljava/lang/Object;
.source "BtsMapUserMarker.java"

# interfaces
.implements Lcom/didi/map/CompassManager$CompassListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/map/BtsMapUserMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/map/BtsMapUserMarker;


# direct methods
.method constructor <init>(Lcom/didi/beatles/map/BtsMapUserMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapUserMarker$3;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker$3;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    #getter for: Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->access$300(Lcom/didi/beatles/map/BtsMapUserMarker;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker$3;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    #getter for: Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->access$400(Lcom/didi/beatles/map/BtsMapUserMarker;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    .line 271
    :cond_0
    return-void
.end method

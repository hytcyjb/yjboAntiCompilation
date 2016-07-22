.class Lcom/didi/map/marker/TextSimpleFareMarker$1;
.super Ljava/lang/Object;
.source "TextSimpleFareMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/TextSimpleFareMarker;->hideMarker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/TextSimpleFareMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/TextSimpleFareMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/map/marker/TextSimpleFareMarker$1;->this$0:Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker$1;->this$0:Lcom/didi/map/marker/TextSimpleFareMarker;

    iget-object v0, v0, Lcom/didi/map/marker/TextSimpleFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowStillVisible(Z)V

    .line 51
    iget-object v0, p0, Lcom/didi/map/marker/TextSimpleFareMarker$1;->this$0:Lcom/didi/map/marker/TextSimpleFareMarker;

    iget-object v0, v0, Lcom/didi/map/marker/TextSimpleFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setVisible(Z)V

    .line 53
    :cond_0
    return-void
.end method

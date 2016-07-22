.class Lcom/didi/map/marker/VoiceFareMarker$2;
.super Ljava/lang/Object;
.source "VoiceFareMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/VoiceFareMarker;->showInfoWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/VoiceFareMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/VoiceFareMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/map/marker/VoiceFareMarker$2;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$2;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    iget-object v0, v0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$2;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    iget-object v0, v0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    .line 84
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/VoiceFareMarker$2;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    iget-object v1, v1, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/didi/map/listener/MapListener;->setCurrentMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 85
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$2;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$200(Lcom/didi/map/marker/VoiceFareMarker;)Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->setPlayImage(I)V

    goto :goto_0
.end method

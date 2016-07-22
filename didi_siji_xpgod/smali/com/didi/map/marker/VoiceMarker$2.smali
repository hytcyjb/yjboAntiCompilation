.class Lcom/didi/map/marker/VoiceMarker$2;
.super Ljava/lang/Object;
.source "VoiceMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/VoiceMarker;->showInfoWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/VoiceMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/VoiceMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/didi/map/marker/VoiceMarker$2;->this$0:Lcom/didi/map/marker/VoiceMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$2;->this$0:Lcom/didi/map/marker/VoiceMarker;

    iget-object v0, v0, Lcom/didi/map/marker/VoiceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$2;->this$0:Lcom/didi/map/marker/VoiceMarker;

    iget-object v0, v0, Lcom/didi/map/marker/VoiceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    .line 69
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/VoiceMarker$2;->this$0:Lcom/didi/map/marker/VoiceMarker;

    iget-object v1, v1, Lcom/didi/map/marker/VoiceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/didi/map/listener/MapListener;->setCurrentMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 70
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$2;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$200(Lcom/didi/map/marker/VoiceMarker;)Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->setPlayImage(I)V

    goto :goto_0
.end method

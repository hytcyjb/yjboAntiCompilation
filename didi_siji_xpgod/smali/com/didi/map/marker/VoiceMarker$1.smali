.class Lcom/didi/map/marker/VoiceMarker$1;
.super Landroid/os/Handler;
.source "VoiceMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/marker/VoiceMarker;
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
    .line 30
    iput-object p1, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->isPlay:Z
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$000(Lcom/didi/map/marker/VoiceMarker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    iget-object v0, v0, Lcom/didi/map/marker/VoiceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->mNumber:I
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$100(Lcom/didi/map/marker/VoiceMarker;)I

    move-result v0

    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$108(Lcom/didi/map/marker/VoiceMarker;)I

    .line 37
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$200(Lcom/didi/map/marker/VoiceMarker;)Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    move-result-object v0

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->setPlayImage(I)V

    .line 45
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    iget-object v0, v0, Lcom/didi/map/marker/VoiceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    .line 46
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #calls: Lcom/didi/map/marker/VoiceMarker;->startAnimate()V
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$300(Lcom/didi/map/marker/VoiceMarker;)V

    goto :goto_0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->mNumber:I
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$100(Lcom/didi/map/marker/VoiceMarker;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 39
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$108(Lcom/didi/map/marker/VoiceMarker;)I

    .line 40
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$200(Lcom/didi/map/marker/VoiceMarker;)Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    move-result-object v0

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->setPlayImage(I)V

    goto :goto_1

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->mNumber:I
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$100(Lcom/didi/map/marker/VoiceMarker;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    const/4 v1, 0x0

    #setter for: Lcom/didi/map/marker/VoiceMarker;->mNumber:I
    invoke-static {v0, v1}, Lcom/didi/map/marker/VoiceMarker;->access$102(Lcom/didi/map/marker/VoiceMarker;I)I

    .line 43
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker$1;->this$0:Lcom/didi/map/marker/VoiceMarker;

    #getter for: Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceMarker;->access$200(Lcom/didi/map/marker/VoiceMarker;)Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->setPlayImage(I)V

    goto :goto_1
.end method

.class Lcom/didi/map/marker/VoiceFareMarker$1;
.super Landroid/os/Handler;
.source "VoiceFareMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/map/marker/VoiceFareMarker;
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
    .line 38
    iput-object p1, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$000(Lcom/didi/map/marker/VoiceFareMarker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    iget-object v0, v0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$100(Lcom/didi/map/marker/VoiceFareMarker;)I

    move-result v0

    if-nez v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$108(Lcom/didi/map/marker/VoiceFareMarker;)I

    .line 45
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$200(Lcom/didi/map/marker/VoiceFareMarker;)Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    move-result-object v0

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->setPlayImage(I)V

    .line 53
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    iget-object v0, v0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    .line 54
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #calls: Lcom/didi/map/marker/VoiceFareMarker;->startAnimate()V
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$300(Lcom/didi/map/marker/VoiceFareMarker;)V

    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$100(Lcom/didi/map/marker/VoiceFareMarker;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 47
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$108(Lcom/didi/map/marker/VoiceFareMarker;)I

    .line 48
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$200(Lcom/didi/map/marker/VoiceFareMarker;)Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    move-result-object v0

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->setPlayImage(I)V

    goto :goto_1

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$100(Lcom/didi/map/marker/VoiceFareMarker;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    const/4 v1, 0x0

    #setter for: Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I
    invoke-static {v0, v1}, Lcom/didi/map/marker/VoiceFareMarker;->access$102(Lcom/didi/map/marker/VoiceFareMarker;I)I

    .line 51
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker$1;->this$0:Lcom/didi/map/marker/VoiceFareMarker;

    #getter for: Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/VoiceFareMarker;->access$200(Lcom/didi/map/marker/VoiceFareMarker;)Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->setPlayImage(I)V

    goto :goto_1
.end method

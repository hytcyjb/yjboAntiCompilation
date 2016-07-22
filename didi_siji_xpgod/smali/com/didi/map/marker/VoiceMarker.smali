.class public Lcom/didi/map/marker/VoiceMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "VoiceMarker.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private isPlay:Z

.field private mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mNumber:I

.field private mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 30
    new-instance v0, Lcom/didi/map/marker/VoiceMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/VoiceMarker$1;-><init>(Lcom/didi/map/marker/VoiceMarker;)V

    iput-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/didi/map/marker/VoiceMarker$4;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/VoiceMarker$4;-><init>(Lcom/didi/map/marker/VoiceMarker;)V

    iput-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/map/marker/VoiceMarker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    return v0
.end method

.method static synthetic access$002(Lcom/didi/map/marker/VoiceMarker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/map/marker/VoiceMarker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/didi/map/marker/VoiceMarker;->mNumber:I

    return v0
.end method

.method static synthetic access$102(Lcom/didi/map/marker/VoiceMarker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/didi/map/marker/VoiceMarker;->mNumber:I

    return p1
.end method

.method static synthetic access$108(Lcom/didi/map/marker/VoiceMarker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/didi/map/marker/VoiceMarker;->mNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/map/marker/VoiceMarker;->mNumber:I

    return v0
.end method

.method static synthetic access$200(Lcom/didi/map/marker/VoiceMarker;)Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/map/marker/VoiceMarker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceMarker;->startAnimate()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/map/marker/VoiceMarker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/map/marker/VoiceMarker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceMarker;->voicePlay()V

    return-void
.end method

.method private setPlayState()V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceMarker;->voicePlay()V

    .line 83
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    goto :goto_0
.end method

.method private startAnimate()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/map/marker/VoiceMarker$3;

    invoke-direct {v1, p0}, Lcom/didi/map/marker/VoiceMarker$3;-><init>(Lcom/didi/map/marker/VoiceMarker;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method private stopAnimate()V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/map/marker/VoiceMarker;->mNumber:I

    .line 98
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->setPlayImage(I)V

    .line 99
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    goto :goto_0
.end method

.method private voicePlay()V
    .locals 3

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-boolean v1, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    if-eqz v1, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceMarker;->startAnimate()V

    .line 129
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/VoicePlayer;->getInstance(Landroid/content/Context;)Lcom/didi/common/ui/component/VoicePlayer;

    move-result-object v0

    .line 130
    .local v0, player:Lcom/didi/common/ui/component/VoicePlayer;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->voiceFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/VoicePlayer;->setVoicePath(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/didi/map/marker/VoiceMarker;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/VoicePlayer;->playOrderVoice(Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;)Z

    goto :goto_0

    .line 134
    .end local v0           #player:Lcom/didi/common/ui/component/VoicePlayer;
    :cond_1
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/VoicePlayer;->getInstance(Landroid/content/Context;)Lcom/didi/common/ui/component/VoicePlayer;

    move-result-object v0

    .line 135
    .restart local v0       #player:Lcom/didi/common/ui/component/VoicePlayer;
    invoke-virtual {v0}, Lcom/didi/common/ui/component/VoicePlayer;->stop()V

    .line 136
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceMarker;->stopAnimate()V

    goto :goto_0
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vc_record_replay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceMarker;->setPlayState()V

    .line 109
    return-void
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/didi/map/marker/VoiceMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/didi/map/marker/VoiceMarker;->showInfoWindow()V

    .line 158
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 113
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 114
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/VoiceMarker;->isPlay:Z

    .line 120
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->remove()V

    .line 121
    return-void
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 53
    const v5, 0x7f0201c2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/VoiceMarker;->setMarker(DDI)V

    .line 54
    return-void
.end method

.method public setMarker(DDI)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/didi/map/marker/VoiceMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v2, "voice"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 165
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/VoiceMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 167
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_0
    invoke-virtual {p0}, Lcom/didi/map/marker/VoiceMarker;->showInfoWindow()V

    .line 168
    return-void
.end method

.method protected showInfoWindow()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    .line 61
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/VoiceMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/didi/map/marker/VoiceMarker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/map/marker/VoiceMarker$2;

    invoke-direct {v1, p0}, Lcom/didi/map/marker/VoiceMarker$2;-><init>(Lcom/didi/map/marker/VoiceMarker;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 74
    return-void
.end method

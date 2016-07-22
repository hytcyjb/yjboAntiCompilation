.class public Lcom/didi/map/marker/VoiceFareMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "VoiceFareMarker.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private isPlay:Z

.field private isUnClick:Z

.field private mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mNumber:I

.field private mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 38
    new-instance v0, Lcom/didi/map/marker/VoiceFareMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/VoiceFareMarker$1;-><init>(Lcom/didi/map/marker/VoiceFareMarker;)V

    iput-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mHandler:Landroid/os/Handler;

    .line 191
    new-instance v0, Lcom/didi/map/marker/VoiceFareMarker$4;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/VoiceFareMarker$4;-><init>(Lcom/didi/map/marker/VoiceFareMarker;)V

    iput-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/map/marker/VoiceFareMarker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    return v0
.end method

.method static synthetic access$002(Lcom/didi/map/marker/VoiceFareMarker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/map/marker/VoiceFareMarker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I

    return v0
.end method

.method static synthetic access$102(Lcom/didi/map/marker/VoiceFareMarker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I

    return p1
.end method

.method static synthetic access$108(Lcom/didi/map/marker/VoiceFareMarker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I

    return v0
.end method

.method static synthetic access$200(Lcom/didi/map/marker/VoiceFareMarker;)Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/map/marker/VoiceFareMarker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceFareMarker;->startAnimate()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/map/marker/VoiceFareMarker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/map/marker/VoiceFareMarker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceFareMarker;->voicePlay()V

    return-void
.end method

.method private setPlayState()V
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    .line 109
    :goto_0
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceFareMarker;->voicePlay()V

    .line 110
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    goto :goto_0
.end method

.method private startAnimate()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/map/marker/VoiceFareMarker$3;

    invoke-direct {v1, p0}, Lcom/didi/map/marker/VoiceFareMarker$3;-><init>(Lcom/didi/map/marker/VoiceFareMarker;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    return-void
.end method

.method private stopAnimate()V
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mNumber:I

    .line 125
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->setPlayImage(I)V

    .line 126
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    goto :goto_0
.end method

.method private voicePlay()V
    .locals 3

    .prologue
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-boolean v1, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    if-eqz v1, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceFareMarker;->startAnimate()V

    .line 180
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/VoicePlayer;->getInstance(Landroid/content/Context;)Lcom/didi/common/ui/component/VoicePlayer;

    move-result-object v0

    .line 181
    .local v0, player:Lcom/didi/common/ui/component/VoicePlayer;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->voiceFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/VoicePlayer;->setVoicePath(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/didi/map/marker/VoiceFareMarker;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/VoicePlayer;->playOrderVoice(Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;)Z

    goto :goto_0

    .line 185
    .end local v0           #player:Lcom/didi/common/ui/component/VoicePlayer;
    :cond_1
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/VoicePlayer;->getInstance(Landroid/content/Context;)Lcom/didi/common/ui/component/VoicePlayer;

    move-result-object v0

    .line 186
    .restart local v0       #player:Lcom/didi/common/ui/component/VoicePlayer;
    invoke-virtual {v0}, Lcom/didi/common/ui/component/VoicePlayer;->stop()V

    .line 187
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceFareMarker;->stopAnimate()V

    goto :goto_0
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 134
    return-void
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClickLocation(IIII)V

    .line 140
    div-int v1, p2, p4

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/didi/map/marker/VoiceFareMarker;->setPlayState()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-boolean v1, p0, Lcom/didi/map/marker/VoiceFareMarker;->isUnClick:Z

    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pg0call03_ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-class v2, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "display_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const v2, 0x7f04001b

    const v3, 0x7f04001c

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/MainActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/didi/map/marker/VoiceFareMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/didi/map/marker/VoiceFareMarker;->showInfoWindow()V

    .line 208
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 164
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 165
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->isPlay:Z

    .line 171
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->remove()V

    .line 172
    return-void
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 61
    const v5, 0x7f0201c2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/VoiceFareMarker;->setMarker(DDI)V

    .line 62
    return-void
.end method

.method public setMarker(DDI)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 213
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

    .line 215
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/VoiceFareMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 217
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_0
    invoke-virtual {p0}, Lcom/didi/map/marker/VoiceFareMarker;->showInfoWindow()V

    .line 219
    return-void
.end method

.method public setWindowUnClick(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->hideArrow()V

    .line 99
    :goto_1
    iput-boolean p1, p0, Lcom/didi/map/marker/VoiceFareMarker;->isUnClick:Z

    .line 100
    invoke-virtual {p0}, Lcom/didi/map/marker/VoiceFareMarker;->showInfoWindow()V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->showArrow()V

    goto :goto_1
.end method

.method protected showInfoWindow()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    .line 76
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/map/marker/VoiceFareMarker$2;

    invoke-direct {v1, p0}, Lcom/didi/map/marker/VoiceFareMarker$2;-><init>(Lcom/didi/map/marker/VoiceFareMarker;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 89
    return-void
.end method

.method public updateVoiceTextFare(Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "price"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/VoiceFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 68
    invoke-virtual {p0}, Lcom/didi/map/marker/VoiceFareMarker;->showInfoWindow()V

    goto :goto_0
.end method

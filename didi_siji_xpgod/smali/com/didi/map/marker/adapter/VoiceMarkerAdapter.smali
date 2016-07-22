.class public Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "VoiceMarkerAdapter.java"


# instance fields
.field private mPlay:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 22
    const v0, 0x7f0300ec

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->setLayout(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setDefaultInfo()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f080459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->mPlay:Landroid/widget/ImageView;

    .line 28
    return-void
.end method

.method public setPlayImage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->mPlay:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f080459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->mPlay:Landroid/widget/ImageView;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/adapter/VoiceMarkerAdapter;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 43
    return-void
.end method

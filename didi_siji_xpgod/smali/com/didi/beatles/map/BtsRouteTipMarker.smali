.class public Lcom/didi/beatles/map/BtsRouteTipMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "BtsRouteTipMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;,
        Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;,
        Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;

.field private mContext:Landroid/content/Context;

.field private mGender:I

.field private mMarkerView:Landroid/view/View;

.field private mTipListener:Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;

.field private mTipPoint:Lcom/didi/beatles/map/BtsRoutePoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/didi/beatles/map/BtsRoutePoint;I)V
    .locals 1
    .parameter "context"
    .parameter "point"
    .parameter "gender"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 73
    new-instance v0, Lcom/didi/beatles/map/BtsRouteTipMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/map/BtsRouteTipMarker$1;-><init>(Lcom/didi/beatles/map/BtsRouteTipMarker;)V

    iput-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->listener:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;

    .line 114
    iput-object p2, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    .line 115
    iput p3, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mGender:I

    .line 116
    iput-object p1, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/map/BtsRouteTipMarker;Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/didi/beatles/map/BtsRouteTipMarker;->showWithoutAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/map/BtsRouteTipMarker;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/map/BtsRouteTipMarker;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method

.method public getTipPoint()Lcom/didi/beatles/map/BtsRoutePoint;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    return-object v0
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 1
    .parameter "marker"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipListener:Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipListener:Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;

    invoke-interface {v0, p0}, Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;->showTip(Lcom/didi/beatles/map/BtsRouteTipMarker;)V

    .line 173
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->remove()V

    .line 190
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mMarkerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mMarkerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->removeView(Landroid/view/View;)V

    .line 192
    const-string v0, "BtsRouteTip\u79fb\u9664"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setMarker(DD)V
    .locals 7
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 121
    new-instance v1, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;

    iget-object v5, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, layParent:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->addView(Landroid/view/View;)V

    .line 125
    iput-object v1, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mMarkerView:Landroid/view/View;

    .line 126
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 128
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030026

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 130
    .local v4, viewCustom:Landroid/view/View;
    const v5, 0x7f08012a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    .local v3, tip:Landroid/widget/TextView;
    const v5, 0x7f08012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, name:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    iget v5, v5, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 133
    const v5, 0x7f0b0078

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 144
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    iget-object v5, v5, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v5, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->listener:Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;

    iget-object v6, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    invoke-virtual {v1, v5, v4, v6}, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->setLayoutListener(Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutListener;Landroid/view/View;Lcom/didi/beatles/map/BtsRoutePoint;)V

    .line 147
    invoke-virtual {v1, v4}, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v1}, Lcom/didi/beatles/map/BtsRouteTipMarker$LayoutViewParent;->requestLayout()V

    .line 149
    return-void

    .line 134
    :cond_1
    iget-object v5, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    iget v5, v5, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 135
    iget v5, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mGender:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 136
    const v5, 0x7f0b0075

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget v5, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mGender:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 138
    const v5, 0x7f0b0076

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 140
    :cond_3
    const v5, 0x7f0b0077

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 154
    return-void
.end method

.method public setTipListener(Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/didi/beatles/map/BtsRouteTipMarker;->mTipListener:Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;

    .line 182
    return-void
.end method

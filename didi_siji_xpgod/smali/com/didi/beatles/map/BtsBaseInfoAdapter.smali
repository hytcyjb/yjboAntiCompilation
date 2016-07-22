.class public Lcom/didi/beatles/map/BtsBaseInfoAdapter;
.super Ljava/lang/Object;
.source "BtsBaseInfoAdapter.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;


# instance fields
.field protected mPress:Landroid/view/View;

.field protected mWindow:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->setInfo(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 28
    iget-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->setInfo(Landroid/view/View;)V

    .line 29
    invoke-virtual {p0}, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->setDefaultInfo()V

    .line 30
    iget-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mWindow:Landroid/view/View;

    return-object v0
.end method

.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mPress:Landroid/view/View;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mPress:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->setInfo(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mPress:Landroid/view/View;

    const v1, 0x7f02024e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    iget-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mPress:Landroid/view/View;

    goto :goto_0
.end method

.method protected setDefaultInfo()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected setInfo(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 35
    return-void
.end method

.method protected setInfo(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "marker"

    .prologue
    .line 43
    return-void
.end method

.method protected setLayout(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mWindow:Landroid/view/View;

    .line 50
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mPress:Landroid/view/View;

    .line 51
    return-void
.end method

.method protected setWindowBg(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    return-void
.end method

.class public Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "CarPoolMarkerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 14
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;->mWindow:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method protected setInfo(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 3
    .parameter "marker"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;->setInfo(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;->mWindow:Landroid/view/View;

    const v2, 0x7f0802d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0           #title:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v1

    goto :goto_0
.end method

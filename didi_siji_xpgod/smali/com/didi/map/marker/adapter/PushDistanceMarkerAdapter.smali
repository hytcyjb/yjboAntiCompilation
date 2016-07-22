.class public Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "PushDistanceMarkerAdapter.java"


# instance fields
.field private distance:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->distance:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->time:Ljava/lang/String;

    .line 16
    const v0, 0x7f0300e2

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->setLayout(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setDefaultInfo()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 21
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->mWindow:Landroid/view/View;

    const v5, 0x7f0804ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    .local v0, carNum:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    const v5, 0x7f0b03ff

    invoke-virtual {v4, v5}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->mWindow:Landroid/view/View;

    const v5, 0x7f0804d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 24
    .local v3, timeTxt:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    const v5, 0x7f0b0402

    invoke-virtual {v4, v5}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->mWindow:Landroid/view/View;

    const v5, 0x7f0804cd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    .local v1, distanceCount:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->distance:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 28
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->distance:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/Utils;->getFormattedDistance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->distance:Ljava/lang/String;

    .line 30
    :cond_0
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->distance:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->mWindow:Landroid/view/View;

    const v5, 0x7f0804d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 32
    .local v2, timeCount:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->time:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->time:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "distance"
    .parameter "time"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->distance:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->time:Ljava/lang/String;

    .line 51
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :cond_2
    const-string v0, "1"

    iput-object v0, p0, Lcom/didi/map/marker/adapter/PushDistanceMarkerAdapter;->time:Ljava/lang/String;

    goto :goto_0
.end method

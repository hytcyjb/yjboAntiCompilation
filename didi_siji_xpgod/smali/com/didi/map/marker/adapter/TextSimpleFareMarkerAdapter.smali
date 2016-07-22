.class public Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "TextSimpleFareMarkerAdapter.java"


# instance fields
.field private mFare:Lcom/didi/common/model/MarkerFare;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 23
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->setLayout(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    invoke-super {p0, p1}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;->getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideArrow()V
    .locals 5

    .prologue
    const v4, 0x7f080452

    const/4 v3, 0x4

    .line 61
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    .local v0, fare:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    .local v1, farep:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    return-void
.end method

.method public setInfo(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 35
    const v5, 0x7f080443

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, from:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 37
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, start:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .end local v3           #start:Ljava/lang/String;
    :cond_0
    const v5, 0x7f080445

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 41
    .local v4, to:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 42
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, end:Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .end local v0           #end:Ljava/lang/String;
    :cond_1
    const v5, 0x7f08044a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, fareTipView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    if-eqz v5, :cond_3

    .line 49
    iget-object v5, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    iget-object v5, v5, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 50
    iget-object v5, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    iget-object v5, v5, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_2
    iget-object v5, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    iget-object v5, v5, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_3
    const v5, 0x7f0b0143

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showArrow()V
    .locals 5

    .prologue
    const v4, 0x7f080452

    const/4 v3, 0x0

    .line 68
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .local v0, fare:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    .local v1, farep:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public updateFare(Lcom/didi/common/model/MarkerFare;)V
    .locals 0
    .parameter "markerFare"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/map/marker/adapter/TextSimpleFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    .line 76
    return-void
.end method

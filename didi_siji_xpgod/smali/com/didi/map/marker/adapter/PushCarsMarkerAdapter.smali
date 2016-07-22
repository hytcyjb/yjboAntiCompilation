.class public Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "PushCarsMarkerAdapter.java"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->content:Ljava/lang/String;

    .line 16
    const v0, 0x7f0300e1

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->setLayout(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->setInfo(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 36
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->setInfo(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->setDefaultInfo()V

    .line 38
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    return-object v0
.end method

.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDefaultBackground()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f0804cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_0
    return-void
.end method

.method protected setDefaultInfo()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 21
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    const v5, 0x7f0804cb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/richtextview/RichTextView;

    .line 22
    .local v1, carTxt:Lcom/didi/common/richtextview/RichTextView;
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->content:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v4, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    const v5, 0x7f0804cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 25
    .local v0, bar:Landroid/widget/ProgressBar;
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/looper/OrderLooper;->getmSentCnt()I

    move-result v2

    .line 26
    .local v2, count:I
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    if-nez v4, :cond_2

    .line 31
    :cond_0
    :goto_1
    return-void

    .end local v2           #count:I
    :cond_1
    move v2, v3

    .line 25
    goto :goto_0

    .line 29
    .restart local v2       #count:I
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget v4, v4, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 30
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget v4, v4, Lcom/didi/common/model/CommonAttributes;->countDown:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method public setProgressBackground()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f0804cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    return-void
.end method

.method public updateCarTime(Ljava/lang/String;)V
    .locals 0
    .parameter "contentNew"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/didi/map/marker/adapter/PushCarsMarkerAdapter;->content:Ljava/lang/String;

    .line 66
    return-void
.end method

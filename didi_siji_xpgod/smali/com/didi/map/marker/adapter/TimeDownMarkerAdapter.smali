.class public Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "TimeDownMarkerAdapter.java"


# instance fields
.field private hours:Landroid/widget/TextView;

.field private minutes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 23
    const v0, 0x7f0300ce

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->setLayout(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setDefaultInfo()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f080454

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->hours:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f080456

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->minutes:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .parameter "h"
    .parameter "m"

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeDownHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeDownMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->setDefaultInfo()V

    .line 42
    iget-object v0, p0, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->hours:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/didi/map/marker/adapter/TimeDownMarkerAdapter;->minutes:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.class public Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "PushDriveTimeMarkerAdapter.java"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->content:Ljava/lang/String;

    .line 13
    const v0, 0x7f0300e0

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->setLayout(I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->setInfo(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 25
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->setInfo(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->setDefaultInfo()V

    .line 27
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->mWindow:Landroid/view/View;

    return-object v0
.end method

.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDefaultBackground()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->mWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f020251

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    :cond_0
    return-void
.end method

.method protected setDefaultInfo()V
    .locals 3

    .prologue
    .line 18
    iget-object v1, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->mWindow:Landroid/view/View;

    const v2, 0x7f0804cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/richtextview/RichTextView;

    .line 19
    .local v0, carTxt:Lcom/didi/common/richtextview/RichTextView;
    iget-object v1, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method

.method public setProgressBackground()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->mWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->mWindow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :cond_0
    return-void
.end method

.method public updateCarTime(Ljava/lang/String;)V
    .locals 0
    .parameter "contentNew"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/map/marker/adapter/PushDriveTimeMarkerAdapter;->content:Ljava/lang/String;

    .line 51
    return-void
.end method

.class public Lcom/didi/common/ui/component/SoSoMapView;
.super Lcom/tencent/tencentmap/mapsdk/maps/MapView;
.source "SoSoMapView.java"


# instance fields
.field private mIsPaused:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/component/SoSoMapView;->mIsPaused:Z

    .line 14
    return-void
.end method


# virtual methods
.method public isPaused()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/didi/common/ui/component/SoSoMapView;->mIsPaused:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->onPause()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/component/SoSoMapView;->mIsPaused:Z

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->onResume()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/component/SoSoMapView;->mIsPaused:Z

    .line 20
    return-void
.end method

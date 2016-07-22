.class public Lcom/didi/soso/location/LocationViewHelper;
.super Ljava/lang/Object;
.source "LocationViewHelper.java"


# static fields
.field private static location:Lcom/didi/soso/location/view/LocationView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideLocation()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    invoke-virtual {v0}, Lcom/didi/soso/location/view/LocationView;->hideView()V

    .line 31
    :cond_0
    return-void
.end method

.method public static removeChangeListener()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    invoke-virtual {v0}, Lcom/didi/soso/location/view/LocationView;->removeChangeListener()V

    .line 45
    return-void
.end method

.method public static setBottomMargin(F)V
    .locals 1
    .parameter "margin"

    .prologue
    .line 24
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    invoke-virtual {v0, p0}, Lcom/didi/soso/location/view/LocationView;->setBottomMargin(F)V

    .line 26
    :cond_0
    return-void
.end method

.method public static setBottomMargin(I)V
    .locals 1
    .parameter "margin"

    .prologue
    .line 49
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    invoke-virtual {v0, p0}, Lcom/didi/soso/location/view/LocationView;->setBottomMargin(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public static setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 39
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    invoke-virtual {v0, p0}, Lcom/didi/soso/location/view/LocationView;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static setLocationView(Lcom/didi/soso/location/view/LocationView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 14
    sput-object p0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    .line 15
    return-void
.end method

.method public static setViewMargin(Ljava/lang/String;)V
    .locals 3
    .parameter "CityId"

    .prologue
    const/16 v2, 0x172

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cityid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 55
    invoke-static {v2}, Lcom/didi/soso/location/LocationViewHelper;->setBottomMargin(I)V

    .line 56
    invoke-static {v2}, Lcom/didi/map/MapController;->setLogoPosition(I)V

    .line 58
    return-void
.end method

.method public static showLocation()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/didi/soso/location/LocationViewHelper;->location:Lcom/didi/soso/location/view/LocationView;

    invoke-virtual {v0}, Lcom/didi/soso/location/view/LocationView;->showView()V

    .line 36
    :cond_0
    return-void
.end method

.class public Lcom/didi/map/MapInfoWindowAnimation;
.super Ljava/lang/Object;
.source "MapInfoWindowAnimation.java"


# static fields
.field public static final ANIMATE_APPEAR_DURATION:I = 0x1f4

.field public static final ANIMATE_DISAPPEAR_DURATION:I = 0x1f4

.field private static animateAlphaAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

.field private static animateScaleAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

.field private static animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

.field private static animationInfo:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

.field private static animationInfowindow:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f80

    const/4 v1, 0x0

    .line 22
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;

    invoke-direct {v0, v1, v4, v1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;-><init>(FFFF)V

    sput-object v0, Lcom/didi/map/MapInfoWindowAnimation;->animateScaleAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

    .line 26
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;

    invoke-direct {v0, v1, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/didi/map/MapInfoWindowAnimation;->animateAlphaAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

    .line 29
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;-><init>(Z)V

    sput-object v0, Lcom/didi/map/MapInfoWindowAnimation;->animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    .line 30
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;

    const/high16 v2, -0x3ccc

    move v3, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;-><init>(FFFFF)V

    sput-object v0, Lcom/didi/map/MapInfoWindowAnimation;->animationInfowindow:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

    .line 31
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;

    const/high16 v2, 0x4334

    move v3, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;-><init>(FFFFF)V

    sput-object v0, Lcom/didi/map/MapInfoWindowAnimation;->animationInfo:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInfoWindowAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;Z)V
    .locals 3
    .parameter "infoAnimationlistener"
    .parameter "isRotato"

    .prologue
    .line 60
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getInfoWindowAnimationManager()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    move-result-object v1

    .line 63
    .local v1, infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    if-eqz v1, :cond_0

    .line 66
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object v0, Lcom/didi/map/MapInfoWindowAnimation;->animationInfowindow:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

    .line 67
    .local v0, animation:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
    :goto_1
    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->setDuration(I)V

    .line 68
    invoke-virtual {v1, v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->setInfoWindowAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 69
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->startAnimation()V

    goto :goto_0

    .line 66
    .end local v0           #animation:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
    :cond_2
    sget-object v0, Lcom/didi/map/MapInfoWindowAnimation;->animationInfo:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

    goto :goto_1
.end method

.method public static clearAnimation()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 92
    .local v0, infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    :cond_0
    :goto_0
    return-void

    .line 86
    .end local v0           #infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getInfoWindowAnimationManager()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    move-result-object v0

    .line 87
    .restart local v0       #infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    if-eqz v0, :cond_0

    .line 91
    sget-object v1, Lcom/didi/map/MapInfoWindowAnimation;->animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->cleanAnimation()V

    goto :goto_0
.end method

.method public static clearInfoWindowAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 81
    .local v0, infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    :cond_0
    :goto_0
    return-void

    .line 76
    .end local v0           #infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getInfoWindowAnimationManager()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    move-result-object v0

    .line 77
    .restart local v0       #infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, v2, v2}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->setInfoWindowAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    goto :goto_0
.end method

.method public static initAnimation()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 56
    .local v0, infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    :cond_0
    :goto_0
    return-void

    .line 35
    .end local v0           #infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getInfoWindowAnimationManager()Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;

    move-result-object v0

    .line 36
    .restart local v0       #infoAnimateManager:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/didi/map/MapInfoWindowAnimation;->animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->cleanAnimation()V

    .line 45
    sget-object v1, Lcom/didi/map/MapInfoWindowAnimation;->animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    sget-object v2, Lcom/didi/map/MapInfoWindowAnimation;->animateAlphaAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->addAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)Z

    .line 46
    sget-object v1, Lcom/didi/map/MapInfoWindowAnimation;->animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    sget-object v2, Lcom/didi/map/MapInfoWindowAnimation;->animateScaleAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->addAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)Z

    .line 49
    sget-object v1, Lcom/didi/map/MapInfoWindowAnimation;->animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->setDuration(I)V

    .line 50
    sget-object v1, Lcom/didi/map/MapInfoWindowAnimation;->animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->setInfoWindowMovingAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 54
    sget-object v1, Lcom/didi/map/MapInfoWindowAnimation;->animateSetAppear:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->setInfoWindowAppearAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    goto :goto_0
.end method

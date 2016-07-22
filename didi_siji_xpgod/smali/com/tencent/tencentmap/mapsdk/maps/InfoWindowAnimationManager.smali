.class public Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;
.super Ljava/lang/Object;
.source "InfoWindowAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;)V
    .locals 1
    .parameter "listner"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    .line 11
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    .line 12
    return-void
.end method


# virtual methods
.method public setInfoWindowAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V
    .locals 1
    .parameter "ani"
    .parameter "listner"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    goto :goto_0
.end method

.method public setInfoWindowAppearAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    if-nez v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    goto :goto_0
.end method

.method public setInfoWindowDisappearAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;->c(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    goto :goto_0
.end method

.method public setInfoWindowMovingAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;->b(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    goto :goto_0
.end method

.method public setInfowindowBackColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;->a(I)V

    goto :goto_0
.end method

.method public setInfowindowBackEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;->a(Z)V

    goto :goto_0
.end method

.method public setInfowindowBackSacle(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;->a(FF)V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager;->a:Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/InfoWindowAnimationManager$a;->a()V

    goto :goto_0
.end method

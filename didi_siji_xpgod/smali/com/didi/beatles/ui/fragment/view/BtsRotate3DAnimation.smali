.class public Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;
.super Landroid/view/animation/Animation;
.source "BtsRotate3DAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation$InterpolatedTimeListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEPTH_Z:F = 310.0f

.field public static final DURATION:J = 0x320L

.field public static final ROTATE_DECREASE:Z = true

.field public static final ROTATE_INCREASE:Z


# instance fields
.field private camera:Landroid/graphics/Camera;

.field private final centerX:F

.field private final centerY:F

.field private listener:Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation$InterpolatedTimeListener;

.field private final type:Z


# direct methods
.method public constructor <init>(FFZ)V
    .locals 2
    .parameter "cX"
    .parameter "cY"
    .parameter "type"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 29
    iput p1, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->centerX:F

    .line 30
    iput p2, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->centerY:F

    .line 31
    iput-boolean p3, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->type:Z

    .line 32
    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->setDuration(J)V

    .line 33
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "transformation"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    .line 47
    iget-object v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->listener:Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation$InterpolatedTimeListener;

    if-eqz v6, :cond_0

    .line 48
    iget-object v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->listener:Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation$InterpolatedTimeListener;

    invoke-interface {v6, p1}, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation$InterpolatedTimeListener;->interpolatedTime(F)V

    .line 50
    :cond_0
    const/4 v2, 0x0

    .local v2, from:F
    const/4 v5, 0x0

    .line 51
    .local v5, to:F
    iget-boolean v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->type:Z

    if-ne v6, v4, :cond_3

    .line 52
    const/4 v2, 0x0

    .line 53
    const/high16 v5, 0x4334

    .line 58
    :cond_1
    :goto_0
    sub-float v6, v5, v2

    mul-float/2addr v6, p1

    add-float v0, v2, v6

    .line 59
    .local v0, degree:F
    cmpl-float v6, p1, v7

    if-lez v6, :cond_4

    .line 60
    .local v4, overHalf:Z
    :goto_1
    if-eqz v4, :cond_2

    .line 62
    const/high16 v6, 0x4334

    sub-float/2addr v0, v6

    .line 65
    :cond_2
    sub-float v6, p1, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v7, v6

    const/high16 v7, 0x439b

    mul-float v1, v6, v7

    .line 66
    .local v1, depth:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 67
    .local v3, matrix:Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 68
    iget-object v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v6, v8, v8, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 69
    iget-object v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 70
    iget-object v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v6, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 71
    iget-object v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    .line 79
    iget v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->centerX:F

    neg-float v6, v6

    iget v7, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->centerY:F

    neg-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 80
    iget v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->centerX:F

    iget v7, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->centerY:F

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    return-void

    .line 54
    .end local v0           #degree:F
    .end local v1           #depth:F
    .end local v3           #matrix:Landroid/graphics/Matrix;
    .end local v4           #overHalf:Z
    :cond_3
    iget-boolean v6, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->type:Z

    if-nez v6, :cond_1

    .line 55
    const/high16 v2, 0x43b4

    .line 56
    const/high16 v5, 0x4334

    goto :goto_0

    .line 59
    .restart local v0       #degree:F
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 38
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->camera:Landroid/graphics/Camera;

    .line 39
    return-void
.end method

.method public setInterpolatedTimeListener(Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation$InterpolatedTimeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation;->listener:Lcom/didi/beatles/ui/fragment/view/BtsRotate3DAnimation$InterpolatedTimeListener;

    .line 43
    return-void
.end method

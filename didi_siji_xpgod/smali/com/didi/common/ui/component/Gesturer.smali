.class public Lcom/didi/common/ui/component/Gesturer;
.super Ljava/lang/Object;
.source "Gesturer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/Gesturer$GestureListener;
    }
.end annotation


# static fields
.field private static final MIN_VELOCITY:I = 0x0

.field private static final MOVE_DISTANCE:I = 0x14


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;


# direct methods
.method public constructor <init>(Lcom/didi/common/ui/component/Gesturer$GestureListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/didi/common/ui/component/Gesturer;->mListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;

    .line 26
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/Gesturer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 27
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x41a0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/component/Gesturer;->mListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;

    invoke-interface {v0, v2}, Lcom/didi/common/ui/component/Gesturer$GestureListener;->onGesture(Z)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/didi/common/ui/component/Gesturer;->mListener:Lcom/didi/common/ui/component/Gesturer$GestureListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/didi/common/ui/component/Gesturer$GestureListener;->onGesture(Z)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 50
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 36
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/component/Gesturer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

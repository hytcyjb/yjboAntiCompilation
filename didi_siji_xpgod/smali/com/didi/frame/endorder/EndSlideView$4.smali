.class Lcom/didi/frame/endorder/EndSlideView$4;
.super Ljava/lang/Object;
.source "EndSlideView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/endorder/EndSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/endorder/EndSlideView;


# direct methods
.method constructor <init>(Lcom/didi/frame/endorder/EndSlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/didi/frame/endorder/EndSlideView$4;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView$4;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    const v1, 0x7f090187

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndSlideView;->remargin(Landroid/view/View;I)V

    .line 259
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 254
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 250
    return-void
.end method

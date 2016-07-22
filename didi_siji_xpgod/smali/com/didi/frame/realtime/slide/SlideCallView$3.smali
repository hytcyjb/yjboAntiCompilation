.class Lcom/didi/frame/realtime/slide/SlideCallView$3;
.super Ljava/lang/Object;
.source "SlideCallView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/realtime/slide/SlideCallView;->scaleToNormalAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/realtime/slide/SlideCallView;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/slide/SlideCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/didi/frame/realtime/slide/SlideCallView$3;->this$0:Lcom/didi/frame/realtime/slide/SlideCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView$3;->this$0:Lcom/didi/frame/realtime/slide/SlideCallView;

    iget-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView$3;->this$0:Lcom/didi/frame/realtime/slide/SlideCallView;

    #getter for: Lcom/didi/frame/realtime/slide/SlideCallView;->mHomeNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;
    invoke-static {v1}, Lcom/didi/frame/realtime/slide/SlideCallView;->access$200(Lcom/didi/frame/realtime/slide/SlideCallView;)Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    move-result-object v1

    #calls: Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/realtime/slide/SlideCallView;->access$300(Lcom/didi/frame/realtime/slide/SlideCallView;Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView$3;->this$0:Lcom/didi/frame/realtime/slide/SlideCallView;

    iget-object v1, p0, Lcom/didi/frame/realtime/slide/SlideCallView$3;->this$0:Lcom/didi/frame/realtime/slide/SlideCallView;

    #getter for: Lcom/didi/frame/realtime/slide/SlideCallView;->mWorkNormal:Lcom/didi/frame/realtime/slide/SlideItemNormalView;
    invoke-static {v1}, Lcom/didi/frame/realtime/slide/SlideCallView;->access$400(Lcom/didi/frame/realtime/slide/SlideCallView;)Lcom/didi/frame/realtime/slide/SlideItemNormalView;

    move-result-object v1

    #calls: Lcom/didi/frame/realtime/slide/SlideCallView;->setVisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/realtime/slide/SlideCallView;->access$300(Lcom/didi/frame/realtime/slide/SlideCallView;Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView$3;->this$0:Lcom/didi/frame/realtime/slide/SlideCallView;

    const/4 v1, 0x0

    #setter for: Lcom/didi/frame/realtime/slide/SlideCallView;->isAnimating:Z
    invoke-static {v0, v1}, Lcom/didi/frame/realtime/slide/SlideCallView;->access$502(Lcom/didi/frame/realtime/slide/SlideCallView;Z)Z

    .line 220
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 213
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 209
    return-void
.end method

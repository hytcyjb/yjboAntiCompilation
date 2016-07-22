.class Lcom/didi/frame/endorder/EndSlideView$3;
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
    .line 226
    iput-object p1, p0, Lcom/didi/frame/endorder/EndSlideView$3;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView$3;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    #getter for: Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndSlideView;->access$100(Lcom/didi/frame/endorder/EndSlideView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 240
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView$3;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    #getter for: Lcom/didi/frame/endorder/EndSlideView;->mEditLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndSlideView;->access$100(Lcom/didi/frame/endorder/EndSlideView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView$3;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    #getter for: Lcom/didi/frame/endorder/EndSlideView;->mListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndSlideView;->access$000(Lcom/didi/frame/endorder/EndSlideView;)Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/endorder/EndSlideView$TitleListener;->onEndAnimate()V

    .line 242
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 235
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/didi/frame/endorder/EndSlideView$3;->this$0:Lcom/didi/frame/endorder/EndSlideView;

    #getter for: Lcom/didi/frame/endorder/EndSlideView;->mListener:Lcom/didi/frame/endorder/EndSlideView$TitleListener;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndSlideView;->access$000(Lcom/didi/frame/endorder/EndSlideView;)Lcom/didi/frame/endorder/EndSlideView$TitleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/endorder/EndSlideView$TitleListener;->onStartAnimate()V

    .line 231
    return-void
.end method

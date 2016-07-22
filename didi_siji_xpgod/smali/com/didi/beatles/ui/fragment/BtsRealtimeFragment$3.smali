.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getWindAnimate(Landroid/view/animation/Animation;)Lcom/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

.field final synthetic val$adAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    iput-object p2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->val$adAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 274
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 260
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_red_point:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$400(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$500(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #setter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mTitleHided:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$702(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)Z

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->val$adAnimation:Landroid/view/animation/Animation;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->playBtsAdContentAnimation(Landroid/view/animation/Animation;)V
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$800(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/animation/Animation;)V

    .line 269
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 279
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 256
    return-void
.end method

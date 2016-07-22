.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initWind(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 429
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getAdAnimate()Landroid/view/animation/ScaleAnimation;
    invoke-static {v2}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    .line 433
    .local v0, ad:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getWindAnimate(Landroid/view/animation/Animation;)Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-static {v2, v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1100(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/animation/Animation;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    .line 435
    .local v1, wa:Lcom/nineoldandroids/animation/Animator;
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mTitleHided:Z
    invoke-static {v2}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$700(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->playBtsAdContentAnimation(Landroid/view/animation/Animation;)V
    invoke-static {v2, v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$800(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/animation/Animation;)V

    .line 445
    :goto_1
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setShowAdRedPoint()V
    invoke-static {v2}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$900(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z
    invoke-static {v2}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 439
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Animator;->start()V

    goto :goto_1

    .line 441
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->playBtsAdContentAnimation(Landroid/view/animation/Animation;)V
    invoke-static {v2, v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$800(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->playGuidePicAnimation()V
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
    .line 638
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 642
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 643
    .local v0, down:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 644
    new-instance v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10$1;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 662
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 665
    :cond_0
    return-void
.end method

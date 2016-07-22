.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$9;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "BtsRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guideAnimation()V
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
    .line 626
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$9;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 629
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V

    .line 630
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$9;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 631
    return-void
.end method

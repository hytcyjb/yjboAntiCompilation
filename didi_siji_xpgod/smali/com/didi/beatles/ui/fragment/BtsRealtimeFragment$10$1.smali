.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10$1;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 655
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 660
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;

    iget-object v0, v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;

    iget-object v0, v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$1300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    :cond_0
    return-void
.end method

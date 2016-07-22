.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getAdAnimate()Landroid/view/animation/ScaleAnimation;
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
    .line 189
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_red_point:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$400(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$100(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 219
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z
    invoke-static {v2}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    #setter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z
    invoke-static {v1, v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$202(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)Z

    .line 220
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 209
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$100(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

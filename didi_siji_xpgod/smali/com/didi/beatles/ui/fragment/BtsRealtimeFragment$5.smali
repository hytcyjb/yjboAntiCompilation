.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;
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
    .line 409
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 413
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$100(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$202(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)Z

    .line 417
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 419
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_red_point:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$400(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #calls: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setShowAdRedPoint()V
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$900(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    .line 421
    return-void
.end method

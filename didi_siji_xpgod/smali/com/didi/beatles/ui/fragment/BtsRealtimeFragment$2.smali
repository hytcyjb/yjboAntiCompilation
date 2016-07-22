.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .parameter "valueAnimator"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$500(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;Lcom/nineoldandroids/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

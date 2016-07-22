.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;->onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;

.field final synthetic val$valueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;

    iput-object p2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;->val$valueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;

    iget-object v1, v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$500(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 245
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;

    iget-object v1, v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mOriginWidth:I
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$600(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;->val$valueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 246
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2$1;->this$1:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;

    iget-object v1, v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    #getter for: Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->access$500(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void
.end method

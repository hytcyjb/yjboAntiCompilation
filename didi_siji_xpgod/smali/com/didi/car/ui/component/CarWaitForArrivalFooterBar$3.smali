.class Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$3;
.super Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$BaseAnimAnimationListener;
.source "CarWaitForArrivalFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$3;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$BaseAnimAnimationListener;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$3;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->access$200(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 186
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$3;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showMainTipImgs()V

    .line 187
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$3;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->access$300(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$3;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->access$100(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    return-void
.end method

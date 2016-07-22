.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$2;
.super Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$BaseAnimAnimationListener;
.source "TaxiWaitForArrivalFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$BaseAnimAnimationListener;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->showCloseTipImg()V

    .line 143
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    return-void
.end method

.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$2;
.super Ljava/lang/Object;
.source "CarWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/frame/business/redirector/RedirectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public redirecting(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V
    .locals 2
    .parameter
    .parameter
    .parameter "currentIndex"
    .parameter "targetIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Lcom/didi/frame/business/redirector/Index;",
            "Lcom/didi/frame/business/redirector/Index;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const-string v0, "f_switch_to_didi_wait"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    invoke-static {p3, p4}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->switchOnWaitMapView(Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V

    .line 177
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1000(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Lcom/didi/frame/price/PriceListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/price/PriceHelper;->removePriceListener(Lcom/didi/frame/price/PriceListener;)V

    .line 178
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$2;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1100(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Lcom/didi/frame/remark/RemarkListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/RemarkHelper;->removeRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V

    .line 179
    return-void
.end method

.class Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$1;
.super Ljava/lang/Object;
.source "CarWaitForArrivalCostDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->updatePayTypeLayout(Lcom/didi/car/model/FeeDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    iput-object p2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->access$000(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;)Lcom/didi/car/ui/component/CarPayTypeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarPayTypeView;->getContainerPayTypeLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->access$000(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;)Lcom/didi/car/ui/component/CarPayTypeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarPayTypeView;->showAllPayType()V

    .line 307
    return-void
.end method

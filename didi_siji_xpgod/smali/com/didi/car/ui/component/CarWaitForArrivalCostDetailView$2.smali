.class Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;
.super Ljava/lang/Object;
.source "CarWaitForArrivalCostDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->getPayTypeItemClickListener(Lcom/didi/car/ui/component/CarPayTypeItemView;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

.field final synthetic val$itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;Lcom/didi/car/ui/component/CarPayTypeItemView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    iput-object p2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;->val$itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;->val$itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->access$000(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;)Lcom/didi/car/ui/component/CarPayTypeView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;->val$itemView:Lcom/didi/car/ui/component/CarPayTypeItemView;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarPayTypeView;->onItemClick(Lcom/didi/car/ui/component/CarPayTypeItemView;)V

    .line 329
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$2;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->mViewPayTypeContainer:Lcom/didi/car/ui/component/CarPayTypeView;
    invoke-static {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->access$000(Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;)Lcom/didi/car/ui/component/CarPayTypeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarPayTypeView;->getPayMentMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView;->onPayTypeItemViewClicked(I)V

    goto :goto_0
.end method

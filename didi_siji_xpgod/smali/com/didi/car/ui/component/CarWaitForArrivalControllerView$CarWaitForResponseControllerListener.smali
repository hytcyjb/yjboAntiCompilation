.class public interface abstract Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;
.super Ljava/lang/Object;
.source "CarWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalEvaluateView$EvaluateListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalCostDetailView$CostDetailListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;
.implements Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarWaitForResponseControllerListener"
.end annotation


# virtual methods
.method public abstract onCostDetailViewShown()V
.end method

.method public abstract onEvaluatingViewClicked()V
.end method

.method public abstract onPayTypeItemClicked(II)V
.end method

.method public abstract onTimeConsultViewShown()V
.end method

.method public abstract onTitleLeftClicked(Landroid/view/View;)V
.end method

.method public abstract onTitleRightClicked(Landroid/view/View;)V
.end method

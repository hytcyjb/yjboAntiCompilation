.class public interface abstract Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;
.super Ljava/lang/Object;
.source "DDriverWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
.implements Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
.implements Lcom/didi/ddrive/ui/component/DDriveCostDetailView$CostDetailListener;
.implements Lcom/didi/car/ui/component/CarWaitForArrivalPaidView$PaidListener;
.implements Lcom/didi/car/ui/component/CarTimeConsultView$TimeConsultListener;
.implements Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DDriveControllerListener"
.end annotation


# virtual methods
.method public abstract onCostDetailViewShown()V
.end method

.method public abstract onEvaluatingViewClicked()V
.end method

.method public abstract onTimeConsultViewShown()V
.end method

.method public abstract onTitleLeftClicked(Landroid/view/View;)V
.end method

.method public abstract onTitleRightClicked(Landroid/view/View;)V
.end method

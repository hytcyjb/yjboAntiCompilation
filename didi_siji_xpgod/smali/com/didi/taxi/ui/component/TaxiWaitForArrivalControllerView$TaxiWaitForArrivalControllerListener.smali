.class public interface abstract Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$InfoListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$EvaluateListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$PayListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundWebView$FoundListener;
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;
.implements Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaxiWaitForArrivalControllerListener"
.end annotation


# virtual methods
.method public abstract onCostDetailPrepared()V
.end method

.method public abstract onCostDetailShown()V
.end method

.method public abstract onEvaluateViewClicked(Landroid/view/View;)V
.end method

.method public abstract onOffLinePaidShown()V
.end method

.method public abstract onPayViewClicked(Landroid/view/View;)V
.end method

.method public abstract onTitleLeftClicked(Landroid/view/View;)V
.end method

.method public abstract onTitleRightClicked(Landroid/view/View;)V
.end method

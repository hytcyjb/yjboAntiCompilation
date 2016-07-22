.class Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$5;
.super Ljava/lang/Object;
.source "TaxiCostDetailItemsView.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayWayView$OnEnterprisePayWayChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrisePayWayChanged(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->updateConfirmButton()V

    .line 125
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->access$100(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$5;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->access$100(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    :cond_0
    return-void
.end method

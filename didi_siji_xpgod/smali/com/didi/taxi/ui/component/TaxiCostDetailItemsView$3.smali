.class Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$3;
.super Ljava/lang/Object;
.source "TaxiCostDetailItemsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 103
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$3;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$3;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->access$100(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$3;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->cbCompanyAccout:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->access$100(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

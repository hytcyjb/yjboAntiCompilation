.class Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$2;
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
    .line 96
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$2;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->mListener:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->access$000(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiCostDetailListener;->onTicketClicked()V

    .line 101
    return-void
.end method

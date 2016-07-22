.class Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$4;
.super Ljava/lang/Object;
.source "TaxiCostDetailItemsView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 111
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->updateConfirmButton()V

    .line 116
    return-void
.end method

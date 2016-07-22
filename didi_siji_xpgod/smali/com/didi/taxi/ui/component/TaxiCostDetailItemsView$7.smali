.class Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$7;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiCostDetailItemsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->updateConfirmButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiLivePaySale;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$7;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 219
    check-cast p1, Lcom/didi/taxi/model/TaxiLivePaySale;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$7;->onSuccess(Lcom/didi/taxi/model/TaxiLivePaySale;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiLivePaySale;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 223
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$7;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    #calls: Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->updateCompanyInfo(Lcom/didi/taxi/model/TaxiLivePaySale;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;->access$200(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;Lcom/didi/taxi/model/TaxiLivePaySale;)V

    .line 224
    return-void
.end method

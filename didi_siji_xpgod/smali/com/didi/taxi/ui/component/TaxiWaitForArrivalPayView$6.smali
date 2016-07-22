.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$6;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForArrivalPayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZZ)V
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
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

.field final synthetic val$oprationCount:I


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    iput p2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$6;->val$oprationCount:I

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1013
    check-cast p1, Lcom/didi/taxi/model/TaxiLivePaySale;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$6;->onFinish(Lcom/didi/taxi/model/TaxiLivePaySale;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiLivePaySale;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$6;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    iget v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$6;->val$oprationCount:I

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->onSaleRefreshed(ILcom/didi/taxi/model/TaxiLivePaySale;)V
    invoke-static {v0, v1, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$600(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;ILcom/didi/taxi/model/TaxiLivePaySale;)V

    .line 1016
    return-void
.end method

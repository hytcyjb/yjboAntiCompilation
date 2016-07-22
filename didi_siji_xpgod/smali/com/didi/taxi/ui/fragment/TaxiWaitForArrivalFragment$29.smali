.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$29;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayResultGet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiPayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2681
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$29;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2681
    check-cast p1, Lcom/didi/taxi/model/TaxiPayResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$29;->onFinish(Lcom/didi/taxi/model/TaxiPayResult;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiPayResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$29;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPayResultGot(Lcom/didi/taxi/model/TaxiPayResult;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/model/TaxiPayResult;)V

    .line 2685
    return-void
.end method

.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14$1;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/im/model/IMOrderSIDHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1678
    check-cast p1, Lcom/didi/im/model/IMOrderSIDHistory;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14$1;->onFinish(Lcom/didi/im/model/IMOrderSIDHistory;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMOrderSIDHistory;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onIMSessionIdCreated(Lcom/didi/im/model/IMOrderSIDHistory;)V

    .line 1683
    return-void
.end method

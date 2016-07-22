.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$8;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->updateCarPoolOrderStatusIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiOrderState;",
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
    .line 963
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 963
    check-cast p1, Lcom/didi/taxi/model/TaxiOrderState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$8;->onFinish(Lcom/didi/taxi/model/TaxiOrderState;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onCarPoolOrderStatusUpdated(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 967
    return-void
.end method

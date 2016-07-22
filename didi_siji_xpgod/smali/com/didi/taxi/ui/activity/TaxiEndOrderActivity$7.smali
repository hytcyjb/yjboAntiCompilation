.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiEndOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->createBookingOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;->onError(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onError(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 289
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$800(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 290
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;->onFail(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 283
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$800(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 284
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;->onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$7;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->onOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$700(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 278
    return-void
.end method

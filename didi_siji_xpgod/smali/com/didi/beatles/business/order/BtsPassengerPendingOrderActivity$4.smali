.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$4;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerPendingOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$4;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    iput p2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$4;->val$type:I

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 206
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$4;->onFinish(Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$4;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$4;->val$type:I

    #calls: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;I)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->access$300(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;I)V

    .line 211
    return-void
.end method

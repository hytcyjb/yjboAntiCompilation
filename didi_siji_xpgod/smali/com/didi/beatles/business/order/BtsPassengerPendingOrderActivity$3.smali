.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$3;
.super Ljava/lang/Object;
.source "BtsPassengerPendingOrderActivity.java"

# interfaces
.implements Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$3;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$3;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    const/4 v1, 0x4

    #calls: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->access$200(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;I)V

    .line 170
    return-void
.end method

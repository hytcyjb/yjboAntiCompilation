.class Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$3;
.super Ljava/lang/Object;
.source "BtsDriverPendingOrderFragment.java"

# interfaces
.implements Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    const/4 v1, 0x4

    #calls: Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->access$200(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;I)V

    .line 181
    return-void
.end method

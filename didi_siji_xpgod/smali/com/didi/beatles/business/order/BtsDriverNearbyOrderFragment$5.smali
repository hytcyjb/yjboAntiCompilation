.class Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$5;
.super Ljava/lang/Object;
.source "BtsDriverNearbyOrderFragment.java"

# interfaces
.implements Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$5;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$5;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    const/4 v1, 0x2

    #calls: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;I)V

    .line 341
    return-void
.end method

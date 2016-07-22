.class Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$3;
.super Ljava/lang/Object;
.source "BtsDriverMatchOrderFragment.java"

# interfaces
.implements Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    const/4 v1, 0x4

    #calls: Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->loadOrderData(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->access$300(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;I)V

    .line 173
    return-void
.end method

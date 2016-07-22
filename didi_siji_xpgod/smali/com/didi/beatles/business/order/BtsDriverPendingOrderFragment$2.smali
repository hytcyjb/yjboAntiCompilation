.class Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$2;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsDriverPendingOrderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    iput p2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$2;->val$type:I

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$2;->onFinish(Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$2;->val$type:I

    #calls: Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;I)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->access$300(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;I)V

    .line 170
    return-void
.end method

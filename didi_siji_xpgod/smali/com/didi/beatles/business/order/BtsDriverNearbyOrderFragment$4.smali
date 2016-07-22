.class Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$4;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsDriverNearbyOrderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/order/BtsOrderDriverList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    iput p2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$4;->val$type:I

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 324
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$4;->onFinish(Lcom/didi/beatles/model/order/BtsOrderDriverList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderDriverList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$4;->val$type:I

    #calls: Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->access$800(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V

    .line 330
    return-void
.end method

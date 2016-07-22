.class Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$4;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsDriverMatchOrderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;
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
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    iput p2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$4;->val$type:I

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 221
    check-cast p1, Lcom/didi/beatles/model/order/BtsOrderDriverList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$4;->onFinish(Lcom/didi/beatles/model/order/BtsOrderDriverList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/order/BtsOrderDriverList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$4;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    iget v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$4;->val$type:I

    #calls: Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->access$400(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V

    .line 227
    return-void
.end method

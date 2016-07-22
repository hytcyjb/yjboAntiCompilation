.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15$1;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/im/model/IMSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;)V
    .locals 0
    .parameter

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1733
    check-cast p1, Lcom/didi/im/model/IMSession;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15$1;->onFinish(Lcom/didi/im/model/IMSession;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMSession;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onIMSessionCreated(Lcom/didi/im/model/IMSession;)V

    .line 1738
    return-void
.end method

.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$16;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getIMSessionUserList(Lcom/didi/im/model/IMSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/im/model/IMUserList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

.field final synthetic val$session:Lcom/didi/im/model/IMSession;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/im/model/IMSession;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$16;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    iput-object p2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$16;->val$session:Lcom/didi/im/model/IMSession;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1810
    check-cast p1, Lcom/didi/im/model/IMUserList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$16;->onFinish(Lcom/didi/im/model/IMUserList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMUserList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$16;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$16;->val$session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v0, v1, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onIMSessionUserListGot(Lcom/didi/im/model/IMSession;Lcom/didi/im/model/IMUserList;)V

    .line 1815
    return-void
.end method

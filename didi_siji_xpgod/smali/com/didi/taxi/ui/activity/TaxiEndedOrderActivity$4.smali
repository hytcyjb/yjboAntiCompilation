.class Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$4;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiEndedOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->getIMSessionUserList(Lcom/didi/im/model/IMSession;)V
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
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

.field final synthetic val$session:Lcom/didi/im/model/IMSession;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;Lcom/didi/im/model/IMSession;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$4;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    iput-object p2, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$4;->val$session:Lcom/didi/im/model/IMSession;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 266
    check-cast p1, Lcom/didi/im/model/IMUserList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$4;->onFinish(Lcom/didi/im/model/IMUserList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMUserList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$4;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$4;->val$session:Lcom/didi/im/model/IMSession;

    invoke-virtual {v0, v1, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->onIMSessionUserListGot(Lcom/didi/im/model/IMSession;Lcom/didi/im/model/IMUserList;)V

    .line 271
    return-void
.end method

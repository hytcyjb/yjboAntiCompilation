.class Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$3;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiEndedOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->createIMSessionById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/im/model/IMOrderSIDHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    check-cast p1, Lcom/didi/im/model/IMOrderSIDHistory;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$3;->onFinish(Lcom/didi/im/model/IMOrderSIDHistory;)V

    return-void
.end method

.method public onFinish(Lcom/didi/im/model/IMOrderSIDHistory;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->onIMSessionIdCreated(Lcom/didi/im/model/IMOrderSIDHistory;)V

    .line 193
    return-void
.end method

.class Lcom/didi/activity/ui/fragment/SendOrderHelper$4;
.super Lcom/didi/common/net/ResponseListener;
.source "SendOrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$500(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/car/model/CarOrder;)V

    .line 246
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;->onError(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$500(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/car/model/CarOrder;)V

    .line 242
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;->onFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$400(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/car/model/CarOrder;)V

    .line 237
    invoke-static {}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onCustEvent3()V

    .line 238
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;->onSuccess(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

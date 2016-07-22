.class Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierBookingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierBookingFragment;->sendOrder()V
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
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarOrder;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 641
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 642
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/didi/common/booking/BookingView;->setEnabled(Z)V

    .line 644
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 645
    .local v0, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "error_info"

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "txt_call_fail"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 647
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->orderCreateFail(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v1, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$1100(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarOrder;)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carbooking create order failed ,errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 616
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->onError(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarOrder;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 629
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 630
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/didi/common/booking/BookingView;->setEnabled(Z)V

    .line 632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 633
    .local v0, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "error_info"

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "txt_call_fail"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 635
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->orderCreateFail(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v1, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$1100(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarOrder;)V

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carbooking create order failed ,errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 616
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->onFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->flierOrder:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->setSent()V

    .line 620
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->onBookingOrderCreated(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$1000(Lcom/didi/flier/ui/fragment/FlierBookingFragment;Lcom/didi/car/model/CarOrder;)V

    .line 621
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 622
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$300(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)Lcom/didi/common/booking/BookingView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/booking/BookingView;->setEnabled(Z)V

    .line 623
    invoke-static {}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onCustEvent4()V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carbooking create order successed ,errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 616
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierBookingFragment$5;->onSuccess(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

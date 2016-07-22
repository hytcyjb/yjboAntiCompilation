.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2436
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2447
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 2448
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    .line 2449
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->finish()V

    .line 2450
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    .line 2439
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 2440
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$800(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$2400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForDriver(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 2442
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    .line 2443
    return-void
.end method

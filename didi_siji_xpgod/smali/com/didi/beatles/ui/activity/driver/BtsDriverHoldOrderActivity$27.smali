.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;
.super Ljava/lang/Object;
.source "BtsDriverHoldOrderActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
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
    .line 2311
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 2346
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 2341
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 2337
    return-void
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    if-eqz v0, :cond_0

    .line 2324
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsOrderCheck;->is_show_detail:Z

    if-eqz v0, :cond_1

    .line 2325
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2333
    :cond_0
    :goto_0
    return-void

    .line 2330
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->startActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 2319
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 2315
    return-void
.end method

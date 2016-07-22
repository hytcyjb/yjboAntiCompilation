.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerWaitingForCarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsBaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 630
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 632
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;

    iget-object v0, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;

    iget-object v1, v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mOrderId:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->deleteItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    const-string v0, "pbp1wfr02_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 635
    const v0, 0x7f0b0087

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 637
    new-instance v0, Lcom/didi/beatles/model/event/BtsOrderEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsOrderEvent;-><init>()V

    const-string v1, "BTS_ORDER_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;

    iget-object v0, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$8;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->finish()V

    .line 644
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method

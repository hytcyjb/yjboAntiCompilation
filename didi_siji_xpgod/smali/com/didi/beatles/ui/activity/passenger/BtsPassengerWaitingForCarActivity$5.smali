.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPassengerWaitingForCarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loadDriverNumSeq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsDriverNumList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 471
    check-cast p1, Lcom/didi/beatles/model/BtsDriverNumList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->onFinish(Lcom/didi/beatles/model/BtsDriverNumList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/BtsDriverNumList;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mContinueLooping:Z
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsDriverNumList;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p1, Lcom/didi/beatles/model/BtsDriverNumList;->numList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mDriverNumQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/BtsDriverNumList;->numList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    iget v1, p1, Lcom/didi/beatles/model/BtsDriverNumList;->left_time:I

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->setTimeLeft(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$1000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;I)V

    .line 486
    iget v0, p1, Lcom/didi/beatles/model/BtsDriverNumList;->left_time:I

    if-gtz v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    const-string v1, "0"

    const-string v2, "1"

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->checkOrderStatus(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$1100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$1200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;)V

    iget v2, p1, Lcom/didi/beatles/model/BtsDriverNumList;->next_tick:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

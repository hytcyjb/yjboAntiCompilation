.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7$1;
.super Ljava/lang/Object;
.source "BtsPassengerWaitingForCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->onFinish(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;

    iget-object v0, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$7;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loopingOrderInfo()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    .line 596
    return-void
.end method

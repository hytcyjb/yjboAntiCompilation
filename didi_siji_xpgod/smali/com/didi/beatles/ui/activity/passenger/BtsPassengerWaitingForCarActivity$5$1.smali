.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5$1;
.super Ljava/lang/Object;
.source "BtsPassengerWaitingForCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->onFinish(Lcom/didi/beatles/model/BtsDriverNumList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5$1;->this$1:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;

    iget-object v0, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$5;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->loadDriverNumSeq()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    .line 497
    return-void
.end method

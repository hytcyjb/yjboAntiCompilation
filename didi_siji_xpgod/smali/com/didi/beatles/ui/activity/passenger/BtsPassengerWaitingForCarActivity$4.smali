.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$4;
.super Ljava/lang/Object;
.source "BtsPassengerWaitingForCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->updateDriverNum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity$4;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->updateDriverNum()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;->access$800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;)V

    .line 460
    return-void
.end method

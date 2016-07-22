.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$8;
.super Ljava/lang/Object;
.source "BtsPassengerBookingActivity.java"

# interfaces
.implements Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$8;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginCheckWXState()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public endCheckWXState()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public onWXAppLowVersionInstalled()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$8;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->showWXLowVersionDialog()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    .line 560
    return-void
.end method

.method public onWXAppSupported(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 0
    .parameter "helper"
    .parameter "t"

    .prologue
    .line 565
    return-void
.end method

.method public onWXAppUnInstalled()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$8;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->showWXUnstalledDialog()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)V

    .line 555
    return-void
.end method

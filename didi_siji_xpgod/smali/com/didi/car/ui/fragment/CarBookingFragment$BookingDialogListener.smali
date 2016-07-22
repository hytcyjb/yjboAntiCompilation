.class Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;
.super Ljava/lang/Object;
.source "CarBookingFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarBookingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookingDialogListener"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;


# direct methods
.method public constructor <init>(Lcom/didi/car/ui/fragment/CarBookingFragment;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput p2, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->mType:I

    .line 559
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 621
    iget v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 628
    :goto_0
    return-void

    .line 623
    :pswitch_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setProtectShow(I)V

    .line 624
    invoke-static {v1}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 625
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->sendOrder()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$900(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 566
    iget v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->weixinPayCheck(Landroid/content/Context;)V

    goto :goto_0

    .line 571
    :pswitch_1
    const-string v1, "carbooking getorverdraftorder "

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$700(Lcom/didi/car/ui/fragment/CarBookingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->productId:I
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$800(Lcom/didi/car/ui/fragment/CarBookingFragment;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 575
    new-instance v0, Lcom/didi/frame/recovery/RecoveryFlier;

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-direct {v0, v1}, Lcom/didi/frame/recovery/RecoveryFlier;-><init>(Lcom/didi/frame/business/Business;)V

    .line 576
    .local v0, recovery:Lcom/didi/frame/recovery/RecoveryFlier;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$700(Lcom/didi/car/ui/fragment/CarBookingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryFlier;->recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    .end local v0           #recovery:Lcom/didi/frame/recovery/RecoveryFlier;
    :cond_1
    new-instance v0, Lcom/didi/frame/recovery/RecoveryCar;

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-direct {v0, v1}, Lcom/didi/frame/recovery/RecoveryCar;-><init>(Lcom/didi/frame/business/Business;)V

    .line 579
    .local v0, recovery:Lcom/didi/frame/recovery/RecoveryCar;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarBookingFragment;->overdraftOid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$700(Lcom/didi/car/ui/fragment/CarBookingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryCar;->recoveryByOid(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    .end local v0           #recovery:Lcom/didi/frame/recovery/RecoveryCar;
    :pswitch_2
    const v1, 0x7f0b0497

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 612
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setProtectShow(I)V

    .line 613
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/didi/common/config/Preferences;->setVirtualStatus(I)V

    .line 614
    invoke-static {v3}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 615
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$BookingDialogListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->sendOrder()V
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$900(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

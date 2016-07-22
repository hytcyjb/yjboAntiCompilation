.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$6;
.super Ljava/lang/Object;
.source "BtsPassengerBookingActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


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
    .line 441
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getInstance()Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->setmIsCheckWeixin(Z)V

    .line 457
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/model/order/BtsOrderParams;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->mBookingView:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getViewTimeTxt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/model/order/BtsOrderParams;->setSetupTimeBackup(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getInstance()Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->btsOrderParams:Lcom/didi/beatles/model/order/BtsOrderParams;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;)Lcom/didi/beatles/model/order/BtsOrderParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->setBtsOrderParams(Lcom/didi/beatles/model/order/BtsOrderParams;)V

    .line 460
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$6;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->weixinPayCheck(Landroid/content/Context;)V

    .line 461
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.class Lcom/didi/car/ui/fragment/CarConfirmFragment$11;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;->checkProtectAndSendOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$11;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 620
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setProtectShow(I)V

    .line 621
    invoke-static {v1}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 622
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$11;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->sendOrder()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    .line 624
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 611
    const v0, 0x7f0b0497

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 612
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setProtectShow(I)V

    .line 613
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setVirtualStatus(I)V

    .line 614
    invoke-static {v2}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 615
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$11;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->sendOrder()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1300(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    .line 616
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$11;
.super Ljava/lang/Object;
.source "TaxiEndOrderActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$11;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$11;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->skipPage()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$1000(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    .line 498
    const-string v0, "choose_didi_again_notit"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    const-string v0, "choose_didi_again_now_send"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$11;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    const v1, 0x7f0b04bd

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 490
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->start()V

    .line 491
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$11;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->reSendOrder()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$900(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    .line 492
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

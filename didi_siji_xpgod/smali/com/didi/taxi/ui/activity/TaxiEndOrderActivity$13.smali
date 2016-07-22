.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$13;
.super Ljava/lang/Object;
.source "TaxiEndOrderActivity.java"

# interfaces
.implements Lcom/didi/frame/endorder/EndOrderView$ViewListener;


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
    .line 547
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$13;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 553
    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const v0, 0x7f0b0488

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 564
    :goto_0
    return-void

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$13;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->doSubmitConfirm()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$1100(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    goto :goto_0
.end method

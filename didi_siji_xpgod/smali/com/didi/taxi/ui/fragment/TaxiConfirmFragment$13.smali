.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$13;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->back()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isFliping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    goto :goto_0

    .line 702
    :cond_2
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 703
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->hideContentPins()V

    goto :goto_0

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$13;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->isBackEnabled()Z
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$1300(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 709
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    goto :goto_0
.end method

.class Lcom/didi/car/ui/fragment/CarConfirmFragment$17;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;->back()V
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
    .line 1102
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$17;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1106
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isFliping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    goto :goto_0

    .line 1113
    :cond_2
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1114
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->hideContentPins()V

    goto :goto_0

    .line 1120
    :cond_3
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$17;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->isBackEnabled()Z
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$2000(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 1122
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    goto :goto_0
.end method

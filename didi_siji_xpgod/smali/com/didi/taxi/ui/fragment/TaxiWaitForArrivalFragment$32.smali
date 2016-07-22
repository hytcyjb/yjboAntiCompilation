.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$32;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3145
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$32;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$32;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3157
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 3158
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 3159
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$32;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3150
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 3151
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->confirm()V

    .line 3152
    return-void
.end method

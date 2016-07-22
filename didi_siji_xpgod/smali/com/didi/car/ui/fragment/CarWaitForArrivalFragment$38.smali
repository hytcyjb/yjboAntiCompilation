.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$38;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3020
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$38;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 2

    .prologue
    .line 3024
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 3025
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$38;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 3026
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 3027
    return-void
.end method

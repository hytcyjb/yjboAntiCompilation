.class Lcom/didi/flier/ui/fragment/FlierResendFragment$10;
.super Ljava/lang/Object;
.source "FlierResendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$10;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 545
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 546
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 547
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$10;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$900(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Lcom/didi/frame/carmodel/CarModelListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 548
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->endBusinessMap()V

    .line 549
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 550
    return-void
.end method

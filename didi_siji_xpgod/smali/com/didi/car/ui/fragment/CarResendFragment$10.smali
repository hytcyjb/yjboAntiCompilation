.class Lcom/didi/car/ui/fragment/CarResendFragment$10;
.super Ljava/lang/Object;
.source "CarResendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 505
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 506
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 507
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->endBusinessMap()V

    .line 508
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 509
    return-void
.end method

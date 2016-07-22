.class Lcom/didi/frame/recovery/RecoveryTaxi$2;
.super Ljava/lang/Object;
.source "RecoveryTaxi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForResponse(Lcom/didi/taxi/model/TaxiOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

.field final synthetic val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryTaxi$2;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    iput-object p2, p0, Lcom/didi/frame/recovery/RecoveryTaxi$2;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryTaxi$2;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-static {v0, v1}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 202
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 203
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 204
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/frame/FragmentMgr;->showTaxiWaitForResponseFragment(I)V

    .line 205
    return-void
.end method

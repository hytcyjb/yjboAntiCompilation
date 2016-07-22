.class Lcom/didi/frame/recovery/RecoveryTaxi$3;
.super Ljava/lang/Object;
.source "RecoveryTaxi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForArrival(Lcom/didi/taxi/model/TaxiOrder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

.field final synthetic val$serviceType:I

.field final synthetic val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryTaxi$3;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    iput-object p2, p0, Lcom/didi/frame/recovery/RecoveryTaxi$3;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    iput p3, p0, Lcom/didi/frame/recovery/RecoveryTaxi$3;->val$serviceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryTaxi$3;->val$taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-static {v0, v1}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 215
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryTaxi$3;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->clearMap()V
    invoke-static {v0}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$500(Lcom/didi/frame/recovery/RecoveryTaxi;)V

    .line 216
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 217
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    iget v1, p0, Lcom/didi/frame/recovery/RecoveryTaxi$3;->val$serviceType:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/FragmentMgr;->showTaxiWaitForArrivalFragment(II)V

    .line 218
    return-void
.end method

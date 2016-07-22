.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$47;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 3744
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$47;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 3749
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$47;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    sget-object v1, Lcom/didi/common/util/Constant;->CARPOOL_TRIPPAYINFO:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$47;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    const v3, 0x7f0b023e

    invoke-virtual {v2, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$47;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startWebActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$3200(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3752
    return-void
.end method

.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$20;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerDriverLetPayListener()V
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
    .line 1971
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCostDetailReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V
    .locals 1
    .parameter "feeDetail"
    .parameter "isHint"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$20;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {v0, p1, p2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onCostDetailFromDriverReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    .line 1976
    return-void
.end method

.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$17;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$17;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 904
    const-string v0, "ptxwfr10_ck"

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$17;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$17;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    const/4 v1, 0x0

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->recallOrder(I)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V

    .line 907
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 915
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 919
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 896
    const-string v0, "wr_order_cancel_confirm_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 897
    const-string v0, "ptxwfr11_ck"

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$17;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v0, "TaxiWait dialogListener submit() doCancel"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$17;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doCancel(I)V
    invoke-static {v0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V

    .line 900
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 911
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

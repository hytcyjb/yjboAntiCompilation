.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$41;
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
    .line 3332
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$41;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$41;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3344
    const-string v0, "share_love_cancel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3345
    return-void
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$41;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 3337
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$41;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$41;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getLove()Lcom/didi/taxi/model/TaxiLove;

    move-result-object v1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showWebView(Lcom/didi/taxi/model/TaxiLove;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$2700(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/model/TaxiLove;)V

    .line 3338
    const-string v0, "share_love_submit"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3339
    return-void
.end method

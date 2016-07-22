.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$16;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 818
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$16;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 823
    const-string v0, "wr_order_cancel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 824
    const-string v0, "ptxwfr04_ck"

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$16;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$16;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showCancelDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    .line 827
    return-void
.end method

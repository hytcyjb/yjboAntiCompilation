.class Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$13;
.super Ljava/lang/Object;
.source "CarWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$13;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 571
    const-string v0, "pgxwfr11_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$13;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2000(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 563
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$13;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->doCancel()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$1900(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)V

    .line 564
    const-string v0, "pgxcancel_ck"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 566
    const-string v0, "pgxwfr10_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment$13;->this$0:Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;->access$2000(Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

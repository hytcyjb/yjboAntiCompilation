.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$6;
.super Ljava/lang/Object;
.source "DDriveWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$6;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 419
    const-string v0, "pdjxwfr_01_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$6;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;
    invoke-static {v4}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1600(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Lcom/didi/ddrive/model/DDriveOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$6;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->doCancel()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1500(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    .line 415
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

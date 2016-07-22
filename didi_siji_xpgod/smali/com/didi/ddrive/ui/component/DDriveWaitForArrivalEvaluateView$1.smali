.class Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$1;
.super Ljava/lang/Object;
.source "DDriveWaitForArrivalEvaluateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->onEvaluateEditShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 238
    const-string v0, "pdjxcomment_13_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    invoke-static {v4}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->access$000(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)Lcom/didi/ddrive/model/DDriveOrder;

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

    .line 240
    return-void
.end method

.class Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2$1;
.super Ljava/lang/Object;
.source "DDriveWaitForArrivalEvaluateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;->onTouchUpListener()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2$1;->this$1:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2$1;->this$1:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;

    iget-object v0, v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->mListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;->access$200(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView;)Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalEvaluateView$EvaluateListener;->onEvaluateStarClicked()V

    .line 347
    return-void
.end method

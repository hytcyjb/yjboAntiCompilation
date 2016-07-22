.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$10;
.super Ljava/lang/Object;
.source "DDriveWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->onEvaluateStarClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$10;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$10;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$300(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->onEvaluatingBackClicked()V

    .line 1351
    return-void
.end method

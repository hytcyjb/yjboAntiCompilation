.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$8;
.super Ljava/lang/Object;
.source "FlierWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setBarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/flier/model/FlierOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/flier/model/FlierOrder;->carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->onConfirmTimely(Lcom/didi/car/model/CarServiceMessage;)V
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1600(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Lcom/didi/car/model/CarServiceMessage;)V

    .line 334
    const-string v0, "flier_pgxwfr03_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->extrLog:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$1400(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 335
    return-void
.end method

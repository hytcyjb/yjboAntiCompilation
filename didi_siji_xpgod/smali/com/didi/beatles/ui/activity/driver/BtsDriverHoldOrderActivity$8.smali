.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;
.super Ljava/lang/Object;
.source "BtsDriverHoldOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getcancelOrderEvent()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 890
    const-string v0, "pbdcancelroborder_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterCancleStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;
    invoke-static {v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterGoStr:Ljava/lang/String;

    new-instance v4, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8$1;

    invoke-direct {v4, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8$1;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    .line 919
    return-void
.end method

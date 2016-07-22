.class Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;
.super Ljava/lang/Object;
.source "BtsPassengerPendingOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->showCancelOrderEventHandle(Landroid/widget/Button;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;Lcom/didi/beatles/model/order/BtsOrderPassengerPending;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->val$order:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iput-object p3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 132
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v1, "pbpxwhorder02_ck"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;->this$0:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    #calls: Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->initCommonDialog()Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->access$000(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    .line 137
    .local v0, mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    new-instance v1, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;

    invoke-direct {v1, p0, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1$1;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter$1;Lcom/didi/common/helper/DialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 185
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

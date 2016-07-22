.class Lcom/didi/ddrive/payment/PaymentManager$6;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lcom/didi/ddrive/eventbus/event/KDPayResultEvent$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/payment/PaymentManager;->notifyOrderChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/payment/PaymentManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/payment/PaymentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager$6;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 387
    const v1, 0x7f0b014a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, content:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 389
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/payment/PaymentManager;->reset()V

    .line 390
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/payment/PaymentManager;->queryOrderBill()V

    .line 391
    return-void
.end method

.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalPayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 834
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mConfirmBtn:Lx/Button;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)Lx/Button;

    move-result-object v0

    const v1, 0x7f0b0442

    invoke-virtual {v0, v1}, Lx/Button;->setText(I)V

    .line 835
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;

    iget-object v1, v1, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$4;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mModifyCount:I
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->refreshSale(IZZ)V

    .line 836
    return-void
.end method

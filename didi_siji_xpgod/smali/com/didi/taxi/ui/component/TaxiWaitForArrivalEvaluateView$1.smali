.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalEvaluateView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, str:Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->mEvaluateEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalEvaluateView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 222
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 226
    return-void
.end method

.class Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;
.super Ljava/lang/Object;
.source "DDriveCancelTripView.java"

# interfaces
.implements Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveCancelTripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionReasonItemListener"
.end annotation


# instance fields
.field private optionIndex:I

.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p2, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->optionIndex:I

    .line 231
    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 235
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 236
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$100(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->check()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I

    move-result v0

    iget v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->optionIndex:I

    if-ne v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #setter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0, v2}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$002(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;I)I

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$200(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 249
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->otherView:Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$200(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->disableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$300(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    .line 259
    :goto_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->hideInputMethod()V

    .line 260
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$500(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;->onReasonCheck()V

    .line 261
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    iget v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->optionIndex:I

    #setter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->currentSelectedIndex:I
    invoke-static {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$002(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;I)I

    .line 243
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelTripReasonViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$100(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->optionIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->check()V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$400(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #calls: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$400(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    goto :goto_1
.end method

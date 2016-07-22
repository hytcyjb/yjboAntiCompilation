.class Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;
.super Ljava/lang/Object;
.source "CarCancelTripView.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarCancelTripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionReasonItemListener"
.end annotation


# instance fields
.field private optionIndex:I

.field final synthetic this$0:Lcom/didi/car/ui/component/CarCancelTripView;


# direct methods
.method public constructor <init>(Lcom/didi/car/ui/component/CarCancelTripView;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p2, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->optionIndex:I

    .line 244
    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 247
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$400(Lcom/didi/car/ui/component/CarCancelTripView;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->cancelTripReasonViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$500(Lcom/didi/car/ui/component/CarCancelTripView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I
    invoke-static {v1}, Lcom/didi/car/ui/component/CarCancelTripView;->access$400(Lcom/didi/car/ui/component/CarCancelTripView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/ui/component/CancelTripReasonView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CancelTripReasonView;->check()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$400(Lcom/didi/car/ui/component/CarCancelTripView;)I

    move-result v0

    iget v1, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->optionIndex:I

    if-ne v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #setter for: Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I
    invoke-static {v0, v2}, Lcom/didi/car/ui/component/CarCancelTripView;->access$402(Lcom/didi/car/ui/component/CarCancelTripView;I)I

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$400(Lcom/didi/car/ui/component/CarCancelTripView;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 259
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->otherView:Lcom/didi/car/ui/component/CancelTripOtherView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$600(Lcom/didi/car/ui/component/CarCancelTripView;)Lcom/didi/car/ui/component/CancelTripOtherView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CancelTripOtherView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #calls: Lcom/didi/car/ui/component/CarCancelTripView;->disableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$700(Lcom/didi/car/ui/component/CarCancelTripView;)V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->hideInputMethod()V

    .line 269
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->cancelListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$900(Lcom/didi/car/ui/component/CarCancelTripView;)Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;->onReasonCheck()V

    .line 270
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    iget v1, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->optionIndex:I

    #setter for: Lcom/didi/car/ui/component/CarCancelTripView;->currentSelectedIndex:I
    invoke-static {v0, v1}, Lcom/didi/car/ui/component/CarCancelTripView;->access$402(Lcom/didi/car/ui/component/CarCancelTripView;I)I

    .line 255
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->cancelTripReasonViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$500(Lcom/didi/car/ui/component/CarCancelTripView;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->optionIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/ui/component/CancelTripReasonView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CancelTripReasonView;->check()V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #calls: Lcom/didi/car/ui/component/CarCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$800(Lcom/didi/car/ui/component/CarCancelTripView;)V

    goto :goto_1

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$OptionReasonItemListener;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #calls: Lcom/didi/car/ui/component/CarCancelTripView;->enableConfirmBtn()V
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$800(Lcom/didi/car/ui/component/CarCancelTripView;)V

    goto :goto_1
.end method

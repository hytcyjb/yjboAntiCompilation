.class Lcom/didi/frame/complaint/ComplaintView$6;
.super Ljava/lang/Object;
.source "ComplaintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/complaint/ComplaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/complaint/ComplaintView;


# direct methods
.method constructor <init>(Lcom/didi/frame/complaint/ComplaintView;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$000(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$000(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$100(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$100(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$200(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$200(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$300(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$300(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->isOtherCheck:Z
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$700(Lcom/didi/frame/complaint/ComplaintView;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    const/4 v1, 0x1

    #setter for: Lcom/didi/frame/complaint/ComplaintView;->isOtherCheck:Z
    invoke-static {v0, v1}, Lcom/didi/frame/complaint/ComplaintView;->access$702(Lcom/didi/frame/complaint/ComplaintView;Z)Z

    .line 266
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->scrollView:Lcom/didi/common/ui/component/SimpleScrollView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$800(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/common/ui/component/SimpleScrollView;

    move-result-object v0

    const v1, 0x7f0801c7

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SimpleScrollView;->moveChildToTop(I)V

    .line 267
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintView;->showInputMethod()V

    .line 268
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->otherLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$900(Lcom/didi/frame/complaint/ComplaintView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$6;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->compListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$600(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;->onReasonCheck()V

    .line 271
    return-void
.end method

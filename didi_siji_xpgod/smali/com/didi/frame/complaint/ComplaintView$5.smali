.class Lcom/didi/frame/complaint/ComplaintView$5;
.super Ljava/lang/Object;
.source "ComplaintView.java"

# interfaces
.implements Lcom/didi/frame/complaint/ComplaintView$ReasonItemListener;


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
    .line 232
    iput-object p1, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason5:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$400(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$000(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason1:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$000(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$100(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason2:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$100(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$200(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason3:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$200(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$300(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->reason4:Lcom/didi/frame/complaint/ComplaintReasonView;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$300(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintReasonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/complaint/ComplaintReasonView;->check()V

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #calls: Lcom/didi/frame/complaint/ComplaintView;->resetInputLayout()V
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$500(Lcom/didi/frame/complaint/ComplaintView;)V

    .line 248
    iget-object v0, p0, Lcom/didi/frame/complaint/ComplaintView$5;->this$0:Lcom/didi/frame/complaint/ComplaintView;

    #getter for: Lcom/didi/frame/complaint/ComplaintView;->compListener:Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;
    invoke-static {v0}, Lcom/didi/frame/complaint/ComplaintView;->access$600(Lcom/didi/frame/complaint/ComplaintView;)Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/complaint/ComplaintView$ComplaintListener;->onReasonCheck()V

    .line 249
    return-void
.end method

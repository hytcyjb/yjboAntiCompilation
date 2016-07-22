.class Lcom/didi/frame/endorder/EndOrderView$1;
.super Ljava/lang/Object;
.source "EndOrderView.java"

# interfaces
.implements Lcom/didi/frame/endorder/EndSlideView$TitleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/endorder/EndOrderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/endorder/EndOrderView;


# direct methods
.method constructor <init>(Lcom/didi/frame/endorder/EndOrderView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndAnimate()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    const/4 v1, 0x1

    #calls: Lcom/didi/frame/endorder/EndOrderView;->setLayoutClickable(Z)V
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$700(Lcom/didi/frame/endorder/EndOrderView;Z)V

    .line 108
    return-void
.end method

.method public onHideAnimate()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    const-string v1, ""

    #setter for: Lcom/didi/frame/endorder/EndOrderView;->currentCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$002(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$500(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->moveLayoutAnimation()V

    .line 100
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->moveLayoutAnimation()V

    .line 101
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$300(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->hideEditAnimation()V

    .line 102
    return-void
.end method

.method public onShowAnimate()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->code:[Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/frame/endorder/EndOrderView;->access$100(Lcom/didi/frame/endorder/EndOrderView;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    #setter for: Lcom/didi/frame/endorder/EndOrderView;->currentCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$002(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v1}, Lcom/didi/frame/endorder/EndOrderView;->access$300(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/endorder/EndSlideView;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/frame/endorder/EndOrderView;->title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$202(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v1}, Lcom/didi/frame/endorder/EndOrderView;->access$300(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/endorder/EndSlideView;->getReasonContent()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/frame/endorder/EndOrderView;->content:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$402(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$300(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->showEditAnimation()V

    .line 84
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$500(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->downLayoutAnimation()V

    .line 85
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$500(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->isEditShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$500(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->hideEditAnimation()V

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->isEditShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->hideEditAnimation()V

    .line 89
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->downLayoutAnimation()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->downLayoutAnimation()V

    goto :goto_0
.end method

.method public onStartAnimate()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$1;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    const/4 v1, 0x0

    #calls: Lcom/didi/frame/endorder/EndOrderView;->setLayoutClickable(Z)V
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$700(Lcom/didi/frame/endorder/EndOrderView;Z)V

    .line 113
    return-void
.end method

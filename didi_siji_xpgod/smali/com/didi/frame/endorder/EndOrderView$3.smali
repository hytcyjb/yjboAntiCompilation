.class Lcom/didi/frame/endorder/EndOrderView$3;
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
    .line 157
    iput-object p1, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndAnimate()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    const/4 v1, 0x1

    #calls: Lcom/didi/frame/endorder/EndOrderView;->setLayoutClickable(Z)V
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$700(Lcom/didi/frame/endorder/EndOrderView;Z)V

    .line 186
    return-void
.end method

.method public onHideAnimate()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    const-string v1, ""

    #setter for: Lcom/didi/frame/endorder/EndOrderView;->currentCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$002(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->hideEditAnimation()V

    .line 180
    return-void
.end method

.method public onShowAnimate()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->code:[Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/frame/endorder/EndOrderView;->access$100(Lcom/didi/frame/endorder/EndOrderView;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    #setter for: Lcom/didi/frame/endorder/EndOrderView;->currentCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$002(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v1}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/endorder/EndSlideView;->getReasonTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/frame/endorder/EndOrderView;->title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$202(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    iget-object v1, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v1}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/endorder/EndSlideView;->getReasonContent()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/didi/frame/endorder/EndOrderView;->content:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$402(Lcom/didi/frame/endorder/EndOrderView;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->showEditAnimation()V

    .line 165
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$500(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->isEditShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$500(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->hideEditAnimation()V

    .line 167
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->moveLayoutAnimation()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$300(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->isEditShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mArgreement:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$300(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->hideEditAnimation()V

    .line 170
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mComplaint:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$500(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->moveLayoutAnimation()V

    .line 171
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    #getter for: Lcom/didi/frame/endorder/EndOrderView;->mAccident:Lcom/didi/frame/endorder/EndSlideView;
    invoke-static {v0}, Lcom/didi/frame/endorder/EndOrderView;->access$600(Lcom/didi/frame/endorder/EndOrderView;)Lcom/didi/frame/endorder/EndSlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndSlideView;->moveLayoutAnimation()V

    goto :goto_0
.end method

.method public onStartAnimate()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/didi/frame/endorder/EndOrderView$3;->this$0:Lcom/didi/frame/endorder/EndOrderView;

    const/4 v1, 0x0

    #calls: Lcom/didi/frame/endorder/EndOrderView;->setLayoutClickable(Z)V
    invoke-static {v0, v1}, Lcom/didi/frame/endorder/EndOrderView;->access$700(Lcom/didi/frame/endorder/EndOrderView;Z)V

    .line 191
    return-void
.end method

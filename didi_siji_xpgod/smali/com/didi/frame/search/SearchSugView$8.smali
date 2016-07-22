.class Lcom/didi/frame/search/SearchSugView$8;
.super Ljava/lang/Object;
.source "SearchSugView.java"

# interfaces
.implements Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/search/SearchSugView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/search/SearchSugView;


# direct methods
.method constructor <init>(Lcom/didi/frame/search/SearchSugView;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-virtual {v0}, Lcom/didi/frame/search/SearchSugView;->back()V

    .line 602
    return-void
.end method

.method public onClear()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    const/4 v1, 0x1

    #setter for: Lcom/didi/frame/search/SearchSugView;->isClear:Z
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$2602(Lcom/didi/frame/search/SearchSugView;Z)Z

    .line 593
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$500(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$600(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V

    .line 594
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->fail:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$2700(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$600(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V

    .line 595
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$2500(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$600(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V

    .line 596
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->doEmpityShow()V
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$2800(Lcom/didi/frame/search/SearchSugView;)V

    .line 597
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->setCustomAddress()V
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$1900(Lcom/didi/frame/search/SearchSugView;)V

    .line 588
    return-void
.end method

.method public onInputChange(Ljava/lang/String;)V
    .locals 2
    .parameter "sug"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$2500(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$600(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V

    .line 581
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$1000(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$600(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V

    .line 582
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->cityName:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$100(Lcom/didi/frame/search/SearchSugView;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->getPoiSug(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/didi/frame/search/SearchSugView;->access$200(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "search"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->getSearchedCity()Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$2100(Lcom/didi/frame/search/SearchSugView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->isStartPoint()Z
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$2200(Lcom/didi/frame/search/SearchSugView;)Z

    move-result v1

    new-instance v2, Lcom/didi/frame/search/SearchSugView$8$1;

    invoke-direct {v2, p0, p1}, Lcom/didi/frame/search/SearchSugView$8$1;-><init>(Lcom/didi/frame/search/SearchSugView$8;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/didi/common/net/CommonRequest;->searchPoi(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V

    .line 576
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public onStartInput()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->isHomeComm:Z
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$1200(Lcom/didi/frame/search/SearchSugView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$1500(Lcom/didi/frame/search/SearchSugView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$2000(Lcom/didi/frame/search/SearchSugView;)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$000(Lcom/didi/frame/search/SearchSugView;)Lcom/didi/frame/departure/DepartSearchTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->showInputMethod()V

    .line 548
    return-void
.end method

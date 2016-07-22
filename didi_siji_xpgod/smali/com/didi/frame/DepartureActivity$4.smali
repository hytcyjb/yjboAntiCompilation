.class Lcom/didi/frame/DepartureActivity$4;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/DepartureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->onInputEmptyBack()V
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$1300(Lcom/didi/frame/DepartureActivity;)V

    .line 397
    return-void
.end method

.method public onClear()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->setCustomAddress()V
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$1200(Lcom/didi/frame/DepartureActivity;)V

    .line 388
    return-void
.end method

.method public onInputChange(Ljava/lang/String;)V
    .locals 2
    .parameter "sug"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$900(Lcom/didi/frame/DepartureActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1000(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 379
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->sugloading:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$1100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1000(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->getPoiSug(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/didi/frame/DepartureActivity;->access$600(Lcom/didi/frame/DepartureActivity;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "search"

    .prologue
    .line 351
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/didi/frame/DepartureActivity$4$1;

    invoke-direct {v2, p0, p1}, Lcom/didi/frame/DepartureActivity$4$1;-><init>(Lcom/didi/frame/DepartureActivity$4;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/didi/common/net/CommonRequest;->searchPoi(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V

    .line 374
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$1400(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/ui/component/SoSoMapView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1000(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1000(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$1500(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1600(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$4;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$500(Lcom/didi/frame/DepartureActivity;)Lcom/didi/frame/departure/DepartSearchTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->showInputMethod()V

    .line 405
    return-void
.end method

.method public onStartInput()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

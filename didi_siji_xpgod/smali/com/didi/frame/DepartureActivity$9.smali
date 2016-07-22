.class Lcom/didi/frame/DepartureActivity$9;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 576
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #setter for: Lcom/didi/frame/DepartureActivity;->index:I
    invoke-static {v2, p3}, Lcom/didi/frame/DepartureActivity;->access$2202(Lcom/didi/frame/DepartureActivity;I)I

    .line 581
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/frame/DepartureActivity;->access$2600(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/Address;

    .line 582
    .local v1, iter:Lcom/didi/common/model/Address;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/common/model/Address;->setSelect(Z)V

    goto :goto_0

    .line 584
    .end local v1           #iter:Lcom/didi/common/model/Address;
    :cond_0
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/frame/DepartureActivity;->access$2600(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p3, v2, :cond_1

    .line 603
    :goto_1
    return-void

    .line 586
    :cond_1
    iget-object v3, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/frame/DepartureActivity;->access$2600(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/Address;

    #setter for: Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;
    invoke-static {v3, v2}, Lcom/didi/frame/DepartureActivity;->access$2702(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/Address;)Lcom/didi/common/model/Address;

    .line 587
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;
    invoke-static {v2}, Lcom/didi/frame/DepartureActivity;->access$2700(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/model/Address;

    move-result-object v2

    const-string v3, "near_default"

    iput-object v3, v2, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 588
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;
    invoke-static {v2}, Lcom/didi/frame/DepartureActivity;->access$2700(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/model/Address;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/didi/common/model/Address;->setSelect(Z)V

    .line 589
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->adapter:Lcom/didi/frame/departure/DepartureResultAdapter;
    invoke-static {v2}, Lcom/didi/frame/DepartureActivity;->access$2800(Lcom/didi/frame/DepartureActivity;)Lcom/didi/frame/departure/DepartureResultAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartureResultAdapter;->notifyDataSetChanged()V

    .line 590
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;
    invoke-static {v2}, Lcom/didi/frame/DepartureActivity;->access$2700(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/model/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->backWithNone:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;
    invoke-static {v3}, Lcom/didi/frame/DepartureActivity;->access$2900(Lcom/didi/frame/DepartureActivity;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/frame/departure/DepartureMap;->setMapNorth(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 591
    const v2, 0x7f0b04ed

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 592
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v3, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;
    invoke-static {v3}, Lcom/didi/frame/DepartureActivity;->access$2700(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/model/Address;

    move-result-object v3

    #calls: Lcom/didi/frame/DepartureActivity;->upLoadAddressGeo(Lcom/didi/common/model/Address;)V
    invoke-static {v2, v3}, Lcom/didi/frame/DepartureActivity;->access$3000(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/Address;)V

    .line 593
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$9;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->addTraceLog()V
    invoke-static {v2}, Lcom/didi/frame/DepartureActivity;->access$2500(Lcom/didi/frame/DepartureActivity;)V

    .line 594
    new-instance v2, Lcom/didi/frame/DepartureActivity$9$1;

    invoke-direct {v2, p0}, Lcom/didi/frame/DepartureActivity$9$1;-><init>(Lcom/didi/frame/DepartureActivity$9;)V

    const-wide/16 v3, 0x7d0

    invoke-static {v2, v3, v4}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

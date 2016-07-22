.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->fillData(Lcom/didi/common/model/OrderHistoryList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 376
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/model/OrderHistory;

    .line 384
    .local v4, order:Lcom/didi/common/model/OrderHistory;
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->onOrderItemEdited(Landroid/widget/AdapterView;Landroid/view/View;ILcom/didi/common/model/OrderHistory;Z)V
    invoke-static/range {v0 .. v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$600(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Landroid/widget/AdapterView;Landroid/view/View;ILcom/didi/common/model/OrderHistory;Z)V

    goto :goto_0

    .line 387
    .end local v4           #order:Lcom/didi/common/model/OrderHistory;
    :cond_3
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/common/model/OrderHistory;

    .line 388
    .local v7, info:Lcom/didi/common/model/OrderHistory;
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b035b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v5, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 389
    iget-object v6, v7, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    .line 390
    .local v6, business:Lcom/didi/frame/business/Business;
    sget-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$23;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 392
    :pswitch_0
    iget-object v0, v7, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$1;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;)V

    invoke-static {v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->getHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0

    .line 505
    :pswitch_1
    iget-object v0, v7, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$2;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;)V

    invoke-static {v0, v1}, Lcom/didi/car/net/CarRequest;->getHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0

    .line 640
    :pswitch_2
    iget-object v0, v7, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4$3;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;)V

    invoke-static {v0, v1}, Lcom/didi/car/net/CarRequest;->getFlierHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0

    .line 774
    :pswitch_3
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtsRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/didi/common/model/OrderHistory;->role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 776
    iget v0, v7, Lcom/didi/common/model/OrderHistory;->role:I

    if-nez v0, :cond_4

    .line 777
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    iget-object v1, v7, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 780
    :cond_4
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, v7, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->startActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 784
    :pswitch_4
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->onDDriveItemClick(Lcom/didi/common/model/OrderHistory;)V
    invoke-static {v0, v7}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/common/model/OrderHistory;)V

    goto/16 :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

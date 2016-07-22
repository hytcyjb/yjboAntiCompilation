.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 353
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 357
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v5

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #setter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->selectPosition:I
    invoke-static {v0, p3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$502(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;I)I

    .line 362
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/model/OrderHistory;

    .line 364
    .local v4, order:Lcom/didi/common/model/OrderHistory;
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->onOrderItemEdited(Landroid/widget/AdapterView;Landroid/view/View;ILcom/didi/common/model/OrderHistory;Z)V
    invoke-static/range {v0 .. v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$600(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Landroid/widget/AdapterView;Landroid/view/View;ILcom/didi/common/model/OrderHistory;Z)V

    goto :goto_0
.end method

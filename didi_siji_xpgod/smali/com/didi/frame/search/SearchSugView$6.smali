.class Lcom/didi/frame/search/SearchSugView$6;
.super Ljava/lang/Object;
.source "SearchSugView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 518
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$6;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 522
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView$6;->this$0:Lcom/didi/frame/search/SearchSugView;

    add-int/lit8 v3, p3, 0x1

    #setter for: Lcom/didi/frame/search/SearchSugView;->index:I
    invoke-static {v2, v3}, Lcom/didi/frame/search/SearchSugView;->access$1602(Lcom/didi/frame/search/SearchSugView;I)I

    .line 523
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView$6;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/didi/frame/search/SearchSugView;->access$1000(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 524
    .local v1, c:I
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView$6;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/didi/frame/search/SearchSugView;->access$1700(Lcom/didi/frame/search/SearchSugView;)Ljava/util/ArrayList;

    move-result-object v2

    sub-int v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 525
    .local v0, addr:Lcom/didi/common/model/Address;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/didi/common/database/HistoryPoiDBHelper;->insert(Lcom/didi/common/model/Address;I)V

    .line 526
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView$6;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->upLoadAddressSug(Lcom/didi/common/model/Address;)V
    invoke-static {v2, v0}, Lcom/didi/frame/search/SearchSugView;->access$1800(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V

    .line 527
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView$6;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->onModify(Lcom/didi/common/model/Address;)V
    invoke-static {v2, v0}, Lcom/didi/frame/search/SearchSugView;->access$1400(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V

    .line 528
    return-void
.end method

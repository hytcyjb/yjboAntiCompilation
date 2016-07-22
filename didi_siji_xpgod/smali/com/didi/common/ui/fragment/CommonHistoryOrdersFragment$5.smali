.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$5;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 793
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 808
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 797
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hasNext:Z
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 800
    .local v1, last:I
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->getCount()I

    move-result v0

    .line 801
    .local v0, count:I
    add-int/lit8 v2, v0, -0x1

    if-lt v1, v2, :cond_0

    .line 802
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->loadMore()V
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    goto :goto_0
.end method

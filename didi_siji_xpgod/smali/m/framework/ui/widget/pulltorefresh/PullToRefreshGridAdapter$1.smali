.class Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;
.super Ljava/lang/Object;
.source "PullToRefreshGridAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

.field private visibleItemCount:I


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 35
    iput p2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->firstVisibleItem:I

    .line 36
    iput p3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->visibleItemCount:I

    .line 37
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    #getter for: Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->gridView:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;
    invoke-static {v1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V

    .line 39
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 22
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->fling:Z
    invoke-static {v1, v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;Z)V

    .line 23
    if-nez p2, :cond_0

    .line 24
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    #getter for: Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;
    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    #getter for: Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;
    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    move-result-object v0

    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->firstVisibleItem:I

    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->visibleItemCount:I

    invoke-interface {v0, v1, v2}, Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;->onListStopScrolling(II)V

    .line 31
    :cond_0
    :goto_1
    return-void

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    #getter for: Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;
    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    #getter for: Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;
    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

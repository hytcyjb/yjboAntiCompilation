.class Lcom/didi/common/ui/fragment/ShareFragment$3;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$3;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

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
    .line 248
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 230
    if-eqz p2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 233
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 235
    instance-of v3, v0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 236
    check-cast v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    .line 237
    .local v1, cia:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;
    invoke-virtual {v1, p1}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->onScrollEnd(Landroid/widget/AbsListView;)V

    .line 240
    .end local v1           #cia:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;
    :cond_2
    instance-of v3, v0, Lcom/didi/common/ui/fragment/ShareListAdapter;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 241
    check-cast v2, Lcom/didi/common/ui/fragment/ShareListAdapter;

    .line 242
    .local v2, sla:Lcom/didi/common/ui/fragment/ShareListAdapter;
    invoke-virtual {v2, p1}, Lcom/didi/common/ui/fragment/ShareListAdapter;->onScrollEnd(Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

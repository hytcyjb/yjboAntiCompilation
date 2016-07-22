.class public abstract Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;
.super Landroid/widget/BaseAdapter;
.source "SingleSelectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/SingleSelectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mSelected:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v1, -0x1

    .line 134
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 142
    :cond_1
    :goto_0
    return v0

    .line 137
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 142
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 111
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 106
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    iget v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 116
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    if-nez p2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p2, v0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    .line 122
    iget v1, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mSelected:I

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->onSelectChange(Landroid/view/View;IZ)V

    .line 123
    return-object p2

    .line 122
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method protected abstract onSelectChange(Landroid/view/View;IZ)V
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 101
    .local p0, this:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;,"Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter<TT;>;"
    iput p1, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->mSelected:I

    .line 102
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

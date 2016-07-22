.class public Lcom/didi/ddrive/ui/component/SingleSelectionListView;
.super Landroid/widget/ListView;
.source "SingleSelectionListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;,
        Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

.field private mListener:Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->setFooterDividersEnabled(Z)V

    .line 46
    invoke-virtual {p0, p0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getSelection()I

    move-result v0

    .line 37
    .local v0, select:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 40
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v1, v0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 61
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v0, p3}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->setSelection(I)V

    .line 62
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->mListener:Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->mListener:Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v1, p3}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;->onSelect(ILjava/lang/Object;)V

    .line 65
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    check-cast p1, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    .end local p1
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    .line 53
    return-void
.end method

.method public setOnSelectListener(Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/SingleSelectionListView;->mListener:Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;

    .line 57
    return-void
.end method

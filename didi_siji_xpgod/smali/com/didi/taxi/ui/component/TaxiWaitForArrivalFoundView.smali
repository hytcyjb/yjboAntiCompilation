.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;
.super Landroid/widget/GridView;
.source "TaxiWaitForArrivalFoundView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$1;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundListener;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$ViewHolder;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;
    }
.end annotation


# instance fields
.field mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 72
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;

    .line 73
    .local v0, adapter:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;
    invoke-virtual {v0, p3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/model/TaxiFound;

    .line 75
    .local v1, found:Lcom/didi/taxi/model/TaxiFound;
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundListener;

    .line 76
    .local v2, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundListener;
    if-eqz v2, :cond_0

    .line 77
    invoke-interface {v2, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundListener;->onFoundItemClicked(Lcom/didi/taxi/model/TaxiFound;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFoundData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiFound;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, foundList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiFound;>;"
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;

    invoke-direct {v0, p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;Ljava/util/List;)V

    .line 65
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-virtual {p0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundListener;

    .line 61
    return-void
.end method

.class public Lcom/didi/frame/departure/DepartureSearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "DepartureSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/departure/DepartureSearchAdapter$1;,
        Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "con"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/didi/frame/departure/DepartureSearchAdapter;->list:Ljava/util/ArrayList;

    .line 27
    iput-object p2, p0, Lcom/didi/frame/departure/DepartureSearchAdapter;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/frame/departure/DepartureSearchAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/didi/common/model/Address;
    .locals 1
    .parameter "position"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/frame/departure/DepartureSearchAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/didi/frame/departure/DepartureSearchAdapter;->getItem(I)Lcom/didi/common/model/Address;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 39
    if-nez p2, :cond_1

    .line 40
    iget-object v4, p0, Lcom/didi/frame/departure/DepartureSearchAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03009b

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    invoke-static {p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 42
    new-instance v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;

    invoke-direct {v1, p0, v7}, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;-><init>(Lcom/didi/frame/departure/DepartureSearchAdapter;Lcom/didi/frame/departure/DepartureSearchAdapter$1;)V

    .line 43
    .local v1, holder:Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;
    const v4, 0x7f08036a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 44
    const v4, 0x7f08036b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/didi/frame/departure/DepartureSearchAdapter;->getItem(I)Lcom/didi/common/model/Address;

    move-result-object v2

    .line 55
    .local v2, poi:Lcom/didi/common/model/Address;
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/didi/frame/departure/DepartureSearchAdapter;->getItem(I)Lcom/didi/common/model/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v4, 0x106000d

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    return-object p2

    .line 47
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #holder:Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;
    .end local v2           #poi:Lcom/didi/common/model/Address;
    :cond_1
    move-object v3, p2

    .line 48
    .local v3, view:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/didi/frame/departure/DepartureSearchAdapter$ViewHolder;
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/didi/frame/departure/DepartureSearchAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

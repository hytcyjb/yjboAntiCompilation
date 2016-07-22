.class public Lcom/didi/frame/departure/DepartureResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DepartureResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/departure/DepartureResultAdapter$1;,
        Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/didi/common/model/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private mSplitterPosition:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Address;>;"
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getSplitterPosition()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/didi/frame/departure/DepartureResultAdapter;->mSplitterPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 48
    if-nez p2, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/didi/frame/departure/DepartureResultAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03009b

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 50
    .local v3, view:Landroid/view/View;
    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 51
    new-instance v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;

    invoke-direct {v1, p0, v7}, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;-><init>(Lcom/didi/frame/departure/DepartureResultAdapter;Lcom/didi/frame/departure/DepartureResultAdapter$1;)V

    .line 52
    .local v1, holder:Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;
    const v4, 0x7f08036a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 53
    const v4, 0x7f08036b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    .line 54
    const v4, 0x7f08036c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lx/ImageView;

    iput-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->icon:Lx/ImageView;

    .line 55
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    invoke-virtual {p0}, Lcom/didi/frame/departure/DepartureResultAdapter;->getCount()I

    move-result v4

    if-le v4, p1, :cond_1

    .line 65
    invoke-virtual {p0, p1}, Lcom/didi/frame/departure/DepartureResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/Address;

    .line 66
    .local v2, poi:Lcom/didi/common/model/Address;
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/didi/frame/departure/DepartureResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/model/Address;

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/didi/frame/departure/DepartureResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/model/Address;

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->icon:Lx/ImageView;

    invoke-virtual {v4, v6}, Lx/ImageView;->setVisibility(I)V

    .line 77
    .end local v0           #addr:Ljava/lang/String;
    .end local v2           #poi:Lcom/didi/common/model/Address;
    :cond_1
    :goto_1
    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    return-object v3

    .line 57
    .end local v1           #holder:Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    move-object v3, p2

    .line 58
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;
    goto :goto_0

    .line 74
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v2       #poi:Lcom/didi/common/model/Address;
    :cond_3
    iget-object v4, v1, Lcom/didi/frame/departure/DepartureResultAdapter$ViewHolder;->icon:Lx/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lx/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/didi/frame/departure/DepartureResultAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

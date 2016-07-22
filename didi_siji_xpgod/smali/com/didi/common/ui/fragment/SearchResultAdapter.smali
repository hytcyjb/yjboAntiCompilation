.class public Lcom/didi/common/ui/fragment/SearchResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/fragment/SearchResultAdapter$1;,
        Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;
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
    .line 25
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Address;>;"
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    return-void
.end method

.method private isGroupTitle(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method private isLoading()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :cond_0
    return v1
.end method


# virtual methods
.method public getSplitterPosition()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/didi/common/ui/fragment/SearchResultAdapter;->mSplitterPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x106000d

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 58
    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300f7

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, view:Landroid/view/View;
    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 61
    new-instance v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;

    invoke-direct {v1, p0, v9}, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;-><init>(Lcom/didi/common/ui/fragment/SearchResultAdapter;Lcom/didi/common/ui/fragment/SearchResultAdapter$1;)V

    .line 62
    .local v1, holder:Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;
    const v4, 0x7f08036a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 63
    const v4, 0x7f08036b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    .line 64
    const v4, 0x7f08003d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mProgress:Landroid/widget/ProgressBar;

    .line 65
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 73
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    :goto_1
    return-object v3

    .line 67
    .end local v1           #holder:Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    move-object v3, p2

    .line 68
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;
    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->isGroupTitle(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    iput p1, p0, Lcom/didi/common/ui/fragment/SearchResultAdapter;->mSplitterPosition:I

    .line 80
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const v5, 0x7f0b052c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const v4, 0x7f070037

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 88
    :cond_2
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/Address;

    .line 93
    .local v2, poi:Lcom/didi/common/model/Address;
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/model/Address;

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, addr:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_3
    iget-object v4, v1, Lcom/didi/common/ui/fragment/SearchResultAdapter$ViewHolder;->mAddr:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->getCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 42
    .local v0, p:Lcom/didi/common/model/Address;
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

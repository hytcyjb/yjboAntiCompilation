.class public Lcom/didi/common/ui/citypicker/SortAdapter;
.super Landroid/widget/BaseAdapter;
.source "SortAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->list:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->list:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "section"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/SortAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/CityIndex;

    iget-object v2, v3, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    .line 85
    .local v2, sortStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    .local v0, firstChar:C
    if-ne v0, p1, :cond_0

    .line 91
    .end local v0           #firstChar:C
    .end local v1           #i:I
    .end local v2           #sortStr:Ljava/lang/String;
    :goto_1
    return v1

    .line 83
    .restart local v0       #firstChar:C
    .restart local v1       #i:I
    .restart local v2       #sortStr:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0           #firstChar:C
    .end local v2           #sortStr:Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/CityIndex;

    iget-object v0, v0, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, viewHolder:Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;
    iget-object v3, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/CityIndex;

    .line 47
    .local v0, cityIndex:Lcom/didi/common/model/CityIndex;
    if-nez p2, :cond_0

    .line 48
    new-instance v2, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;

    .end local v2           #viewHolder:Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;
    invoke-direct {v2}, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;-><init>()V

    .line 49
    .restart local v2       #viewHolder:Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;
    iget-object v3, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030075

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    const v3, 0x7f0802d6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f0802d5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;->cityLetter:Landroid/widget/TextView;

    .line 52
    invoke-static {p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 53
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/citypicker/SortAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 60
    .local v1, section:I
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/citypicker/SortAdapter;->getPositionForSection(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 61
    iget-object v3, v2, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;->cityLetter:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v3, v2, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;->cityLetter:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_1
    iget-object v3, v2, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/didi/common/model/CityIndex;->cityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-object p2

    .line 55
    .end local v1           #section:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewHolder:Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;
    check-cast v2, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;

    .restart local v2       #viewHolder:Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;
    goto :goto_0

    .line 64
    .restart local v1       #section:I
    :cond_1
    iget-object v3, v2, Lcom/didi/common/ui/citypicker/SortAdapter$ViewHolder;->cityLetter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CityIndex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CityIndex;>;"
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/SortAdapter;->list:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/SortAdapter;->notifyDataSetChanged()V

    .line 30
    return-void
.end method

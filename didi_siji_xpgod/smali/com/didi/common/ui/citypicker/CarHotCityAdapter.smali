.class public Lcom/didi/common/ui/citypicker/CarHotCityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarHotCityAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CarHotCity;",
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
            "Lcom/didi/common/model/CarHotCity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CarHotCity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->list:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, viewHolder:Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/CarHotCity;

    .line 46
    .local v0, carHotCity:Lcom/didi/common/model/CarHotCity;
    if-nez p2, :cond_0

    .line 47
    new-instance v1, Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;

    .end local v1           #viewHolder:Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;-><init>()V

    .line 48
    .restart local v1       #viewHolder:Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    const v2, 0x7f0802d6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v2, v1, Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/didi/common/model/CarHotCity;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 57
    return-object p2

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #viewHolder:Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;
    check-cast v1, Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;

    .restart local v1       #viewHolder:Lcom/didi/common/ui/citypicker/CarHotCityAdapter$ViewHolder;
    goto :goto_0
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/CarHotCity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/CarHotCity;>;"
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->list:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Lcom/didi/common/ui/citypicker/CarHotCityAdapter;->notifyDataSetChanged()V

    .line 29
    return-void
.end method

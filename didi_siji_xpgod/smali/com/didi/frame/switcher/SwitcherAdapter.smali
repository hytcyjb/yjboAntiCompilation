.class public Lcom/didi/frame/switcher/SwitcherAdapter;
.super Ljava/lang/Object;
.source "SwitcherAdapter.java"


# instance fields
.field private businessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/frame/business/Business;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/didi/frame/business/Business;)V
    .locals 5
    .parameter "businesses"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    .line 21
    move-object v0, p1

    .local v0, arr$:[Lcom/didi/frame/business/Business;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 22
    .local v1, business:Lcom/didi/frame/business/Business;
    iget-object v4, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v1           #business:Lcom/didi/frame/business/Business;
    :cond_0
    return-void
.end method


# virtual methods
.method public addBuiness(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "business"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public addBuiness(Lcom/didi/frame/business/Business;I)V
    .locals 1
    .parameter "business"
    .parameter "index"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public containsBuiness(Lcom/didi/frame/business/Business;)Z
    .locals 1
    .parameter "business"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deleteBuiness(Lcom/didi/frame/business/Business;)Z
    .locals 1
    .parameter "business"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBusiness(I)Lcom/didi/frame/business/Business;
    .locals 1
    .parameter "position"

    .prologue
    .line 35
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/Business;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->size(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public getIconResId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->getIconResId()I

    move-result v0

    return v0
.end method

.method public getIconResUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->getIconResUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexByBusinexx(Lcom/didi/frame/business/Business;)I
    .locals 1
    .parameter "business"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public switchToCity(Ljava/lang/String;)V
    .locals 2
    .parameter "targetCityId"

    .prologue
    .line 52
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->getBusinessList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitcherBusList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherAdapter;->businessList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 54
    return-void
.end method

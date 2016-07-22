.class public Lcom/didi/common/ui/citypicker/PinyinComparator;
.super Ljava/lang/Object;
.source "PinyinComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/didi/common/model/CityIndex;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/didi/common/model/CityIndex;Lcom/didi/common/model/CityIndex;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 10
    iget-object v0, p1, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 15
    :goto_0
    return v0

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p1, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    iget-object v1, p2, Lcom/didi/common/model/CityIndex;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    check-cast p1, Lcom/didi/common/model/CityIndex;

    .end local p1
    check-cast p2, Lcom/didi/common/model/CityIndex;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/common/ui/citypicker/PinyinComparator;->compare(Lcom/didi/common/model/CityIndex;Lcom/didi/common/model/CityIndex;)I

    move-result v0

    return v0
.end method

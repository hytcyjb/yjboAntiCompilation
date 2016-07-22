.class public Lcom/didi/common/ui/userinfo/AgeList;
.super Lcom/didi/common/model/BaseObject;
.source "AgeList.java"


# instance fields
.field private ageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/userinfo/UserInfo$Age;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/AgeList;->ageList:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public get(I)Lcom/didi/common/ui/userinfo/UserInfo$Age;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/AgeList;->ageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/userinfo/UserInfo$Age;

    return-object v0
.end method

.method public getAgeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/userinfo/UserInfo$Age;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/AgeList;->ageList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/AgeList;->ageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/userinfo/AgeList;->ageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 28
    const-string v3, "list_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 29
    .local v0, ageJsonArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 31
    .local v2, length:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_0

    .line 32
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/AgeList;->ageList:Ljava/util/List;

    new-instance v4, Lcom/didi/common/ui/userinfo/UserInfo$Age;

    invoke-direct {v4}, Lcom/didi/common/ui/userinfo/UserInfo$Age;-><init>()V

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/common/ui/userinfo/UserInfo$Age;->parse(Lorg/json/JSONObject;)Lcom/didi/common/ui/userinfo/UserInfo$Age;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 35
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_0
    return-void
.end method

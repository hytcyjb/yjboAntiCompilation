.class Lcom/avos/avoscloud/AVFellowshipQuery;
.super Lcom/avos/avoscloud/AVQuery;
.source "AVFellowshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVUser;",
        ">",
        "Lcom/avos/avoscloud/AVQuery",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private friendshipTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    return-void
.end method

.method private processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 50
    new-instance v0, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFollowResponse;

    .line 52
    iget-object v0, v0, Lcom/avos/avoscloud/AVFollowResponse;->results:[Ljava/util/Map;

    invoke-direct {p0, v0, v1, p2}, Lcom/avos/avoscloud/AVFellowshipQuery;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v1

    .line 53
    goto :goto_0
.end method

.method private processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    .line 29
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->getClazz()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->getClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    move-object v1, v0

    .line 36
    :goto_1
    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 38
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    move-object v1, v0

    goto :goto_1

    .line 42
    :cond_2
    return-void
.end method


# virtual methods
.method getFriendshipTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avos/avoscloud/AVFellowshipQuery;->friendshipTag:Ljava/lang/String;

    return-object v0
.end method

.method protected processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFellowshipQuery;->friendshipTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVFellowshipQuery;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method setFriendshipTag(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/avos/avoscloud/AVFellowshipQuery;->friendshipTag:Ljava/lang/String;

    .line 21
    return-void
.end method

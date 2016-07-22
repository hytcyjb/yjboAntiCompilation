.class public Lcom/avos/avoscloud/AVStatusQuery;
.super Lcom/avos/avoscloud/AVQuery;
.source "AVStatusQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVQuery",
        "<",
        "Lcom/avos/avoscloud/AVStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final END:Ljava/lang/String; = "end"


# instance fields
.field private count:Z

.field private inboxType:Ljava/lang/String;

.field private maxId:J

.field private owner:Lcom/avos/avoscloud/AVUser;

.field private selfStatusQuery:Z

.field private sinceId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "_Status"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    .line 22
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatusQuery;->getInclude()Ljava/util/List;

    move-result-object v0

    const-string v1, "source"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public assembleParameters()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 71
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "inboxType"

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVStatusQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 75
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatusQuery;->getParameters()Ljava/util/Map;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 79
    const-string v2, "owner"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    iget-wide v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 82
    const-string v1, "sinceId"

    iget-wide v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    if-nez v1, :cond_3

    .line 85
    const-string v1, "inboxType"

    iget-object v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_3
    iget-wide v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 88
    const-string v1, "maxId"

    iget-wide v2, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_4
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    if-eqz v1, :cond_5

    .line 91
    const-string v1, "count"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatusQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/QueryConditions;->setParameters(Ljava/util/Map;)V

    .line 94
    return-object v0
.end method

.method protected getInboxType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    return-wide v0
.end method

.method public getOwner()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    return-wide v0
.end method

.method public isCount()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    return v0
.end method

.method protected processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    const-class v0, Lcom/avos/avoscloud/InboxStatusFindCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    check-cast p2, Lcom/avos/avoscloud/InboxStatusFindCallback;

    .line 102
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 103
    const/4 v0, 0x0

    .line 104
    const-string v2, "end"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v0, "end"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 107
    :cond_0
    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/InboxStatusFindCallback;->setEnd(Z)V

    .line 109
    :cond_1
    return-void
.end method

.method public setCount(Z)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->count:Z

    .line 55
    return-void
.end method

.method public setInboxType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->inboxType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMaxId(J)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->maxId:J

    .line 47
    return-void
.end method

.method public setOwner(Lcom/avos/avoscloud/AVUser;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->owner:Lcom/avos/avoscloud/AVUser;

    .line 63
    return-void
.end method

.method protected setSelfQuery(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->selfStatusQuery:Z

    .line 67
    return-void
.end method

.method public setSinceId(J)V
    .locals 1
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatusQuery;->sinceId:J

    .line 27
    return-void
.end method

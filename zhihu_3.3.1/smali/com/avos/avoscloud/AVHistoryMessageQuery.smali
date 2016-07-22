.class public Lcom/avos/avoscloud/AVHistoryMessageQuery;
.super Ljava/lang/Object;
.source "AVHistoryMessageQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;
    }
.end annotation


# instance fields
.field convid:Ljava/lang/String;

.field from:Ljava/lang/String;

.field limit:I

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVHistoryMessageQuery;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVRequestParams;-><init>()V

    .line 142
    iget v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->limit:I

    if-lez v0, :cond_0

    .line 143
    const-string v0, "limit"

    iget v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    const-string v0, "from"

    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 152
    const-string v0, "timestamp"

    iget-wide v4, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "rtm/messages/logs/"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVHistoryMessageQuery$2;-><init>(Lcom/avos/avoscloud/AVHistoryMessageQuery;Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;)V

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 174
    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const-string v0, "convid"

    iget-object v1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVHistoryMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 188
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 191
    :try_start_0
    new-instance v4, Lcom/avos/avoscloud/AVHistoryMessage;

    invoke-direct {v4}, Lcom/avos/avoscloud/AVHistoryMessage;-><init>()V

    .line 192
    const-string v1, "conv-id"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/AVHistoryMessage;->setConvid(Ljava/lang/String;)V

    .line 193
    const-string v1, "from"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/AVHistoryMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 194
    const-string v1, "is-room"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "is-room"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/AVHistoryMessage;->setRoom(Z)V

    .line 195
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/AVHistoryMessage;->setMessage(Ljava/lang/String;)V

    .line 196
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/avos/avoscloud/AVHistoryMessage;->setTimestamp(J)V

    .line 197
    invoke-virtual {v4}, Lcom/avos/avoscloud/AVHistoryMessage;->isRoom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "to"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/avos/avoscloud/AVHistoryMessage;->setGroupId(Ljava/lang/String;)V

    .line 204
    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 194
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 200
    :cond_1
    :try_start_1
    const-string v1, "to"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/avos/avoscloud/AVHistoryMessage;->setToPeerIds(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 210
    :cond_2
    return-object v2
.end method


# virtual methods
.method public find()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVHistoryMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Lcom/avos/avoscloud/AVHistoryMessageQuery$1;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery$1;-><init>(Lcom/avos/avoscloud/AVHistoryMessageQuery;Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;Z)V

    .line 125
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 128
    :cond_0
    return-object v0
.end method

.method public findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->findInBackground(Lcom/avos/avoscloud/AVHistoryMessageQuery$HistoryMessageCallback;Z)V

    .line 138
    return-void
.end method

.method protected getConvid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    return-object v0
.end method

.method protected getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    return-object v0
.end method

.method protected getLimit()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->limit:I

    return v0
.end method

.method protected getTimestamp()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->timestamp:J

    return-wide v0
.end method

.method protected setConvid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t alloc \'from\' and conversation related value at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    .line 64
    return-void
.end method

.method protected setGroupId(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t alloc from and conversation value at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->limit:I

    .line 37
    return-void
.end method

.method public setPeerIds(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->from:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t alloc from and conversation value at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 92
    const-string v0, ":"

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->convid:Ljava/lang/String;

    .line 95
    :cond_1
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/avos/avoscloud/AVHistoryMessageQuery;->timestamp:J

    .line 78
    return-void
.end method

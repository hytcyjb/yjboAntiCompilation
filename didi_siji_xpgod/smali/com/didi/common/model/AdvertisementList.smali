.class public Lcom/didi/common/model/AdvertisementList;
.super Lcom/didi/common/model/BaseObject;
.source "AdvertisementList.java"


# instance fields
.field public currentTime:J

.field public transient iconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/Icon;",
            ">;"
        }
    .end annotation
.end field

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Advertisement;",
            ">;"
        }
    .end annotation
.end field

.field public oldVersion:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/model/AdvertisementList;->list:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/model/AdvertisementList;->iconList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/didi/common/model/AdvertisementList;->currentTime:J

    return-wide v0
.end method

.method public getIconList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/common/model/AdvertisementList;->iconList:Ljava/util/List;

    return-object v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Advertisement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/common/model/AdvertisementList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOldVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/common/model/AdvertisementList;->oldVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/common/model/AdvertisementList;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasUpdate()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/didi/common/model/AdvertisementList;->version:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/model/AdvertisementList;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/common/model/AdvertisementList;->oldVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 64
    const-string v1, "current_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/common/model/AdvertisementList;->currentTime:J

    .line 65
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/AdvertisementList;->version:Ljava/lang/String;

    .line 66
    const-string v1, "pics"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 67
    .local v0, array:Lorg/json/JSONArray;
    new-instance v1, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v1}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v2, Lcom/didi/common/model/Advertisement;

    invoke-direct {v2}, Lcom/didi/common/model/Advertisement;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/AdvertisementList;->list:Ljava/util/ArrayList;

    .line 69
    const-string v1, "icons"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v1}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v2, Lcom/didi/common/model/Icon;

    invoke-direct {v2}, Lcom/didi/common/model/Icon;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/AdvertisementList;->iconList:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0
    .parameter "currentTime"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/didi/common/model/AdvertisementList;->currentTime:J

    .line 36
    return-void
.end method

.method public setIconList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/Icon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, iconList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    iput-object p1, p0, Lcom/didi/common/model/AdvertisementList;->iconList:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/didi/common/model/AdvertisementList;->version:Ljava/lang/String;

    .line 44
    return-void
.end method

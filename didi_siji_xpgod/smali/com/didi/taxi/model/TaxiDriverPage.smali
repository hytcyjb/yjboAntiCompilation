.class public Lcom/didi/taxi/model/TaxiDriverPage;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiDriverPage.java"


# instance fields
.field public company:Ljava/lang/String;

.field public headUrl:Ljava/lang/String;

.field public level:I

.field public license:Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiComment;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public orderCount:I

.field public rankCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiDriverPage;->name:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiDriverPage;->company:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiDriverPage;->license:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->level:I

    .line 22
    iput v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->orderCount:I

    .line 24
    iput v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->rankCount:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiDriverPage;->headUrl:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiDriverPage;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiDriverPage;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 46
    const-string v1, "d_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->name:Ljava/lang/String;

    .line 47
    const-string v1, "d_license"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->license:Ljava/lang/String;

    .line 48
    const-string v1, "d_company"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->company:Ljava/lang/String;

    .line 49
    const-string v1, "d_level_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->level:I

    .line 50
    const-string v1, "head_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->headUrl:Ljava/lang/String;

    .line 51
    const-string v1, "d_striveorder_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->orderCount:I

    .line 52
    const-string v1, "d_rank"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->rankCount:I

    .line 53
    const-string v1, "d_comment_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "d_comment_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 56
    .local v0, array:Lorg/json/JSONArray;
    new-instance v1, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v1}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v2, Lcom/didi/taxi/model/TaxiComment;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiComment;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->list:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Driver [ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", company="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->company:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rankCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->rankCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", license="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->license:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiDriverPage;->orderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

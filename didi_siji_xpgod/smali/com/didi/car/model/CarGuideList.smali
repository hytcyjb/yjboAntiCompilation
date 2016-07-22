.class public Lcom/didi/car/model/CarGuideList;
.super Lcom/didi/common/model/BaseObject;
.source "CarGuideList.java"


# static fields
.field private static final serialVersionUID:J = -0x501117e24a08f20fL


# instance fields
.field private carGuide:Lcom/didi/car/model/CarGuide;

.field private ddriveGuide:Lcom/didi/car/model/CarGuide;

.field private flierGuide:Lcom/didi/car/model/CarGuide;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarGuide;",
            ">;"
        }
    .end annotation
.end field

.field private taxiGuide:Lcom/didi/car/model/CarGuide;

.field private type:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarGuide()Lcom/didi/car/model/CarGuide;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->carGuide:Lcom/didi/car/model/CarGuide;

    return-object v0
.end method

.method public getDdriveGuide()Lcom/didi/car/model/CarGuide;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    return-object v0
.end method

.method public getFlierGuide()Lcom/didi/car/model/CarGuide;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->flierGuide:Lcom/didi/car/model/CarGuide;

    return-object v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarGuide;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTaxiGuide()Lcom/didi/car/model/CarGuide;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->taxiGuide:Lcom/didi/car/model/CarGuide;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/didi/car/model/CarGuideList;->type:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasUpdate()Z
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getAnnouncementVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarGuideList;->version:Ljava/lang/String;

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

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 66
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarGuideList;->version:Ljava/lang/String;

    .line 67
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarGuideList;->type:I

    .line 68
    const-string v0, "wanliu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/didi/car/model/CarGuide;

    invoke-direct {v0}, Lcom/didi/car/model/CarGuide;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarGuideList;->carGuide:Lcom/didi/car/model/CarGuide;

    .line 70
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->carGuide:Lcom/didi/car/model/CarGuide;

    const-string v1, "wanliu"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarGuide;->parse(Lorg/json/JSONObject;)V

    .line 73
    :cond_0
    const-string v0, "taxi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Lcom/didi/car/model/CarGuide;

    invoke-direct {v0}, Lcom/didi/car/model/CarGuide;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarGuideList;->taxiGuide:Lcom/didi/car/model/CarGuide;

    .line 75
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->taxiGuide:Lcom/didi/car/model/CarGuide;

    const-string v1, "taxi"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarGuide;->parse(Lorg/json/JSONObject;)V

    .line 78
    :cond_1
    const-string v0, "kuaiche"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    new-instance v0, Lcom/didi/car/model/CarGuide;

    invoke-direct {v0}, Lcom/didi/car/model/CarGuide;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarGuideList;->flierGuide:Lcom/didi/car/model/CarGuide;

    .line 80
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->flierGuide:Lcom/didi/car/model/CarGuide;

    const-string v1, "kuaiche"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarGuide;->parse(Lorg/json/JSONObject;)V

    .line 83
    :cond_2
    const-string v0, "daijia"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    new-instance v0, Lcom/didi/car/model/CarGuide;

    invoke-direct {v0}, Lcom/didi/car/model/CarGuide;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarGuideList;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    .line 85
    iget-object v0, p0, Lcom/didi/car/model/CarGuideList;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    const-string v1, "daijia"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarGuide;->parse(Lorg/json/JSONObject;)V

    .line 87
    :cond_3
    return-void
.end method

.method public setCarGuide(Lcom/didi/car/model/CarGuide;)V
    .locals 0
    .parameter "carGuide"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/car/model/CarGuideList;->carGuide:Lcom/didi/car/model/CarGuide;

    .line 110
    return-void
.end method

.method public setDdriveGuide(Lcom/didi/car/model/CarGuide;)V
    .locals 0
    .parameter "ddriveGuide"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/didi/car/model/CarGuideList;->ddriveGuide:Lcom/didi/car/model/CarGuide;

    .line 126
    return-void
.end method

.method public setFlierGuide(Lcom/didi/car/model/CarGuide;)V
    .locals 0
    .parameter "flierGuide"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/didi/car/model/CarGuideList;->flierGuide:Lcom/didi/car/model/CarGuide;

    .line 118
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarGuide;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarGuide;>;"
    iput-object p1, p0, Lcom/didi/car/model/CarGuideList;->list:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public setTaxiGuide(Lcom/didi/car/model/CarGuide;)V
    .locals 0
    .parameter "taxiGuide"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/car/model/CarGuideList;->taxiGuide:Lcom/didi/car/model/CarGuide;

    .line 102
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 46
    iput p1, p0, Lcom/didi/car/model/CarGuideList;->type:I

    .line 47
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/didi/car/model/CarGuideList;->version:Ljava/lang/String;

    .line 39
    return-void
.end method

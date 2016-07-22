.class public Lcom/didi/beatles/model/BtsConfig$Didialift;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/model/BtsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Didialift"
.end annotation


# instance fields
.field public buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsConfig$Button;",
            ">;"
        }
    .end annotation
.end field

.field public pic_type:I

.field public pic_url_1:Ljava/lang/String;

.field public pic_url_2:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$Didialift;->buttons:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 265
    const-string v1, "buttons"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "buttons"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 267
    .local v0, array:Lorg/json/JSONArray;
    new-instance v1, Lcom/didi/beatles/model/BtsJSONHelper;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsJSONHelper;-><init>()V

    new-instance v2, Lcom/didi/beatles/model/BtsConfig$Button;

    invoke-direct {v2}, Lcom/didi/beatles/model/BtsConfig$Button;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/beatles/model/BtsJSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/beatles/model/BtsBaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig$Didialift;->buttons:Ljava/util/ArrayList;

    .line 270
    .end local v0           #array:Lorg/json/JSONArray;
    :cond_0
    const-string v1, "pic_type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_type:I

    .line 272
    const-string v1, "pic_url_1"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_url_1:Ljava/lang/String;

    .line 273
    const-string v1, "pic_url_2"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_url_2:Ljava/lang/String;

    .line 274
    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig$Didialift;->url:Ljava/lang/String;

    .line 275
    return-void
.end method

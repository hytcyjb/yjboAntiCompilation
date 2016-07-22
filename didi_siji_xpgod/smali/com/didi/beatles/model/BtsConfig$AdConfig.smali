.class public Lcom/didi/beatles/model/BtsConfig$AdConfig;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/model/BtsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdConfig"
.end annotation


# instance fields
.field public auto_expand:Z

.field public btn_title:Ljava/lang/String;

.field public btn_url:Ljava/lang/String;

.field public is_round:Z

.field public is_show:Z

.field public pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsConfig$Page;",
            ">;"
        }
    .end annotation
.end field

.field public show_red_point:Z

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    const-string v1, "is_show"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_show:Z

    .line 224
    const-string v1, "auto_expand"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->auto_expand:Z

    .line 225
    const-string v1, "show_red_point"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->show_red_point:Z

    .line 226
    const-string v1, "title"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->title:Ljava/lang/String;

    .line 227
    const-string v1, "is_round"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_round:Z

    .line 228
    const-string v1, "version"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->version:I

    .line 230
    const-string v1, "pages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "pages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 232
    .local v0, array:Lorg/json/JSONArray;
    new-instance v1, Lcom/didi/beatles/model/BtsJSONHelper;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsJSONHelper;-><init>()V

    new-instance v2, Lcom/didi/beatles/model/BtsConfig$Page;

    invoke-direct {v2}, Lcom/didi/beatles/model/BtsConfig$Page;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/didi/beatles/model/BtsJSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/beatles/model/BtsBaseObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    .line 235
    .end local v0           #array:Lorg/json/JSONArray;
    :cond_0
    const-string v1, "btn_title"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->btn_title:Ljava/lang/String;

    .line 236
    const-string v1, "btn_url"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->btn_url:Ljava/lang/String;

    .line 237
    return-void

    :cond_1
    move v1, v3

    .line 223
    goto :goto_0

    :cond_2
    move v1, v3

    .line 224
    goto :goto_1

    :cond_3
    move v1, v3

    .line 225
    goto :goto_2

    :cond_4
    move v2, v3

    .line 227
    goto :goto_3
.end method

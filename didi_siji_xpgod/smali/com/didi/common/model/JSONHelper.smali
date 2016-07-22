.class public Lcom/didi/common/model/JSONHelper;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/didi/common/model/BaseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, this:Lcom/didi/common/model/JSONHelper;,"Lcom/didi/common/model/JSONHelper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "obj"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v3

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 52
    .local v0, array:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 54
    .local v4, object:Ljava/lang/Object;
    const/4 v2, 0x0

    .end local v4           #object:Ljava/lang/Object;
    .local v2, i:I
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 56
    .restart local v4       #object:Ljava/lang/Object;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    .end local v4           #object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;
    .locals 6
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/didi/common/model/JSONHelper;,"Lcom/didi/common/model/JSONHelper<TT;>;"
    .local p2, t:Lcom/didi/common/model/BaseObject;,"TT;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 43
    :cond_0
    return-object v3

    .line 30
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 31
    .local v2, length:I
    move-object v1, p2

    .line 32
    .local v1, item:Lcom/didi/common/model/BaseObject;,"TT;"
    const/4 v4, 0x0

    .line 33
    .local v4, obj:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/didi/common/model/BaseObject;->parse(Ljava/lang/String;)V

    .line 38
    :cond_2
    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_3
    invoke-virtual {p2}, Lcom/didi/common/model/BaseObject;->clone()Lcom/didi/common/model/BaseObject;

    move-result-object v1

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

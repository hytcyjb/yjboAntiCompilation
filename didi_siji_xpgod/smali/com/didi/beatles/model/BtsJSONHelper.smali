.class public Lcom/didi/beatles/model/BtsJSONHelper;
.super Ljava/lang/Object;
.source "BtsJSONHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/didi/beatles/model/BtsBaseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, this:Lcom/didi/beatles/model/BtsJSONHelper;,"Lcom/didi/beatles/model/BtsJSONHelper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJSONArray(Lorg/json/JSONArray;Lcom/didi/beatles/model/BtsBaseObject;)Ljava/util/ArrayList;
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
    .line 25
    .local p0, this:Lcom/didi/beatles/model/BtsJSONHelper;,"Lcom/didi/beatles/model/BtsJSONHelper<TT;>;"
    .local p2, t:Lcom/didi/beatles/model/BtsBaseObject;,"TT;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 42
    :cond_0
    return-object v3

    .line 29
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 30
    .local v2, length:I
    move-object v1, p2

    .line 31
    .local v1, item:Lcom/didi/beatles/model/BtsBaseObject;,"TT;"
    const/4 v4, 0x0

    .line 32
    .local v4, obj:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/didi/beatles/model/BtsBaseObject;->parse(Ljava/lang/String;)V

    .line 37
    :cond_2
    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_3
    invoke-virtual {p2}, Lcom/didi/beatles/model/BtsBaseObject;->clone()Lcom/didi/beatles/model/BtsBaseObject;

    move-result-object v1

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

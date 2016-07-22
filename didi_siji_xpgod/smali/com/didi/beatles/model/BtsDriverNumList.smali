.class public Lcom/didi/beatles/model/BtsDriverNumList;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsDriverNumList.java"


# instance fields
.field public left_time:I

.field public next_tick:I

.field public numList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public offset_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsDriverNumList;->numList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 19
    invoke-super {p0, p1}, Lcom/didi/beatles/model/BtsBaseObject;->parse(Lorg/json/JSONObject;)V

    .line 21
    const-string v3, "push_count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 22
    .local v1, jList:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 23
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 24
    .local v2, v:I
    iget-object v3, p0, Lcom/didi/beatles/model/BtsDriverNumList;->numList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v2           #v:I
    :cond_0
    const-string v3, "next_tick"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/didi/beatles/model/BtsDriverNumList;->next_tick:I

    .line 29
    const-string v3, "left_time"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/didi/beatles/model/BtsDriverNumList;->left_time:I

    .line 30
    const-string v3, "offset_time"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/didi/beatles/model/BtsDriverNumList;->offset_time:I

    .line 31
    return-void
.end method

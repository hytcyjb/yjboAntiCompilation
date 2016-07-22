.class public Lcom/didi/beatles/model/order/BtsCommentDetail;
.super Ljava/lang/Object;
.source "BtsCommentDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public allowTags:[Ljava/lang/String;

.field public commentDownTime:Ljava/lang/String;

.field public toDriverComment:[Ljava/lang/String;

.field public toOther:Ljava/lang/String;

.field public toPassengerComment:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v5, "to_others"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toOther:Ljava/lang/String;

    .line 35
    const-string v5, "allow_tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 36
    .local v0, allowTagsJA:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 38
    .local v2, len:I
    if-lez v2, :cond_1

    .line 39
    new-array v5, v2, [Ljava/lang/String;

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsCommentDetail;->allowTags:[Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 41
    iget-object v5, p0, Lcom/didi/beatles/model/order/BtsCommentDetail;->allowTags:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    const-string v5, "to_driver_comment"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 47
    .local v3, toDriverCommentJA:Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 48
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 49
    .restart local v2       #len:I
    if-lez v2, :cond_2

    .line 50
    new-array v5, v2, [Ljava/lang/String;

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toDriverComment:[Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 52
    iget-object v5, p0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toDriverComment:[Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 56
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_2
    const-string v5, "to_passenger_comment"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 57
    .local v4, toPassengerCommentJA:Lorg/json/JSONArray;
    if-eqz v4, :cond_3

    .line 58
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 59
    .restart local v2       #len:I
    if-lez v2, :cond_3

    .line 60
    new-array v5, v2, [Ljava/lang/String;

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toPassengerComment:[Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_3

    .line 62
    iget-object v5, p0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toPassengerComment:[Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 66
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_3
    const-string v5, "comment_done_time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsCommentDetail;->commentDownTime:Ljava/lang/String;

    goto :goto_0
.end method

.class public Lcom/didi/beatles/model/order/BtsUserRate;
.super Ljava/lang/Object;
.source "BtsUserRate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final JSON_KEY_RATE_CID:Ljava/lang/String; = "rate_cid"

.field private static final JSON_KEY_RATE_DEFAULT:Ljava/lang/String; = "rate_default"

.field private static final JSON_KEY_RATE_DETAILS:Ljava/lang/String; = "rate_details"

.field private static final JSON_KEY_RATE_NAME:Ljava/lang/String; = "rate_name"

.field private static final serialVersionUID:J = -0x214b3e489eab9010L


# instance fields
.field public mChoice:I

.field public final mRateCid:J

.field public final mRateDefault:I

.field public final mRateDetails:[Ljava/lang/String;

.field public final mRateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "rate_cid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/didi/beatles/model/order/BtsUserRate;->mRateCid:J

    .line 32
    const-string v4, "rate_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsUserRate;->mRateName:Ljava/lang/String;

    .line 33
    const-string v4, "rate_default"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDefault:I

    .line 34
    const-string v4, "rate_details"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 35
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 37
    .local v3, len:I
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 39
    iget-object v4, p0, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v1           #i:I
    .end local v3           #len:I
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    .line 43
    :cond_1
    iget v4, p0, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDefault:I

    iput v4, p0, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    .line 44
    return-void
.end method

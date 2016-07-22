.class public Lcom/didi/beatles/model/role/BtsRandNickname;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsRandNickname.java"


# static fields
.field private static final serialVersionUID:J = -0x3604695bacfcc68L


# instance fields
.field public nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/didi/beatles/model/role/BtsRandNickname;->nickname:Ljava/lang/String;

    .line 17
    const-string v1, "nick"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 18
    .local v0, jList:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/role/BtsRandNickname;->nickname:Ljava/lang/String;

    .line 21
    :cond_0
    return-void
.end method

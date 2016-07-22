.class public Lcom/didi/common/model/UserProperty;
.super Lcom/didi/common/model/BaseObject;
.source "UserProperty.java"


# instance fields
.field public isVip:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/model/UserProperty;->isVip:I

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 12
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 13
    .local v0, data:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 14
    const-string v1, "is_vip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/common/model/UserProperty;->isVip:I

    .line 16
    :cond_0
    return-void
.end method

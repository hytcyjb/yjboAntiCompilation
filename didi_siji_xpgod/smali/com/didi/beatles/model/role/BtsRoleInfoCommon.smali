.class public Lcom/didi/beatles/model/role/BtsRoleInfoCommon;
.super Ljava/lang/Object;
.source "BtsRoleInfoCommon.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public auth_state:Ljava/lang/String;

.field public base_state:Z

.field public car_auth_state:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public head_img_url:Ljava/lang/String;

.field public nick_name:Ljava/lang/String;

.field public passenger_id:Ljava/lang/String;

.field public route_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFrom(Lorg/json/JSONObject;)Lcom/didi/beatles/model/role/BtsRoleInfoCommon;
    .locals 5
    .parameter "obj"

    .prologue
    .line 47
    new-instance v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    invoke-direct {v0}, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;-><init>()V

    .line 48
    .local v0, btsRoleInfoCommon:Lcom/didi/beatles/model/role/BtsRoleInfoCommon;
    const-string v2, "user_info"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    .local v1, userinfoJsonObject:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 50
    const-string v2, "gender"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->gender:Ljava/lang/String;

    .line 51
    const-string v2, "head_img_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->head_img_url:Ljava/lang/String;

    .line 52
    const-string v2, "auth_state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->auth_state:Ljava/lang/String;

    .line 53
    const-string v2, "nick_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->nick_name:Ljava/lang/String;

    .line 54
    const-string v2, "route_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->route_count:I

    .line 55
    const-string v2, "car_auth_state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->car_auth_state:Ljava/lang/String;

    .line 56
    const-string v2, "passenger_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->passenger_id:Ljava/lang/String;

    .line 57
    const-string v2, "1"

    const-string v3, "base_state"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->base_state:Z

    .line 59
    :cond_0
    return-object v0
.end method


# virtual methods
.method public isCarAuthState()Z
    .locals 2

    .prologue
    .line 40
    const-string v0, "1"

    iget-object v1, p0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->car_auth_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    iget-object v1, p0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->car_auth_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasRoute()Z
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->route_count:I

    if-lez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

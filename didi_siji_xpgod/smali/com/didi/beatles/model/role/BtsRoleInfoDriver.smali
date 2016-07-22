.class public Lcom/didi/beatles/model/role/BtsRoleInfoDriver;
.super Ljava/lang/Object;
.source "BtsRoleInfoDriver.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public car_brand:Ljava/lang/String;

.field public car_color:Ljava/lang/String;

.field public car_number:Ljava/lang/String;

.field public car_type:Ljava/lang/String;

.field public driver_show_type:Ljava/lang/String;

.field public op_content:Ljava/lang/String;

.field public op_url:Ljava/lang/String;

.field public opversion:Ljava/lang/String;

.field public order_content:Ljava/lang/String;

.field public order_im_num:Ljava/lang/String;

.field public order_num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFrom(Lorg/json/JSONObject;)Lcom/didi/beatles/model/role/BtsRoleInfoDriver;
    .locals 6
    .parameter "obj"

    .prologue
    .line 38
    new-instance v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    invoke-direct {v1}, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;-><init>()V

    .line 42
    .local v1, infoDriver:Lcom/didi/beatles/model/role/BtsRoleInfoDriver;
    const-string v4, "car_info"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    .local v0, carInfoJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 44
    const-string v4, "car_brand"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->car_brand:Ljava/lang/String;

    .line 45
    const-string v4, "car_color"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->car_color:Ljava/lang/String;

    .line 46
    const-string v4, "car_num"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->car_number:Ljava/lang/String;

    .line 47
    const-string v4, "car_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->car_type:Ljava/lang/String;

    .line 51
    :cond_0
    const-string v4, "driver_order_info"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 52
    .local v3, orderInfoJsonObject:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 53
    const-string v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->order_content:Ljava/lang/String;

    .line 54
    const-string v4, "im_num"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->order_im_num:Ljava/lang/String;

    .line 55
    const-string v4, "order_num"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->order_num:Ljava/lang/String;

    .line 60
    :cond_1
    const-string v4, "driver_op_info"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 61
    .local v2, opJsonObject:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 63
    const-string v4, "content"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->op_content:Ljava/lang/String;

    .line 64
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->op_url:Ljava/lang/String;

    .line 65
    const-string v4, "version"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->opversion:Ljava/lang/String;

    .line 68
    :cond_2
    return-object v1
.end method

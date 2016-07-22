.class public Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;
.super Ljava/lang/Object;
.source "BtsRoleInfoPassanger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public op_content:Ljava/lang/String;

.field public op_url:Ljava/lang/String;

.field public opversion:Ljava/lang/String;

.field public order_content:Ljava/lang/String;

.field public order_im_num:Ljava/lang/String;

.field public order_num:Ljava/lang/String;

.field public passenger_show_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFrom(Lorg/json/JSONObject;)Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;
    .locals 4
    .parameter "obj"

    .prologue
    .line 32
    new-instance v0, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    invoke-direct {v0}, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;-><init>()V

    .line 36
    .local v0, infoPassanger:Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;
    const-string v3, "passenger_order_info"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 37
    .local v2, passangerOrderJsonObject:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 38
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->order_content:Ljava/lang/String;

    .line 39
    const-string v3, "im_num"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->order_im_num:Ljava/lang/String;

    .line 40
    const-string v3, "order_num"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->order_num:Ljava/lang/String;

    .line 45
    :cond_0
    const-string v3, "passenger_op_info"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    .local v1, passangerOpJsonObject:Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 48
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->op_content:Ljava/lang/String;

    .line 49
    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->op_url:Ljava/lang/String;

    .line 50
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->opversion:Ljava/lang/String;

    .line 53
    :cond_1
    return-object v0
.end method

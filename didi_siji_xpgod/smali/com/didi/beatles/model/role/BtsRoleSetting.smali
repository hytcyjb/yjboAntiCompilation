.class public Lcom/didi/beatles/model/role/BtsRoleSetting;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsRoleSetting.java"


# static fields
.field private static final serialVersionUID:J = 0x74f4c1c7d6f3b22L


# instance fields
.field public new_order_alert:Z

.field public push_direct_degree:I

.field public vacation_push:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 17
    const-string v1, "settings_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const-string v1, "settings_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    .local v0, o:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 26
    const-string v1, "push_direct_degree"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    .line 27
    const-string v1, "1"

    const-string v2, "new_order_alert"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/beatles/model/role/BtsRoleSetting;->new_order_alert:Z

    .line 28
    const-string v1, "1"

    const-string v2, "vacation_push"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/beatles/model/role/BtsRoleSetting;->vacation_push:Z

    goto :goto_0
.end method

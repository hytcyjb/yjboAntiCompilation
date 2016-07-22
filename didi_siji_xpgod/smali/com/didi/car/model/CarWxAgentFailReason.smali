.class public Lcom/didi/car/model/CarWxAgentFailReason;
.super Lcom/didi/common/model/BaseObject;
.source "CarWxAgentFailReason.java"


# instance fields
.field public btnCloseTip:Ljava/lang/String;

.field public btnPayTip:Ljava/lang/String;

.field public checkContent:Ljava/lang/String;

.field public checkboxSelected:Z

.field public checkboxShow:Z

.field public failMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxShow:Z

    .line 19
    iput-boolean v0, p0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxSelected:Z

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 24
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarWxAgentFailReason;->failMsg:Ljava/lang/String;

    .line 25
    const-string v1, "button_close"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarWxAgentFailReason;->btnCloseTip:Ljava/lang/String;

    .line 26
    const-string v1, "button_pay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarWxAgentFailReason;->btnPayTip:Ljava/lang/String;

    .line 27
    const-string v1, "checkbox_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    const-string v1, "checkbox_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 29
    .local v0, checkObj:Lorg/json/JSONObject;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarWxAgentFailReason;->checkContent:Ljava/lang/String;

    .line 30
    const-string v1, "display"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxShow:Z

    .line 31
    const-string v1, "checked"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxSelected:Z

    .line 36
    .end local v0           #checkObj:Lorg/json/JSONObject;
    :goto_2
    return-void

    .restart local v0       #checkObj:Lorg/json/JSONObject;
    :cond_0
    move v1, v3

    .line 30
    goto :goto_0

    :cond_1
    move v2, v3

    .line 31
    goto :goto_1

    .line 33
    .end local v0           #checkObj:Lorg/json/JSONObject;
    :cond_2
    iput-boolean v3, p0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxShow:Z

    .line 34
    iput-boolean v3, p0, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxSelected:Z

    goto :goto_2
.end method

.class public Lcom/didi/car/model/CarWxAgentStatus;
.super Lcom/didi/common/model/BaseObject;
.source "CarWxAgentStatus.java"


# instance fields
.field public bindStatus:I

.field public status:I

.field public wxAgentBindNotice:Ljava/lang/String;

.field public wxAgentDesError:Ljava/lang/String;

.field public wxAgentLayerContent:Ljava/lang/String;

.field public wxAgentLayerTitle:Ljava/lang/String;

.field public wxAgentNotice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentNotice:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentBindNotice:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentDesError:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentLayerTitle:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentLayerContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 22
    const-string v0, "polling_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->status:I

    .line 23
    const-string v0, "bind_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->bindStatus:I

    .line 24
    const-string v0, "notice_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentNotice:Ljava/lang/String;

    .line 25
    const-string v0, "bind_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentBindNotice:Ljava/lang/String;

    .line 26
    const-string v0, "desc_err"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentDesError:Ljava/lang/String;

    .line 27
    const-string v0, "layer_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentLayerTitle:Ljava/lang/String;

    .line 28
    const-string v0, "layer_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentLayerContent:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarWxAgentStatus{baseobject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/didi/common/model/BaseObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarWxAgentStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxAgentNotice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxAgentBindNotice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentBindNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxAgentDesError=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarWxAgentStatus;->wxAgentDesError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

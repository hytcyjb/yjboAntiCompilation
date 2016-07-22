.class public Lcom/didi/im/model/IMSession;
.super Lcom/didi/common/model/BaseObject;
.source "IMSession.java"


# static fields
.field private static final serialVersionUID:J = -0x66f7f5cbdcd737adL


# instance fields
.field private ID:I

.field private MID:I

.field private SID:Ljava/lang/String;

.field private UID:Ljava/lang/String;

.field private createTime:J

.field private draft:Ljava/lang/String;

.field private roomName:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private unreadCnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 25
    iput v0, p0, Lcom/didi/im/model/IMSession;->unreadCnt:I

    .line 29
    iput v0, p0, Lcom/didi/im/model/IMSession;->type:I

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/didi/im/model/IMSession;->createTime:J

    return-wide v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/didi/im/model/IMSession;->draft:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/didi/im/model/IMSession;->ID:I

    return v0
.end method

.method public getMID()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/didi/im/model/IMSession;->MID:I

    return v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/didi/im/model/IMSession;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/im/model/IMSession;->SID:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/im/model/IMSession;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/im/model/IMSession;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/didi/im/model/IMSession;->type:I

    return v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/im/model/IMSession;->UID:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCnt()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/didi/im/model/IMSession;->unreadCnt:I

    return v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 42
    const-string v1, "sessioninfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "sessioninfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    .local v0, jsonObject:Lorg/json/JSONObject;
    const-string v1, "sessionid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/im/model/IMSession;->SID:Ljava/lang/String;

    .line 45
    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/im/model/IMSession;->UID:Ljava/lang/String;

    .line 46
    const-string v1, "unread_cnt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/im/model/IMSession;->unreadCnt:I

    .line 47
    const-string v1, "summary"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/im/model/IMSession;->title:Ljava/lang/String;

    .line 50
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/didi/im/model/IMSession;->createTime:J

    .line 124
    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .parameter "draft"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/didi/im/model/IMSession;->draft:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter "iD"

    .prologue
    .line 57
    iput p1, p0, Lcom/didi/im/model/IMSession;->ID:I

    .line 58
    return-void
.end method

.method public setMID(I)V
    .locals 0
    .parameter "mID"

    .prologue
    .line 83
    iput p1, p0, Lcom/didi/im/model/IMSession;->MID:I

    .line 84
    return-void
.end method

.method public setRoomName(Ljava/lang/String;)V
    .locals 0
    .parameter "roomName"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/im/model/IMSession;->roomName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 0
    .parameter "sID"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/didi/im/model/IMSession;->SID:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/didi/im/model/IMSession;->summary:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/im/model/IMSession;->title:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 107
    iput p1, p0, Lcom/didi/im/model/IMSession;->type:I

    .line 108
    return-void
.end method

.method public setUID(Ljava/lang/String;)V
    .locals 0
    .parameter "uID"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/im/model/IMSession;->UID:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUnreadCnt(I)V
    .locals 0
    .parameter "unreadCnt"

    .prologue
    .line 91
    iput p1, p0, Lcom/didi/im/model/IMSession;->unreadCnt:I

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSession [ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/model/IMSession;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMSession;->SID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMSession;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/model/IMSession;->MID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unreadCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/model/IMSession;->unreadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMSession;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/im/model/IMSession;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMSession;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roomName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMSession;->roomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", draft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/model/IMSession;->draft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/im/model/IMSession;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

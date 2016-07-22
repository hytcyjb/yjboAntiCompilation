.class public Lcom/didi/taxi/model/TaxiServiceMessage;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiServiceMessage.java"


# static fields
.field private static final serialVersionUID:J = -0x49e49a8ea3bfb209L


# instance fields
.field private cancelBtnText:Ljava/lang/String;

.field private confirmBtnText:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private msgId:I

.field private msgType:I

.field private msgValue:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCancelBtnText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->cancelBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmBtnText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->confirmBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgId:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgType:I

    return v0
.end method

.method public getMsgValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgValue:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 36
    const-string v0, "msgId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgId:I

    .line 37
    const-string v0, "msgType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgType:I

    .line 38
    const-string v0, "msgValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgValue:Ljava/lang/String;

    .line 39
    const-string v0, "orderId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->orderId:Ljava/lang/String;

    .line 40
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->title:Ljava/lang/String;

    .line 41
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->content:Ljava/lang/String;

    .line 42
    const-string v0, "cancelBtnText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->cancelBtnText:Ljava/lang/String;

    .line 43
    const-string v0, "confirmBtnText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->confirmBtnText:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCancelBtnText(Ljava/lang/String;)V
    .locals 0
    .parameter "cancelBtnText"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->cancelBtnText:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setConfirmBtnText(Ljava/lang/String;)V
    .locals 0
    .parameter "confirmBtnText"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->confirmBtnText:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->content:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setMsgId(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 51
    iput p1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgId:I

    .line 52
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .parameter "msgType"

    .prologue
    .line 60
    iput p1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgType:I

    .line 61
    return-void
.end method

.method public setMsgValue(Ljava/lang/String;)V
    .locals 0
    .parameter "msgValue"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgValue:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .parameter "orderId"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->orderId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->title:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiServiceMessage [msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->msgValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelBtnText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->cancelBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confirmBtnText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->confirmBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiServiceMessage;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

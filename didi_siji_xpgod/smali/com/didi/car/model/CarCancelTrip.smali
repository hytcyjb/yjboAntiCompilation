.class public Lcom/didi/car/model/CarCancelTrip;
.super Lcom/didi/common/model/BaseObject;
.source "CarCancelTrip.java"


# static fields
.field public static final CAR_DRIVE_STEP_1:I = 0x1

.field public static final CAR_DRIVE_STEP_2:I = 0x2

.field public static final CAR_DRIVE_STEP_3:I = 0x3

.field public static final TAG_CANCEL_CONFIRM:I = 0x1

.field public static final TAG_CANCEL_NORMAL:I = 0x1

.field public static final TAG_CANCEL_UNCONFIRM:I = 0x0

.field public static final serialVersionUID:J = -0x731cecd9b8da77e9L


# instance fields
.field public cancelType:I

.field public canelLabel:Ljava/lang/String;

.field public feedback:I

.field public feedbackTips:Ljava/lang/String;

.field public feedbackTitle:Ljava/lang/String;

.field private imageNumber:I

.field public isCancel:I

.field public payType:I

.field public protectStatus:I

.field public timeout:Z

.field public tips:Ljava/lang/String;

.field public tipsPay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/car/model/CarCancelTrip;->isCancel:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/model/CarCancelTrip;->feedback:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/car/model/CarCancelTrip;->imageNumber:I

    return-void
.end method


# virtual methods
.method public getImageNumber()I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 67
    iget v0, p0, Lcom/didi/car/model/CarCancelTrip;->imageNumber:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/didi/car/model/CarCancelTrip;->imageNumber:I

    if-le v0, v2, :cond_1

    .line 68
    :cond_0
    iput v2, p0, Lcom/didi/car/model/CarCancelTrip;->imageNumber:I

    .line 70
    :cond_1
    iget v0, p0, Lcom/didi/car/model/CarCancelTrip;->imageNumber:I

    return v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 53
    const-string v1, "tipsNew"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarCancelTrip;->tips:Ljava/lang/String;

    .line 54
    const-string v1, "pay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/car/model/CarCancelTrip;->cancelType:I

    .line 55
    const-string v1, "showTxt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/model/CarCancelTrip;->canelLabel:Ljava/lang/String;

    .line 56
    const-string v1, "payType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/car/model/CarCancelTrip;->payType:I

    .line 57
    const-string v1, "is_protect"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/car/model/CarCancelTrip;->protectStatus:I

    .line 58
    const-string v1, "is_timeout"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/didi/car/model/CarCancelTrip;->timeout:Z

    .line 59
    const-string v0, "tipsPay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarCancelTrip;->tipsPay:Ljava/lang/String;

    .line 60
    const-string v0, "imageNumber"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarCancelTrip;->imageNumber:I

    .line 61
    const-string v0, "feedbackTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarCancelTrip;->feedbackTitle:Ljava/lang/String;

    .line 62
    const-string v0, "feedbackTips"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarCancelTrip;->feedbackTips:Ljava/lang/String;

    .line 63
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarCancelTrip [tips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarCancelTrip;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarCancelTrip;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarCancelTrip;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarCancelTrip;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

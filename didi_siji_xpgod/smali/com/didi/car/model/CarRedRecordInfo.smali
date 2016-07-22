.class public Lcom/didi/car/model/CarRedRecordInfo;
.super Lcom/didi/common/model/BaseObject;
.source "CarRedRecordInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public dialogContent:Ljava/lang/String;

.field public dialogTitle:Ljava/lang/String;

.field public mActivityId:I

.field public mDialogBtnTxt:Ljava/lang/String;

.field public mDialogCancleTxt:Ljava/lang/String;

.field public mDialogIconUrl:Ljava/lang/String;

.field public mIsRed:I

.field public mPaidSendTxt:Ljava/lang/String;

.field public mRedContent:Ljava/lang/String;

.field public mRedPicUrl:Ljava/lang/String;

.field public mRedTitle:Ljava/lang/String;

.field public mRedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 44
    const-string v0, "hongbaoenable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mIsRed:I

    .line 45
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mRedUrl:Ljava/lang/String;

    .line 47
    const-string v0, "toasttitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->dialogTitle:Ljava/lang/String;

    .line 48
    const-string v0, "toastcontent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->dialogContent:Ljava/lang/String;

    .line 49
    const-string v0, "toastpic"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mDialogIconUrl:Ljava/lang/String;

    .line 50
    const-string v0, "sharetitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mRedTitle:Ljava/lang/String;

    .line 51
    const-string v0, "sharecontent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mRedContent:Ljava/lang/String;

    .line 52
    const-string v0, "sharepic"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mRedPicUrl:Ljava/lang/String;

    .line 53
    const-string v0, "sendtext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mDialogBtnTxt:Ljava/lang/String;

    .line 54
    const-string v0, "canceltext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mDialogCancleTxt:Ljava/lang/String;

    .line 55
    const-string v0, "buttontitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mPaidSendTxt:Ljava/lang/String;

    .line 56
    const-string v0, "activityid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarRedRecordInfo;->mActivityId:I

    .line 57
    return-void
.end method

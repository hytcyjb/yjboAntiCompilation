.class public Lcom/didi/car/model/CarComment;
.super Lcom/didi/common/model/BaseObject;
.source "CarComment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private commentLevel:I

.field private commentTime:J

.field private commentTxt:Ljava/lang/String;

.field private passengerPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 3
    .parameter "millis"

    .prologue
    .line 98
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 99
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCommentLevel()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/didi/car/model/CarComment;->commentLevel:I

    return v0
.end method

.method public getCommentTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/didi/car/model/CarComment;->commentTime:J

    const-wide/32 v2, 0x77359400

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 83
    iget-wide v0, p0, Lcom/didi/car/model/CarComment;->commentTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/didi/car/model/CarComment;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/didi/car/model/CarComment;->commentTime:J

    invoke-direct {p0, v0, v1}, Lcom/didi/car/model/CarComment;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCommentTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/car/model/CarComment;->commentTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getPassengerPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/model/CarComment;->passengerPhone:Ljava/lang/String;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 90
    const-string v0, "passengerPhone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarComment;->passengerPhone:Ljava/lang/String;

    .line 91
    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/car/model/CarComment;->commentLevel:I

    .line 92
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/car/model/CarComment;->commentTime:J

    .line 93
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarComment;->commentTxt:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setCommentLevel(I)V
    .locals 0
    .parameter "commentLevel"

    .prologue
    .line 57
    iput p1, p0, Lcom/didi/car/model/CarComment;->commentLevel:I

    .line 58
    return-void
.end method

.method public setCommentTime(J)V
    .locals 0
    .parameter "commentTime"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/didi/car/model/CarComment;->commentTime:J

    .line 79
    return-void
.end method

.method public setCommentTxt(Ljava/lang/String;)V
    .locals 0
    .parameter "commentTxt"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/didi/car/model/CarComment;->commentTxt:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPassengerPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "passengerPhone"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/didi/car/model/CarComment;->passengerPhone:Ljava/lang/String;

    .line 44
    return-void
.end method

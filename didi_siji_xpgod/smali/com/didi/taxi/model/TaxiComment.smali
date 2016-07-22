.class public Lcom/didi/taxi/model/TaxiComment;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiComment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public commentLevel:I

.field private commentTime:J

.field public commentTxt:Ljava/lang/String;

.field public passengerPhone:Ljava/lang/String;


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
    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 50
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCommentTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/didi/taxi/model/TaxiComment;->commentTime:J

    const-wide/32 v2, 0x77359400

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/didi/taxi/model/TaxiComment;->commentTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/didi/taxi/model/TaxiComment;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/didi/taxi/model/TaxiComment;->commentTime:J

    invoke-direct {p0, v0, v1}, Lcom/didi/taxi/model/TaxiComment;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 41
    const-string v0, "passenger_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiComment;->passengerPhone:Ljava/lang/String;

    .line 42
    const-string v0, "comment_level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/taxi/model/TaxiComment;->commentLevel:I

    .line 43
    const-string v0, "comment_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/taxi/model/TaxiComment;->commentTime:J

    .line 44
    const-string v0, "comment_txt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiComment;->commentTxt:Ljava/lang/String;

    .line 45
    return-void
.end method

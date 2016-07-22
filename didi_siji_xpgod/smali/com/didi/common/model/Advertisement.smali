.class public Lcom/didi/common/model/Advertisement;
.super Lcom/didi/common/model/BaseObject;
.source "Advertisement.java"


# instance fields
.field public endTime:J

.field private transient image:Landroid/graphics/Bitmap;

.field public md5:Ljava/lang/String;

.field public startTime:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/didi/common/model/Advertisement;->endTime:J

    return-wide v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/model/Advertisement;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/common/model/Advertisement;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/didi/common/model/Advertisement;->startTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/common/model/Advertisement;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable(J)Z
    .locals 2
    .parameter "curTime"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/didi/common/model/Advertisement;->startTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/didi/common/model/Advertisement;->endTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid(J)Z
    .locals 4
    .parameter "curTime"

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/didi/common/model/Advertisement;->md5:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/model/Advertisement;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/didi/common/model/Advertisement;->startTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/didi/common/model/Advertisement;->endTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/didi/common/model/Advertisement;->endTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 55
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Advertisement;->url:Ljava/lang/String;

    .line 56
    const-string v0, "md5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Advertisement;->md5:Ljava/lang/String;

    .line 57
    const-string v0, "start_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/model/Advertisement;->startTime:J

    .line 58
    const-string v0, "end_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/common/model/Advertisement;->endTime:J

    .line 59
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/common/model/Advertisement;->image:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/didi/common/model/Advertisement;->md5:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Advertisement;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/model/Advertisement;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/model/Advertisement;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

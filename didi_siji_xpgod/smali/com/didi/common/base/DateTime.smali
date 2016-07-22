.class public Lcom/didi/common/base/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# instance fields
.field private calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .parameter "calendar"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    .line 20
    return-void
.end method


# virtual methods
.method public addDay(I)V
    .locals 2
    .parameter "addDay"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 24
    return-void
.end method

.method public addHour(I)V
    .locals 2
    .parameter "addHour"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 34
    return-void
.end method

.method public addMinute(I)V
    .locals 2
    .parameter "addMinute"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 44
    return-void
.end method

.method public addSecond(I)V
    .locals 2
    .parameter "addSecond"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 68
    return-void
.end method

.method public getDay()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getTimeInMinllis()J
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 87
    :goto_0
    return-wide v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public isAfter(Lcom/didi/common/base/DateTime;)Z
    .locals 4
    .parameter "dateTime"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/didi/common/base/DateTime;->getTimeInMinllis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lcom/didi/common/base/DateTime;)Z
    .locals 4
    .parameter "dateTime"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/didi/common/base/DateTime;->getTimeInMinllis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHour(I)V
    .locals 2
    .parameter "setHour"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 54
    return-void
.end method

.method public setMinute(I)V
    .locals 2
    .parameter "setMinute"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 64
    return-void
.end method

.method public setSecond(I)V
    .locals 2
    .parameter "setSecond"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 72
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pattern"

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/didi/common/base/DateTime;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const-string v1, ""

    goto :goto_0
.end method

.class Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;
.super Ljava/lang/Object;
.source "RequestStatisticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/RequestStatisticsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestStatistics"
.end annotation


# static fields
.field private static final REQUEST_2xx_NUM:Ljava/lang/String; = "request_2xx_num"

.field private static final REQUEST_2xx_TOTAL_TIME:Ljava/lang/String; = "request_2xx_total_time"

.field private static final REQUEST_4xx_NUM:Ljava/lang/String; = "request_4xx_num"

.field private static final REQUEST_5xx_NUM:Ljava/lang/String; = "request_5xx_num"

.field private static final REQUEST_TIMEOUT_NUM:Ljava/lang/String; = "request_timeout_num"

.field private static final REQUEST_TOTAL_NUM:Ljava/lang/String; = "request_total_num"


# instance fields
.field private request2xxNum:I

.field private request2xxTotalTime:J

.field private request4xxNum:I

.field private request5xxNum:I

.field private timeoutNum:I

.field private totalNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 181
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    .line 186
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    .line 191
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    .line 196
    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    .line 204
    invoke-direct {p0}, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->updateFromPreference()V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)I
    .locals 1
    .parameter

    .prologue
    .line 165
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    return v0
.end method

.method private declared-synchronized updateFromPreference()V
    .locals 4

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "com.avos.avoscloud.RequestStatisticsUtil.data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 265
    const-string v1, "request_timeout_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    .line 266
    const-string v1, "request_total_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 267
    const-string v1, "request_2xx_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    .line 268
    const-string v1, "request_4xx_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    .line 269
    const-string v1, "request_5xx_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    .line 270
    const-string v1, "request_2xx_total_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addRequestData(IZJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 210
    if-eqz p2, :cond_1

    .line 211
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 214
    :try_start_1
    div-int/lit8 v0, p1, 0x64

    .line 215
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 216
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    .line 217
    iget-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 219
    :try_start_2
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    goto :goto_0

    .line 220
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 221
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized minus(Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;)V
    .locals 4
    .parameter

    .prologue
    .line 228
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    .line 230
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    .line 231
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    .line 232
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    .line 233
    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    iget v1, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    .line 234
    iget-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    iget-wide v2, p1, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveToPreference()V
    .locals 4

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v1, "com.avos.avoscloud.RequestStatisticsUtil.data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    const-string v1, "request_timeout_num"

    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v1, "request_total_num"

    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v1, "request_2xx_num"

    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v1, "request_4xx_num"

    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v1, "request_5xx_num"

    iget v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v1, "request_2xx_total_time"

    iget-wide v2, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toPostDataMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 253
    const-string v0, "total"

    iget v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->totalNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "timeout"

    iget v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->timeoutNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "2xx"

    iget v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "4xx"

    iget v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request4xxNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "5xx"

    iget v1, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request5xxNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v3, "avg"

    iget v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-object v2

    .line 258
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxTotalTime:J

    iget v4, p0, Lcom/avos/avoscloud/RequestStatisticsUtil$RequestStatistics;->request2xxNum:I

    int-to-long v4, v4

    div-long/2addr v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

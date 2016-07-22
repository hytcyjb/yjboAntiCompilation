.class public Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lcom/avos/avoscloud/okhttp/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v6, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 124
    iput-wide p1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 125
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    .line 126
    iput-object p4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    .line 128
    if-eqz p4, :cond_7

    .line 129
    invoke-virtual {p4}, Lcom/avos/avoscloud/okhttp/Response;->headers()Lcom/avos/avoscloud/okhttp/Headers;

    move-result-object v1

    .line 130
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 131
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    invoke-static {v4}, Lcom/avos/avoscloud/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 135
    iput-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 130
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    invoke-static {v4}, Lcom/avos/avoscloud/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 138
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    invoke-static {v4}, Lcom/avos/avoscloud/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 140
    iput-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 141
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    iput-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 143
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 144
    invoke-static {v4, v6}, Lcom/avos/avoscloud/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 145
    :cond_5
    sget-object v5, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 146
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_1

    .line 147
    :cond_6
    sget-object v5, Lcom/avos/avoscloud/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .line 152
    :cond_7
    return-void
.end method

.method private cacheResponseAge()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 273
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 276
    :cond_0
    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 279
    :cond_1
    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long/2addr v2, v4

    .line 280
    iget-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    iget-wide v6, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long/2addr v4, v6

    .line 281
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private computeFreshnessLifetime()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 246
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 265
    :cond_0
    :goto_0
    return-wide v2

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 251
    :goto_1
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 252
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :goto_2
    move-wide v2, v0

    goto :goto_0

    .line 248
    :cond_2
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 252
    goto :goto_2

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->request()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->httpUrl()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 262
    :goto_3
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 263
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_0

    .line 259
    :cond_5
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3
.end method

.method private getCandidate()Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;
    .locals 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 172
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-direct {v0, v1, v12, v12}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V

    .line 234
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->handshake()Lcom/avos/avoscloud/okhttp/Handshake;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-direct {v0, v1, v12, v12}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/Request;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-direct {v0, v1, v12, v12}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v6

    .line 189
    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/avos/avoscloud/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    :cond_3
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-direct {v0, v1, v12, v12}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v8

    .line 194
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v0

    .line 196
    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v2

    if-eq v2, v13, :cond_5

    .line 197
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 201
    :cond_5
    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/CacheControl;->minFreshSeconds()I

    move-result v2

    if-eq v2, v13, :cond_e

    .line 202
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/CacheControl;->minFreshSeconds()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 206
    :goto_1
    iget-object v7, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v7}, Lcom/avos/avoscloud/okhttp/Response;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v7

    .line 207
    invoke-virtual {v7}, Lcom/avos/avoscloud/okhttp/CacheControl;->mustRevalidate()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v10

    if-eq v10, v13, :cond_6

    .line 208
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/avos/avoscloud/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 211
    :cond_6
    invoke-virtual {v7}, Lcom/avos/avoscloud/okhttp/CacheControl;->noCache()Z

    move-result v6

    if-nez v6, :cond_9

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_9

    .line 212
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Response;->newBuilder()Lcom/avos/avoscloud/okhttp/Response$Builder;

    move-result-object v4

    .line 213
    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    .line 214
    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    .line 216
    :cond_7
    const-wide/32 v0, 0x5265c00

    .line 217
    cmp-long v0, v8, v0

    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lcom/avos/avoscloud/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Response$Builder;

    .line 220
    :cond_8
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    invoke-virtual {v4}, Lcom/avos/avoscloud/okhttp/Response$Builder;->build()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v1

    invoke-direct {v0, v12, v1, v12}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request;->newBuilder()Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 226
    const-string v1, "If-None-Match"

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 233
    :cond_a
    :goto_2
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v1

    .line 234
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/avos/avoscloud/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-direct {v0, v1, v2, v12}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 227
    :cond_b
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_c

    .line 228
    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    goto :goto_2

    .line 229
    :cond_c
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v1, :cond_a

    .line 230
    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    goto :goto_2

    .line 234
    :cond_d
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    invoke-direct {v0, v1, v12, v12}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    :cond_e
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method private static hasConditions(Lcom/avos/avoscloud/okhttp/Request;)Z
    .locals 1
    .parameter

    .prologue
    .line 299
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/avos/avoscloud/okhttp/Response;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Response;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    move-result-object v0

    .line 161
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/avos/avoscloud/okhttp/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/avos/avoscloud/okhttp/Request;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Request;->cacheControl()Lcom/avos/avoscloud/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;

    invoke-direct {v0, v2, v2, v2}, Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy;-><init>(Lcom/avos/avoscloud/okhttp/Request;Lcom/avos/avoscloud/okhttp/Response;Lcom/avos/avoscloud/okhttp/internal/http/CacheStrategy$1;)V

    .line 166
    :cond_0
    return-object v0
.end method

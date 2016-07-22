.class public final Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 277
    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 278
    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lcom/avos/avoscloud/okhttp/CacheControl;
    .locals 2

    .prologue
    .line 364
    new-instance v0, Lcom/avos/avoscloud/okhttp/CacheControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/okhttp/CacheControl;-><init>(Lcom/avos/avoscloud/okhttp/CacheControl$Builder;Lcom/avos/avoscloud/okhttp/CacheControl$1;)V

    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 303
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxAge < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 305
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 308
    return-object p0

    .line 305
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 321
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 323
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 326
    return-object p0

    .line 323
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 340
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minFresh < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 342
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->minFreshSeconds:I

    .line 345
    return-object p0

    .line 342
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public noCache()Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->noCache:Z

    .line 285
    return-object p0
.end method

.method public noStore()Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->noStore:Z

    .line 291
    return-object p0
.end method

.method public noTransform()Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->noTransform:Z

    .line 360
    return-object p0
.end method

.method public onlyIfCached()Lcom/avos/avoscloud/okhttp/CacheControl$Builder;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/CacheControl$Builder;->onlyIfCached:Z

    .line 354
    return-object p0
.end method

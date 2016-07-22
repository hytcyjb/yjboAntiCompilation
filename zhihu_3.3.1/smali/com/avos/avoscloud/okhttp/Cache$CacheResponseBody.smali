.class Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;
.super Lcom/avos/avoscloud/okhttp/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lcom/avos/avoscloud/okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final snapshot:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/ResponseBody;-><init>()V

    .line 701
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;

    .line 702
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 703
    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 705
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    .line 706
    new-instance v1, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody$1;-><init>(Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;Lcom/avos/avoscloud/okio/Source;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/avos/avoscloud/okio/BufferedSource;

    .line 712
    return-void
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;
    .locals 1
    .parameter

    .prologue
    .line 693
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 720
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 722
    :cond_0
    :goto_0
    return-wide v0

    .line 721
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public contentType()Lcom/avos/avoscloud/okhttp/MediaType;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public source()Lcom/avos/avoscloud/okio/BufferedSource;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/avos/avoscloud/okio/BufferedSource;

    return-object v0
.end method

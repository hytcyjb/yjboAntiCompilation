.class Lcom/avos/avoscloud/okhttp/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/Cache;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    #getter for: Lcom/avos/avoscloud/okhttp/Cache;->cache:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Cache;->access$600(Lcom/avos/avoscloud/okhttp/Cache;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 345
    :goto_0
    return v0

    .line 330
    :cond_0
    iput-boolean v2, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->canRemove:Z

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;

    .line 334
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/avos/avoscloud/okio/Source;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v3

    .line 335
    invoke-interface {v3}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;->close()V

    move v0, v1

    goto :goto_0

    .line 337
    :catch_0
    move-exception v3

    .line 341
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;->close()V

    throw v1

    :cond_1
    move v0, v2

    .line 345
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/Cache$2;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    .line 351
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->canRemove:Z

    .line 353
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->canRemove:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 359
    return-void
.end method

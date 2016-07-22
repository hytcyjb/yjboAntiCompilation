.class Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;
.super Lcom/avos/avoscloud/okio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

.field final synthetic val$this$0:Lcom/avos/avoscloud/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;Lcom/avos/avoscloud/okio/Sink;Lcom/avos/avoscloud/okhttp/Cache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;

    iput-object p3, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;->val$this$0:Lcom/avos/avoscloud/okhttp/Cache;

    iput-object p4, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/okio/ForwardingSink;-><init>(Lcom/avos/avoscloud/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;

    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;

    #getter for: Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->done:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->access$700(Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    monitor-exit v1

    .line 444
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    #setter for: Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->done:Z
    invoke-static {v0, v2}, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->access$702(Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;Z)Z

    .line 440
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;

    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/avos/avoscloud/okhttp/Cache;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/Cache;->access$808(Lcom/avos/avoscloud/okhttp/Cache;)I

    .line 441
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-super {p0}, Lcom/avos/avoscloud/okio/ForwardingSink;->close()V

    .line 443
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

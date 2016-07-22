.class Lcom/didi/common/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/didi/common/cache/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/didi/common/cache/DiskLruCache$1;->this$0:Lcom/didi/common/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/didi/common/cache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v1, p0, Lcom/didi/common/cache/DiskLruCache$1;->this$0:Lcom/didi/common/cache/DiskLruCache;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$1;->this$0:Lcom/didi/common/cache/DiskLruCache;

    #getter for: Lcom/didi/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/didi/common/cache/DiskLruCache;->access$000(Lcom/didi/common/cache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    monitor-exit v1

    .line 284
    :goto_0
    return-object v3

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$1;->this$0:Lcom/didi/common/cache/DiskLruCache;

    #calls: Lcom/didi/common/cache/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/didi/common/cache/DiskLruCache;->access$100(Lcom/didi/common/cache/DiskLruCache;)V

    .line 279
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$1;->this$0:Lcom/didi/common/cache/DiskLruCache;

    #calls: Lcom/didi/common/cache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/didi/common/cache/DiskLruCache;->access$200(Lcom/didi/common/cache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$1;->this$0:Lcom/didi/common/cache/DiskLruCache;

    #calls: Lcom/didi/common/cache/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/didi/common/cache/DiskLruCache;->access$300(Lcom/didi/common/cache/DiskLruCache;)V

    .line 281
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$1;->this$0:Lcom/didi/common/cache/DiskLruCache;

    const/4 v2, 0x0

    #setter for: Lcom/didi/common/cache/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/didi/common/cache/DiskLruCache;->access$402(Lcom/didi/common/cache/DiskLruCache;I)I

    .line 283
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

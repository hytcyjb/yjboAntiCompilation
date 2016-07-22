.class Lcom/didi/im/cache/disk/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/cache/disk/DiskLruCache;
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
.field final synthetic this$0:Lcom/didi/im/cache/disk/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/didi/im/cache/disk/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/didi/im/cache/disk/DiskLruCache$1;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

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
    .line 148
    invoke-virtual {p0}, Lcom/didi/im/cache/disk/DiskLruCache$1;->call()Ljava/lang/Void;

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

    .line 150
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$1;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$1;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->access$000(Lcom/didi/im/cache/disk/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    monitor-exit v1

    .line 160
    :goto_0
    return-object v3

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$1;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    #calls: Lcom/didi/im/cache/disk/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->access$100(Lcom/didi/im/cache/disk/DiskLruCache;)V

    .line 155
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$1;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    #calls: Lcom/didi/im/cache/disk/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->access$200(Lcom/didi/im/cache/disk/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$1;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    #calls: Lcom/didi/im/cache/disk/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->access$300(Lcom/didi/im/cache/disk/DiskLruCache;)V

    .line 157
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$1;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    const/4 v2, 0x0

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/didi/im/cache/disk/DiskLruCache;->access$402(Lcom/didi/im/cache/disk/DiskLruCache;I)I

    .line 159
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

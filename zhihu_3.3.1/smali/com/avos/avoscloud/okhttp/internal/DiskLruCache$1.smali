.class Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialized:Z
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$000(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->closed:Z
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$100(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    return-void

    .line 176
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)V

    .line 177
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)V

    .line 179
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$502(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :cond_2
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

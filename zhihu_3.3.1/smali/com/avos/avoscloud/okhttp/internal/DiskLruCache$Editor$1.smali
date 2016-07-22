.class Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor$1;
.super Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/avos/avoscloud/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Lcom/avos/avoscloud/okio/Sink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/okhttp/internal/FaultHidingSink;-><init>(Lcom/avos/avoscloud/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 3
    .parameter

    .prologue
    .line 882
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->access$1902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)Z

    .line 884
    monitor-exit v1

    .line 885
    return-void

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

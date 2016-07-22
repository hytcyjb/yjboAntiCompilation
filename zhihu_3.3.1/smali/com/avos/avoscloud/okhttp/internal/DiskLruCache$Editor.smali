.class public final Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    .line 835
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->written:[Z

    .line 836
    return-void

    .line 835
    :cond_0
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;
    .locals 1
    .parameter

    .prologue
    .line 827
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)[Z
    .locals 1
    .parameter

    .prologue
    .line 827
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$1902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 911
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->completeEdit(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2600(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 913
    monitor-exit v1

    .line 914
    return-void

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abortUnlessCommitted()V
    .locals 3

    .prologue
    .line 917
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 918
    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->committed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 920
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->completeEdit(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2600(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 924
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 921
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3

    .prologue
    .line 895
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 896
    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->completeEdit(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2600(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 898
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->removeEntry(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z
    invoke-static {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2700(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z

    .line 902
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->committed:Z

    .line 903
    monitor-exit v1

    .line 904
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    const/4 v2, 0x1

    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->completeEdit(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2600(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V

    goto :goto_0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newSink(I)Lcom/avos/avoscloud/okio/Sink;
    .locals 3
    .parameter

    .prologue
    .line 866
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 870
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    :try_start_2
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/avos/avoscloud/okio/Sink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 880
    :try_start_3
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor$1;

    invoke-direct {v0, p0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor$1;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Lcom/avos/avoscloud/okio/Sink;)V

    monitor-exit v1

    :goto_0
    return-object v0

    .line 877
    :catch_0
    move-exception v0

    .line 878
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2500()Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newSource(I)Lcom/avos/avoscloud/okio/Source;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 843
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 844
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 845
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 847
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 848
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :goto_0
    return-object v0

    .line 851
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/avos/avoscloud/okio/Source;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 852
    :catch_0
    move-exception v2

    .line 853
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

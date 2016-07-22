.class public final Lcom/didi/im/cache/disk/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/cache/disk/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/didi/im/cache/disk/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Entry;)V
    .locals 1
    .parameter
    .parameter "entry"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-object p2, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .line 700
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$600(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->written:[Z

    .line 701
    return-void

    .line 700
    :cond_0
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/didi/im/cache/disk/DiskLruCache;->access$1800(Lcom/didi/im/cache/disk/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Entry;Lcom/didi/im/cache/disk/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 692
    invoke-direct {p0, p1, p2}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;-><init>(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/im/cache/disk/DiskLruCache$Editor;)Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/didi/im/cache/disk/DiskLruCache$Editor;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2302(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/didi/im/cache/disk/DiskLruCache;->completeEdit(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/didi/im/cache/disk/DiskLruCache;->access$2200(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V

    .line 798
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 803
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 783
    iget-boolean v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/didi/im/cache/disk/DiskLruCache;->completeEdit(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/didi/im/cache/disk/DiskLruCache;->access$2200(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V

    .line 785
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1100(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/im/cache/disk/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 789
    :goto_0
    iput-boolean v2, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->committed:Z

    .line 790
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    #calls: Lcom/didi/im/cache/disk/DiskLruCache;->completeEdit(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/didi/im/cache/disk/DiskLruCache;->access$2200(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 728
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    #calls: Lcom/didi/im/cache/disk/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 708
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    monitor-enter v3

    .line 709
    :try_start_0
    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 710
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 720
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 712
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$600(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 713
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :goto_0
    return-object v1

    .line 716
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, e:Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I
    invoke-static {v4}, Lcom/didi/im/cache/disk/DiskLruCache;->access$1800(Lcom/didi/im/cache/disk/DiskLruCache;)I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 739
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "be greater than 0 and less than the maximum value count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I
    invoke-static {v6}, Lcom/didi/im/cache/disk/DiskLruCache;->access$1800(Lcom/didi/im/cache/disk/DiskLruCache;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 742
    :cond_1
    iget-object v5, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    monitor-enter v5

    .line 743
    :try_start_0
    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_2

    .line 744
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 764
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 746
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$600(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 747
    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 749
    :cond_3
    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 752
    .local v0, dirtyFile:Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 763
    .local v3, outputStream:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/didi/im/cache/disk/DiskLruCache$1;)V

    monitor-exit v5

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 753
    :catch_0
    move-exception v1

    .line 755
    .local v1, e:Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->this$0:Lcom/didi/im/cache/disk/DiskLruCache;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/didi/im/cache/disk/DiskLruCache;->access$1900(Lcom/didi/im/cache/disk/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 757
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 758
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 760
    .local v2, e2:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {}, Lcom/didi/im/cache/disk/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 771
    .local v0, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/didi/im/cache/disk/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    .end local v0           #writer:Ljava/io/Writer;
    .local v1, writer:Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 774
    invoke-static {v1}, Lcom/didi/im/cache/disk/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 776
    return-void

    .line 774
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/didi/im/cache/disk/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    goto :goto_0
.end method

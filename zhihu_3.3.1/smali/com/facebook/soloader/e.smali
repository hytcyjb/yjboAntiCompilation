.class public final Lcom/facebook/soloader/e;
.super Ljava/lang/Object;
.source "FileLocker.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/FileOutputStream;

.field private final b:Ljava/nio/channels/FileLock;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/soloader/e;->a:Ljava/io/FileOutputStream;

    .line 28
    const/4 v1, 0x0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/facebook/soloader/e;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/facebook/soloader/e;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 37
    :cond_0
    iput-object v0, p0, Lcom/facebook/soloader/e;->b:Ljava/nio/channels/FileLock;

    .line 38
    return-void

    .line 32
    :catchall_0
    move-exception v0

    if-nez v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/facebook/soloader/e;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v0
.end method

.method public static a(Ljava/io/File;)Lcom/facebook/soloader/e;
    .locals 1
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/soloader/e;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/e;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/facebook/soloader/e;->b:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lcom/facebook/soloader/e;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/soloader/e;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

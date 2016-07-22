.class public Lcom/facebook/imagepipeline/memory/n;
.super Ljava/lang/Object;
.source "NativePooledByteBufferFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/w;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/z;

.field private final b:Lcom/facebook/imagepipeline/memory/l;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/l;Lcom/facebook/imagepipeline/memory/z;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/n;->b:Lcom/facebook/imagepipeline/memory/l;

    .line 36
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/n;->a:Lcom/facebook/imagepipeline/memory/z;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/n;->b:Lcom/facebook/imagepipeline/memory/l;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/l;)V

    return-object v0
.end method

.method public a(I)Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;
    .locals 2
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/n;->b:Lcom/facebook/imagepipeline/memory/l;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/l;I)V

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/m;
    .locals 2
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/n;->b:Lcom/facebook/imagepipeline/memory/l;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/l;)V

    .line 61
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/n;->a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->close()V

    throw v1
.end method

.method public a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/n;->b:Lcom/facebook/imagepipeline/memory/l;

    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/l;I)V

    .line 101
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/n;->a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->close()V

    throw v1
.end method

.method a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/m;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/n;->a:Lcom/facebook/imagepipeline/memory/z;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/memory/z;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 122
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a()Lcom/facebook/imagepipeline/memory/m;

    move-result-object v0

    return-object v0
.end method

.method public a([B)Lcom/facebook/imagepipeline/memory/m;
    .locals 3
    .parameter

    .prologue
    .line 75
    new-instance v1, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/n;->b:Lcom/facebook/imagepipeline/memory/l;

    array-length v2, p1

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/l;I)V

    .line 78
    const/4 v0, 0x0

    :try_start_0
    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->write([BII)V

    .line 79
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a()Lcom/facebook/imagepipeline/memory/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->close()V

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    invoke-static {v0}, Lcom/facebook/common/internal/j;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->close()V

    throw v0
.end method

.method public synthetic b(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/n;->a(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/memory/n;->a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/n;->a([B)Lcom/facebook/imagepipeline/memory/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/facebook/imagepipeline/memory/y;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/n;->a()Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lcom/facebook/imagepipeline/memory/y;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/n;->a(I)Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;

    move-result-object v0

    return-object v0
.end method

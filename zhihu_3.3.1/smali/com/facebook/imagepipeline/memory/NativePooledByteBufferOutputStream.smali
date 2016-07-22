.class public Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;
.super Lcom/facebook/imagepipeline/memory/y;
.source "NativePooledByteBufferOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream$InvalidStreamException;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/l;

.field private b:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/l;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/l;->d()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/l;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/l;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/y;-><init>()V

    .line 50
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 51
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/l;

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Lcom/facebook/imagepipeline/memory/l;

    .line 52
    iput v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Lcom/facebook/imagepipeline/memory/l;

    invoke-virtual {v0, p2}, Lcom/facebook/imagepipeline/memory/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Lcom/facebook/imagepipeline/memory/l;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    .line 54
    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw v0

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/m;
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->d()V

    .line 65
    new-instance v0, Lcom/facebook/imagepipeline/memory/m;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/m;-><init>(Lcom/facebook/common/references/a;I)V

    return-object v0
.end method

.method a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->d()V

    .line 140
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->b()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Lcom/facebook/imagepipeline/memory/l;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    .line 144
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    invoke-virtual {v1, v3, v0, v3, v2}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(ILcom/facebook/imagepipeline/memory/NativeMemoryChunk;II)V

    .line 145
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    .line 146
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a:Lcom/facebook/imagepipeline/memory/l;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    return v0
.end method

.method public synthetic c()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a()Lcom/facebook/imagepipeline/memory/m;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    .line 126
    invoke-super {p0}, Lcom/facebook/imagepipeline/memory/y;->close()V

    .line 127
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 86
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 87
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->write([B)V

    .line 88
    return-void
.end method

.method public write([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->d()V

    .line 111
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->a(I)V

    .line 112
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->a(I[BII)I

    .line 113
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/imagepipeline/memory/NativePooledByteBufferOutputStream;->c:I

    .line 114
    return-void
.end method

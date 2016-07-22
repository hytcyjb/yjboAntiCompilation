.class public final Lcom/google/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 520
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 523
    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 538
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 539
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 540
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 541
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 542
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 543
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 520
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 523
    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 530
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 531
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 532
    iput p2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 533
    neg-int v0, p2

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 535
    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2
    .parameter

    .prologue
    .line 480
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4
    .parameter

    .prologue
    .line 494
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;
    .locals 1
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/google/protobuf/CodedInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/google/protobuf/CodedInputStream;
    .locals 2
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/CodedInputStream;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/protobuf/CodedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/CodedInputStream;-><init>([BII)V

    .line 77
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readRawVarint32(ILjava/io/InputStream;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 393
    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return p0

    .line 397
    :cond_1
    and-int/lit8 p0, p0, 0x7f

    .line 398
    const/4 v0, 0x7

    .line 399
    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    .line 400
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 401
    if-ne v1, v3, :cond_2

    .line 402
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 404
    :cond_2
    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    .line 405
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 399
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 410
    :cond_3
    add-int/lit8 v0, v0, 0x7

    :cond_4
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    .line 411
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 412
    if-ne v1, v3, :cond_5

    .line 413
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 415
    :cond_5
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    goto :goto_0

    .line 419
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .locals 2
    .parameter

    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 380
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 381
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 383
    :cond_0
    invoke-static {v0, p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 2

    .prologue
    .line 626
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 627
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    .line 628
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 630
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    .line 631
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private refillBuffer(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 685
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ge v0, v3, :cond_0

    .line 686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-ne v0, v3, :cond_2

    .line 692
    if-eqz p1, :cond_1

    .line 693
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    .line 722
    :goto_0
    return v0

    .line 699
    :cond_2
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 701
    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 702
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 703
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ge v0, v1, :cond_5

    .line 704
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 708
    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_7

    .line 709
    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 710
    if-eqz p1, :cond_6

    .line 711
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    .line 713
    goto :goto_0

    .line 716
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 717
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    .line 719
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    .line 720
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 722
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 124
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 653
    const/4 v0, -0x1

    .line 657
    :goto_0
    return v0

    .line 656
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    .line 657
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .prologue
    .line 674
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 666
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public popLimit(I)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 644
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 645
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .parameter

    .prologue
    .line 610
    if-gez p1, :cond_0

    .line 611
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 613
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 614
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 615
    if-le v0, v1, :cond_1

    .line 616
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 618
    :cond_1
    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 620
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 622
    return v1
.end method

.method public readBool()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 284
    if-nez v1, :cond_0

    .line 285
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 294
    :goto_0
    return-object v0

    .line 286
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1

    if-lez v1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 290
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 237
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 239
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 240
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 241
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 243
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 244
    return-void
.end method

.method public readInt32()I
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 270
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 271
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 273
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 274
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 275
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 277
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 278
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 279
    return-void
.end method

.method public readRawByte()B
    .locals 3

    .prologue
    .line 733
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 734
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 746
    if-gez p1, :cond_0

    .line 747
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 750
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v2, :cond_1

    .line 752
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 754
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 757
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_2

    .line 759
    new-array v0, p1, [B

    .line 760
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 842
    :goto_0
    return-object v0

    .line 763
    :cond_2
    if-ge p1, v10, :cond_4

    .line 768
    new-array v2, p1, [B

    .line 769
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v3

    .line 770
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 776
    invoke-direct {p0, v5}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 778
    :goto_1
    sub-int v3, p1, v0

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v3, v4, :cond_3

    .line 779
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v3

    .line 781
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 782
    invoke-direct {p0, v5}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_1

    .line 785
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    move-object v0, v2

    .line 788
    goto :goto_0

    .line 800
    :cond_4
    iget v5, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 801
    iget v6, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 804
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 805
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 806
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 809
    sub-int v0, v6, v5

    sub-int v0, p1, v0

    .line 810
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 812
    :goto_2
    if-lez v4, :cond_8

    .line 813
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    .line 815
    :goto_3
    array-length v2, v8

    if-ge v0, v2, :cond_7

    .line 816
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v2, :cond_5

    move v2, v3

    .line 818
    :goto_4
    if-ne v2, v3, :cond_6

    .line 819
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 816
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_4

    .line 821
    :cond_6
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 822
    add-int/2addr v0, v2

    .line 823
    goto :goto_3

    .line 824
    :cond_7
    array-length v0, v8

    sub-int v0, v4, v0

    .line 825
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    .line 826
    goto :goto_2

    .line 829
    :cond_8
    new-array v3, p1, [B

    .line 832
    sub-int v0, v6, v5

    .line 833
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 837
    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_5

    :cond_9
    move-object v0, v3

    .line 842
    goto/16 :goto_0
.end method

.method public readRawLittleEndian32()I
    .locals 4

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 440
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    .line 441
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 442
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    .line 443
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readRawLittleEndian64()J
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    .line 451
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 452
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    .line 453
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 454
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    .line 455
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v4

    .line 456
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v5

    .line 457
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v6

    .line 458
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v7

    .line 459
    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readRawVarint32()I
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 339
    if-ltz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 343
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    .line 344
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 346
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 347
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    .line 348
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 350
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 351
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_4

    .line 352
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 354
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 355
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 356
    if-gez v1, :cond_0

    .line 358
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 359
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-gez v2, :cond_0

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 363
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawVarint64()J
    .locals 6

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 425
    const-wide/16 v0, 0x0

    .line 426
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    .line 428
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 429
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 430
    return-wide v0

    .line 432
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 433
    goto :goto_0

    .line 434
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 219
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 223
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 227
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public readTag()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    .line 110
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    .line 105
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 110
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    goto :goto_0
.end method

.method public readUInt32()I
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/MessageLite$Builder;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 263
    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 593
    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 3
    .parameter

    .prologue
    .line 553
    if-gez p1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 558
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 559
    return v0
.end method

.method public setSizeLimit(I)I
    .locals 3
    .parameter

    .prologue
    .line 579
    if-gez p1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 584
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 585
    return v0
.end method

.method public skipField(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 137
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    .line 155
    :goto_0
    return v0

    .line 140
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    goto :goto_0

    .line 146
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->skipMessage()V

    .line 147
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    goto :goto_0

    .line 152
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 1

    .prologue
    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 168
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 853
    if-gez p1, :cond_0

    .line 854
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 857
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 859
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 861
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 864
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 866
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 884
    :goto_0
    return-void

    .line 869
    :cond_2
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    .line 870
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 875
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 876
    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v1, v2, :cond_3

    .line 877
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    .line 878
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 879
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_1

    .line 882
    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0
.end method

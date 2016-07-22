.class public final Lcom/avos/avoscloud/okio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/BufferedSink;
.implements Lcom/avos/avoscloud/okio/BufferedSource;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DIGITS:[B = null

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lcom/avos/avoscloud/okio/Segment;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avos/avoscloud/okio/Buffer;->DIGITS:[B

    return-void

    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 249
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 250
    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 240
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    if-eqz p4, :cond_3

    .line 241
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    .line 242
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    rsub-int v1, v1, 0x800

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 243
    iget-object v2, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v3, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 244
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 245
    if-eqz p4, :cond_4

    .line 252
    :cond_3
    return-void

    .line 246
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public buffer()Lcom/avos/avoscloud/okio/Buffer;
    .locals 0

    .prologue
    .line 64
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 762
    :try_start_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public clone()Lcom/avos/avoscloud/okio/Buffer;
    .locals 6

    .prologue
    .line 1410
    new-instance v1, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v1}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 1411
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1419
    :goto_0
    return-object v0

    .line 1413
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/okio/Segment;

    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/okio/Segment;-><init>(Lcom/avos/avoscloud/okio/Segment;)V

    iput-object v0, v1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1414
    iget-object v0, v1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v2, v1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v3, v1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iput-object v3, v2, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    iput-object v3, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    .line 1415
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-eq v0, v2, :cond_1

    .line 1416
    iget-object v2, v1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v2, v2, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    new-instance v3, Lcom/avos/avoscloud/okio/Segment;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/okio/Segment;-><init>(Lcom/avos/avoscloud/okio/Segment;)V

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okio/Segment;->push(Lcom/avos/avoscloud/okio/Segment;)Lcom/avos/avoscloud/okio/Segment;

    .line 1415
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    goto :goto_1

    .line 1418
    :cond_1
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    iput-wide v2, v1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    move-object v0, v1

    .line 1419
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->clone()Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method

.method public completeSegmentByteCount()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 260
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 261
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 269
    :cond_0
    :goto_0
    return-wide v0

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v2, v2, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    .line 265
    iget v3, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    const/16 v4, 0x800

    if-ge v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/avos/avoscloud/okio/Segment;->owner:Z

    if-eqz v3, :cond_0

    .line 266
    iget v3, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v2, v2, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public copyTo(Lcom/avos/avoscloud/okio/Buffer;JJ)Lcom/avos/avoscloud/okio/Buffer;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 167
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 169
    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    .line 193
    :cond_1
    return-object p0

    .line 171
    :cond_2
    iget-wide v0, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 174
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 175
    :goto_0
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    .line 176
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 175
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    goto :goto_0

    .line 180
    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    .line 181
    new-instance v1, Lcom/avos/avoscloud/okio/Segment;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/okio/Segment;-><init>(Lcom/avos/avoscloud/okio/Segment;)V

    .line 182
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 183
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 184
    iget-object v2, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-nez v2, :cond_4

    .line 185
    iput-object v1, v1, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    iput-object v1, v1, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    iput-object v1, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 189
    :goto_2
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v1, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    .line 180
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    move-wide p2, v6

    goto :goto_1

    .line 187
    :cond_4
    iget-object v2, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v2, v2, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okio/Segment;->push(Lcom/avos/avoscloud/okio/Segment;)Lcom/avos/avoscloud/okio/Segment;

    goto :goto_2
.end method

.method public copyTo(Ljava/io/OutputStream;)Lcom/avos/avoscloud/okio/Buffer;
    .locals 6
    .parameter

    .prologue
    .line 135
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public copyTo(Ljava/io/OutputStream;JJ)Lcom/avos/avoscloud/okio/Buffer;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 143
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 145
    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    .line 162
    :cond_1
    return-object p0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 149
    :goto_0
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    .line 150
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 149
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    goto :goto_0

    .line 154
    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    .line 155
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p2

    long-to-int v1, v2

    .line 156
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 157
    iget-object v3, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 158
    int-to-long v2, v2

    sub-long/2addr p4, v2

    .line 154
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    move-wide p2, v6

    goto :goto_1
.end method

.method public emit()Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 0

    .prologue
    .line 94
    return-object p0
.end method

.method public emitCompleteSegments()Lcom/avos/avoscloud/okio/Buffer;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->emitCompleteSegments()Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1340
    if-ne p0, p1, :cond_0

    move v0, v6

    .line 1369
    :goto_0
    return v0

    .line 1341
    :cond_0
    instance-of v2, p1, Lcom/avos/avoscloud/okio/Buffer;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    .line 1342
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/okio/Buffer;

    .line 1343
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    iget-wide v4, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    .line 1344
    :cond_2
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    .line 1346
    :cond_3
    iget-object v5, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1347
    iget-object v4, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1348
    iget v3, v5, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 1349
    iget v2, v4, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 1351
    :goto_1
    iget-wide v8, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    .line 1352
    iget v8, v5, Lcom/avos/avoscloud/okio/Segment;->limit:I

    sub-int/2addr v8, v3

    iget v9, v4, Lcom/avos/avoscloud/okio/Segment;->limit:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    .line 1354
    :goto_2
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_5

    .line 1355
    iget-object v12, v5, Lcom/avos/avoscloud/okio/Segment;->data:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lcom/avos/avoscloud/okio/Segment;->data:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_4

    move v0, v7

    goto :goto_0

    .line 1354
    :cond_4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_2

    .line 1358
    :cond_5
    iget v8, v5, Lcom/avos/avoscloud/okio/Segment;->limit:I

    if-ne v3, v8, :cond_6

    .line 1359
    iget-object v5, v5, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    .line 1360
    iget v3, v5, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 1363
    :cond_6
    iget v8, v4, Lcom/avos/avoscloud/okio/Segment;->limit:I

    if-ne v2, v8, :cond_7

    .line 1364
    iget-object v4, v4, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    .line 1365
    iget v2, v4, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 1351
    :cond_7
    add-long/2addr v0, v10

    goto :goto_1

    :cond_8
    move v0, v6

    .line 1369
    goto :goto_0
.end method

.method public exhausted()Z
    .locals 4

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1319
    return-void
.end method

.method public getByte(J)B
    .locals 7
    .parameter

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 296
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 297
    :goto_0
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 298
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v0, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 299
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 296
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1373
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1374
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1382
    :goto_0
    return v0

    .line 1375
    :cond_0
    const/4 v0, 0x1

    .line 1377
    :cond_1
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    iget v4, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    :goto_1
    if-ge v2, v4, :cond_2

    .line 1378
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lcom/avos/avoscloud/okio/Segment;->data:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    .line 1377
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 1380
    :cond_2
    iget-object v1, v1, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    .line 1381
    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public indexOf(B)J
    .locals 2
    .parameter

    .prologue
    .line 1226
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v2, 0x0

    .line 1234
    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1237
    if-nez v0, :cond_1

    move-wide v0, v6

    .line 1253
    :goto_0
    return-wide v0

    :cond_1
    move-object v4, v0

    move-wide v0, v2

    .line 1240
    :cond_2
    iget v5, v4, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v8, v4, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int v8, v5, v8

    .line 1241
    int-to-long v10, v8

    cmp-long v5, p2, v10

    if-ltz v5, :cond_3

    .line 1242
    int-to-long v10, v8

    sub-long/2addr p2, v10

    .line 1250
    :goto_1
    int-to-long v8, v8

    add-long/2addr v0, v8

    .line 1251
    iget-object v4, v4, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    .line 1252
    iget-object v5, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-ne v4, v5, :cond_2

    move-wide v0, v6

    .line 1253
    goto :goto_0

    .line 1244
    :cond_3
    iget-object v9, v4, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 1245
    iget v5, v4, Lcom/avos/avoscloud/okio/Segment;->pos:I

    int-to-long v10, v5

    add-long/2addr v10, p2

    long-to-int v5, v10

    iget v10, v4, Lcom/avos/avoscloud/okio/Segment;->limit:I

    :goto_2
    if-ge v5, v10, :cond_5

    .line 1246
    aget-byte v11, v9, v5

    if-ne v11, p1, :cond_4

    int-to-long v2, v5

    add-long/2addr v0, v2

    iget v2, v4, Lcom/avos/avoscloud/okio/Segment;->pos:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1245
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-wide p2, v2

    .line 1248
    goto :goto_1
.end method

.method public indexOf(Lcom/avos/avoscloud/okio/ByteString;)J
    .locals 2
    .parameter

    .prologue
    .line 1257
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->indexOf(Lcom/avos/avoscloud/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lcom/avos/avoscloud/okio/ByteString;J)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 1261
    invoke-virtual {p1}, Lcom/avos/avoscloud/okio/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :cond_0
    const-wide/16 v4, 0x1

    add-long p2, v2, v4

    .line 1263
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/okio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->indexOf(BJ)J

    move-result-wide v2

    .line 1264
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 1268
    :goto_0
    return-wide v0

    .line 1267
    :cond_2
    invoke-virtual {p0, v2, v3, p1}, Lcom/avos/avoscloud/okio/Buffer;->rangeEquals(JLcom/avos/avoscloud/okio/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 1268
    goto :goto_0
.end method

.method public indexOfElement(Lcom/avos/avoscloud/okio/ByteString;)J
    .locals 2
    .parameter

    .prologue
    .line 1275
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->indexOfElement(Lcom/avos/avoscloud/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/avos/avoscloud/okio/ByteString;J)J
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 1279
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1282
    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    .line 1302
    :goto_0
    return-wide v0

    .line 1283
    :cond_1
    const-wide/16 v0, 0x0

    .line 1284
    invoke-virtual {p1}, Lcom/avos/avoscloud/okio/ByteString;->toByteArray()[B

    move-result-object v6

    .line 1286
    :cond_2
    iget v3, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v4, v2, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int v7, v3, v4

    .line 1287
    int-to-long v4, v7

    cmp-long v3, p2, v4

    if-ltz v3, :cond_3

    .line 1288
    int-to-long v4, v7

    sub-long p2, p2, v4

    .line 1299
    :goto_1
    int-to-long v4, v7

    add-long/2addr v0, v4

    .line 1300
    iget-object v2, v2, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    .line 1301
    iget-object v3, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-ne v2, v3, :cond_2

    .line 1302
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1290
    :cond_3
    iget-object v8, v2, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 1291
    iget v3, v2, Lcom/avos/avoscloud/okio/Segment;->pos:I

    int-to-long v4, v3

    add-long v4, v4, p2

    iget v3, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    int-to-long v10, v3

    :goto_2
    cmp-long v3, v4, v10

    if-gez v3, :cond_6

    .line 1292
    long-to-int v3, v4

    aget-byte v9, v8, v3

    .line 1293
    array-length v12, v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v12, :cond_5

    aget-byte v13, v6, v3

    .line 1294
    if-ne v9, v13, :cond_4

    add-long/2addr v0, v4

    iget v2, v2, Lcom/avos/avoscloud/okio/Segment;->pos:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1293
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1291
    :cond_5
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    goto :goto_2

    .line 1297
    :cond_6
    const-wide/16 p2, 0x0

    goto :goto_1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer$2;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okio/Buffer$2;-><init>(Lcom/avos/avoscloud/okio/Buffer;)V

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okio/Buffer$1;-><init>(Lcom/avos/avoscloud/okio/Buffer;)V

    return-object v0
.end method

.method rangeEquals(JLcom/avos/avoscloud/okio/ByteString;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1306
    invoke-virtual {p3}, Lcom/avos/avoscloud/okio/ByteString;->size()I

    move-result v2

    .line 1307
    iget-wide v4, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    sub-long/2addr v4, p1

    int-to-long v6, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 1310
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1311
    int-to-long v4, v1

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/avos/avoscloud/okio/Buffer;->getByte(J)B

    move-result v3

    invoke-virtual {p3, v1}, Lcom/avos/avoscloud/okio/ByteString;->getByte(I)B

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1310
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1315
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter

    .prologue
    .line 725
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 738
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 740
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 741
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 753
    :cond_0
    :goto_0
    return v0

    .line 742
    :cond_1
    iget v0, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 743
    iget-object v2, v1, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v3, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 746
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 748
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    iget v3, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 749
    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 750
    invoke-static {v1}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    goto :goto_0
.end method

.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1217
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_1
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    .line 1222
    :goto_0
    return-wide p2

    .line 1220
    :cond_2
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 1221
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    goto :goto_0
.end method

.method public readAll(Lcom/avos/avoscloud/okio/Sink;)J
    .locals 4
    .parameter

    .prologue
    .line 541
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 542
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 543
    invoke-interface {p1, p0, v0, v1}, Lcom/avos/avoscloud/okio/Sink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 545
    :cond_0
    return-wide v0
.end method

.method public readByte()B
    .locals 10

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 276
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 277
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 279
    iget-object v3, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 280
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 281
    iget-wide v6, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 283
    if-ne v4, v2, :cond_1

    .line 284
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 285
    invoke-static {v0}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    .line 290
    :goto_0
    return v1

    .line 287
    :cond_1
    iput v4, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 2

    .prologue
    .line 707
    :try_start_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->readByteArray(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .locals 7
    .parameter

    .prologue
    .line 714
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 715
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 720
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->readFully([B)V

    .line 721
    return-object v0
.end method

.method public readByteString()Lcom/avos/avoscloud/okio/ByteString;
    .locals 2

    .prologue
    .line 525
    new-instance v0, Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lcom/avos/avoscloud/okio/ByteString;
    .locals 3
    .parameter

    .prologue
    .line 529
    new-instance v0, Lcom/avos/avoscloud/okio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 20

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_0
    const-wide/16 v8, 0x0

    .line 415
    const/4 v6, 0x0

    .line 416
    const/4 v5, 0x0

    .line 417
    const/4 v4, 0x0

    .line 419
    const-wide v10, -0xcccccccccccccccL

    .line 420
    const-wide/16 v2, -0x7

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 425
    iget-object v13, v12, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 426
    iget v7, v12, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 427
    iget v14, v12, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 429
    :goto_0
    if-ge v7, v14, :cond_8

    .line 430
    aget-byte v15, v13, v7

    .line 431
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v15, v0, :cond_5

    .line 432
    rsub-int/lit8 v16, v15, 0x30

    .line 435
    cmp-long v17, v8, v10

    if-ltz v17, :cond_2

    cmp-long v17, v8, v10

    if-nez v17, :cond_4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v18, v2

    if-gez v17, :cond_4

    .line 436
    :cond_2
    new-instance v2, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v2}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    invoke-virtual {v2, v8, v9}, Lcom/avos/avoscloud/okio/Buffer;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v2

    .line 437
    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    .line 438
    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 440
    :cond_4
    const-wide/16 v18, 0xa

    mul-long v8, v8, v18

    .line 441
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    .line 429
    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 442
    :cond_5
    const/16 v16, 0x2d

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    if-nez v6, :cond_6

    .line 443
    const/4 v5, 0x1

    .line 444
    const-wide/16 v16, 0x1

    sub-long v2, v2, v16

    goto :goto_1

    .line 446
    :cond_6
    if-nez v6, :cond_7

    .line 447
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_7
    const/4 v4, 0x1

    .line 456
    :cond_8
    if-ne v7, v14, :cond_a

    .line 457
    invoke-virtual {v12}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 458
    invoke-static {v12}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    .line 462
    :goto_2
    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-nez v7, :cond_1

    .line 464
    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v6, v6

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 465
    if-eqz v5, :cond_b

    :goto_3
    return-wide v8

    .line 460
    :cond_a
    iput v7, v12, Lcom/avos/avoscloud/okio/Segment;->pos:I

    goto :goto_2

    .line 465
    :cond_b
    neg-long v8, v8

    goto :goto_3
.end method

.method public readFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/okio/Buffer;
    .locals 3
    .parameter

    .prologue
    .line 227
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 228
    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;J)Lcom/avos/avoscloud/okio/Buffer;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 233
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 235
    return-object p0
.end method

.method public readFully(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 533
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 534
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 535
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 537
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 538
    return-void
.end method

.method public readFully([B)V
    .locals 3
    .parameter

    .prologue
    .line 729
    const/4 v0, 0x0

    .line 730
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 731
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->read([BII)I

    move-result v1

    .line 732
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 733
    :cond_0
    add-int/2addr v0, v1

    .line 734
    goto :goto_0

    .line 735
    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 18

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_0
    const-wide/16 v4, 0x0

    .line 472
    const/4 v3, 0x0

    .line 473
    const/4 v2, 0x0

    .line 476
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 478
    iget-object v11, v10, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 479
    iget v6, v10, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 480
    iget v12, v10, Lcom/avos/avoscloud/okio/Segment;->limit:I

    move v7, v6

    .line 482
    :goto_0
    if-ge v7, v12, :cond_6

    .line 485
    aget-byte v8, v11, v7

    .line 486
    const/16 v6, 0x30

    if-lt v8, v6, :cond_2

    const/16 v6, 0x39

    if-gt v8, v6, :cond_2

    .line 487
    add-int/lit8 v6, v8, -0x30

    .line 503
    :goto_1
    const-wide/high16 v14, -0x1000

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_8

    .line 504
    new-instance v2, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v2}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/avos/avoscloud/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v2

    .line 505
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 488
    :cond_2
    const/16 v6, 0x61

    if-lt v8, v6, :cond_3

    const/16 v6, 0x66

    if-gt v8, v6, :cond_3

    .line 489
    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_1

    .line 490
    :cond_3
    const/16 v6, 0x41

    if-lt v8, v6, :cond_4

    const/16 v6, 0x46

    if-gt v8, v6, :cond_4

    .line 491
    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_1

    .line 493
    :cond_4
    if-nez v3, :cond_5

    .line 494
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_5
    const/4 v2, 0x1

    .line 512
    :cond_6
    if-ne v7, v12, :cond_9

    .line 513
    invoke-virtual {v10}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 514
    invoke-static {v10}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    .line 518
    :goto_2
    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-nez v6, :cond_1

    .line 520
    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 521
    return-wide v4

    .line 508
    :cond_8
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    .line 509
    int-to-long v8, v6

    or-long/2addr v8, v4

    .line 482
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_0

    .line 516
    :cond_9
    iput v7, v10, Lcom/avos/avoscloud/okio/Segment;->pos:I

    goto :goto_2
.end method

.method public readInt()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    .line 333
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 336
    iget v0, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 337
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 340
    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 361
    :goto_0
    return v0

    .line 347
    :cond_1
    iget-object v3, v1, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 348
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 352
    iget-wide v6, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 354
    if-ne v5, v2, :cond_2

    .line 355
    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 356
    invoke-static {v1}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    goto :goto_0

    .line 358
    :cond_2
    iput v5, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    goto :goto_0
.end method

.method public readIntLe()I
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 12

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 368
    iget v0, v2, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 369
    iget v3, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 372
    sub-int v1, v3, v0

    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 395
    :goto_0
    return-wide v0

    .line 377
    :cond_1
    iget-object v1, v2, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 378
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v6, v0

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v0, 0x38

    shl-long/2addr v6, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v8, 0x30

    shl-long/2addr v4, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x28

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x18

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x8

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v7, v6, 0x1

    aget-byte v0, v1, v6

    int-to-long v0, v0

    const-wide/16 v8, 0xff

    and-long/2addr v0, v8

    or-long/2addr v0, v4

    .line 386
    iget-wide v4, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v8, 0x8

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 388
    if-ne v7, v3, :cond_2

    .line 389
    invoke-virtual {v2}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 390
    invoke-static {v2}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    goto :goto_0

    .line 392
    :cond_2
    iput v7, v2, Lcom/avos/avoscloud/okio/Segment;->pos:I

    goto :goto_0
.end method

.method public readLongLe()J
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    .line 304
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 307
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 308
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 311
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 314
    int-to-short v0, v0

    .line 329
    :goto_0
    return v0

    .line 317
    :cond_1
    iget-object v3, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 318
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 320
    iget-wide v6, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 322
    if-ne v5, v2, :cond_2

    .line 323
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 324
    invoke-static {v0}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    .line 329
    :goto_1
    int-to-short v0, v1

    goto :goto_0

    .line 326
    :cond_2
    iput v5, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    goto :goto_1
.end method

.method public readShortLe()S
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 569
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 570
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string v0, ""

    .line 591
    :cond_2
    :goto_0
    return-object v0

    .line 576
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 577
    iget v0, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 579
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 582
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v3, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 583
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 584
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 586
    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    iget v3, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    if-ne v2, v3, :cond_2

    .line 587
    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 588
    invoke-static {v1}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    goto :goto_0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 562
    :try_start_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    :try_start_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    sget-object v2, Lcom/avos/avoscloud/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 557
    sget-object v0, Lcom/avos/avoscloud/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 13

    .prologue
    const-wide/16 v8, 0x0

    const/16 v1, 0x80

    const/4 v3, 0x1

    const v5, 0xfffd

    .line 631
    iget-wide v6, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 633
    :cond_0
    invoke-virtual {p0, v8, v9}, Lcom/avos/avoscloud/okio/Buffer;->getByte(J)B

    move-result v6

    .line 638
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_1

    .line 640
    and-int/lit8 v2, v6, 0x7f

    .line 642
    const/4 v0, 0x0

    move v4, v2

    move v2, v3

    .line 668
    :goto_0
    iget-wide v8, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v10, v2

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 669
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (to read code point prefixed 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_1
    and-int/lit16 v0, v6, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_2

    .line 646
    and-int/lit8 v2, v6, 0x1f

    .line 647
    const/4 v0, 0x2

    move v4, v2

    move v2, v0

    move v0, v1

    .line 648
    goto :goto_0

    .line 650
    :cond_2
    and-int/lit16 v0, v6, 0xf0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_3

    .line 652
    and-int/lit8 v4, v6, 0xf

    .line 653
    const/4 v2, 0x3

    .line 654
    const/16 v0, 0x800

    goto :goto_0

    .line 656
    :cond_3
    and-int/lit16 v0, v6, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_4

    .line 658
    and-int/lit8 v4, v6, 0x7

    .line 659
    const/4 v2, 0x4

    .line 660
    const/high16 v0, 0x1

    goto :goto_0

    .line 664
    :cond_4
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->skip(J)V

    move v0, v5

    .line 702
    :goto_1
    return v0

    :cond_5
    move v12, v3

    move v3, v4

    move v4, v12

    .line 676
    :goto_2
    if-ge v4, v2, :cond_7

    .line 677
    int-to-long v6, v4

    invoke-virtual {p0, v6, v7}, Lcom/avos/avoscloud/okio/Buffer;->getByte(J)B

    move-result v6

    .line 678
    and-int/lit16 v7, v6, 0xc0

    if-ne v7, v1, :cond_6

    .line 680
    shl-int/lit8 v3, v3, 0x6

    .line 681
    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    .line 676
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_2

    .line 683
    :cond_6
    int-to-long v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->skip(J)V

    move v0, v5

    .line 684
    goto :goto_1

    .line 688
    :cond_7
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/avos/avoscloud/okio/Buffer;->skip(J)V

    .line 690
    const v1, 0x10ffff

    if-le v3, v1, :cond_8

    move v0, v5

    .line 691
    goto :goto_1

    .line 694
    :cond_8
    const v1, 0xd800

    if-lt v3, v1, :cond_9

    const v1, 0xdfff

    if-gt v3, v1, :cond_9

    move v0, v5

    .line 695
    goto :goto_1

    .line 698
    :cond_9
    if-ge v3, v0, :cond_a

    move v0, v5

    .line 699
    goto :goto_1

    :cond_a
    move v0, v3

    .line 702
    goto :goto_1
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 4

    .prologue
    .line 595
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 597
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 598
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 601
    :goto_0
    return-object v0

    .line 598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v2, 0x1

    .line 616
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 618
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 619
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/avos/avoscloud/okio/Buffer;->skip(J)V

    .line 626
    :goto_0
    return-object v0

    .line 624
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p0, v2, v3}, Lcom/avos/avoscloud/okio/Buffer;->skip(J)V

    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 8

    .prologue
    .line 605
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    .line 606
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 607
    new-instance v1, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v1}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 608
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Buffer;->copyTo(Lcom/avos/avoscloud/okio/Buffer;JJ)Lcom/avos/avoscloud/okio/Buffer;

    .line 609
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/Buffer;->readByteString()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(J)Z
    .locals 3
    .parameter

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public require(J)V
    .locals 3
    .parameter

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 103
    :cond_0
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1336
    :goto_0
    return-object v0

    .line 1331
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v0, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v2, v2, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-eq v0, v2, :cond_1

    .line 1334
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v3, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1336
    goto :goto_0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 7
    .parameter

    .prologue
    .line 770
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v0, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v1, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 774
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 775
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 776
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v2, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 778
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v0, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v1, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 780
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 781
    invoke-static {v0}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    goto :goto_0

    .line 784
    :cond_2
    return-void
.end method

.method public snapshot()Lcom/avos/avoscloud/okio/ByteString;
    .locals 4

    .prologue
    .line 1424
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->snapshot(I)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(I)Lcom/avos/avoscloud/okio/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 1434
    if-nez p1, :cond_0

    sget-object v0, Lcom/avos/avoscloud/okio/ByteString;->EMPTY:Lcom/avos/avoscloud/okio/ByteString;

    .line 1435
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/okio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/okio/SegmentedByteString;-><init>(Lcom/avos/avoscloud/okio/Buffer;I)V

    goto :goto_0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 1325
    sget-object v0, Lcom/avos/avoscloud/okio/Timeout;->NONE:Lcom/avos/avoscloud/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1386
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1387
    const-string v0, "Buffer[size=0]"

    .line 1401
    :goto_0
    return-object v0

    .line 1390
    :cond_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 1391
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/Buffer;->clone()Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->readByteString()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    .line 1392
    const-string v1, "Buffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1396
    :cond_1
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1397
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v2, v2, Lcom/avos/avoscloud/okio/Segment;->pos:I

    iget-object v3, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v3, v3, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget-object v4, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v4, v4, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1398
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-eq v0, v2, :cond_2

    .line 1399
    iget-object v2, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v3, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    iget v4, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v5, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1398
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    goto :goto_1

    .line 1401
    :cond_2
    const-string v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/okio/ByteString;->of([B)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method writableSegment(I)Lcom/avos/avoscloud/okio/Segment;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x800

    .line 1111
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-nez v0, :cond_3

    .line 1114
    invoke-static {}, Lcom/avos/avoscloud/okio/SegmentPool;->take()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1115
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v2, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iput-object v0, v2, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    iput-object v0, v1, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    .line 1122
    :cond_2
    :goto_0
    return-object v0

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    .line 1119
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_4

    iget-boolean v1, v0, Lcom/avos/avoscloud/okio/Segment;->owner:Z

    if-nez v1, :cond_2

    .line 1120
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/okio/SegmentPool;->take()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Segment;->push(Lcom/avos/avoscloud/okio/Segment;)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/Buffer;
    .locals 2
    .parameter

    .prologue
    .line 787
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_0
    invoke-virtual {p1, p0}, Lcom/avos/avoscloud/okio/ByteString;->write(Lcom/avos/avoscloud/okio/Buffer;)V

    .line 789
    return-object p0
.end method

.method public write([B)Lcom/avos/avoscloud/okio/Buffer;
    .locals 2
    .parameter

    .prologue
    .line 930
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->write([BII)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lcom/avos/avoscloud/okio/Buffer;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 935
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 938
    add-int v0, p2, p3

    .line 939
    :goto_0
    if-ge p2, v0, :cond_1

    .line 940
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v1

    .line 942
    sub-int v2, v0, p2

    iget v3, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    rsub-int v3, v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 943
    iget-object v3, v1, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v4, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 945
    add-int/2addr p2, v2

    .line 946
    iget v3, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    goto :goto_0

    .line 949
    :cond_1
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 950
    return-object p0
.end method

.method public bridge synthetic write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Source;J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 963
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 964
    invoke-interface {p1, p0, p2, p3}, Lcom/avos/avoscloud/okio/Source;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v0

    .line 965
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 966
    :cond_0
    sub-long/2addr p2, v0

    .line 967
    goto :goto_0

    .line 968
    :cond_1
    return-object p0
.end method

.method public bridge synthetic write([B)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->write([B)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->write([BII)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1176
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_1
    iget-wide v0, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 1180
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    .line 1182
    iget-object v0, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v0, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget-object v1, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget v1, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6

    .line 1183
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    move-object v1, v0

    .line 1184
    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, Lcom/avos/avoscloud/okio/Segment;->owner:Z

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lcom/avos/avoscloud/okio/Segment;->shared:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x800

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    .line 1187
    iget-object v0, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/okio/Segment;->writeTo(Lcom/avos/avoscloud/okio/Segment;I)V

    .line 1188
    iget-wide v0, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 1189
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 1214
    :cond_2
    return-void

    .line 1183
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 1184
    :cond_4
    iget v0, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    goto :goto_2

    .line 1194
    :cond_5
    iget-object v0, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Segment;->split(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1199
    :cond_6
    iget-object v0, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1200
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v4, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1201
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1202
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    if-nez v1, :cond_7

    .line 1203
    iput-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 1204
    iget-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v6, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iput-object v6, v1, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    iput-object v6, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    .line 1210
    :goto_3
    iget-wide v0, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 1211
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 1212
    sub-long/2addr p2, v4

    .line 1213
    goto :goto_0

    .line 1206
    :cond_7
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    iget-object v1, v1, Lcom/avos/avoscloud/okio/Segment;->prev:Lcom/avos/avoscloud/okio/Segment;

    .line 1207
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okio/Segment;->push(Lcom/avos/avoscloud/okio/Segment;)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Segment;->compact()V

    goto :goto_3
.end method

.method public writeAll(Lcom/avos/avoscloud/okio/Source;)J
    .locals 6
    .parameter

    .prologue
    .line 954
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_0
    const-wide/16 v0, 0x0

    .line 956
    :goto_0
    const-wide/16 v2, 0x800

    invoke-interface {p1, p0, v2, v3}, Lcom/avos/avoscloud/okio/Source;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 957
    add-long/2addr v0, v2

    goto :goto_0

    .line 959
    :cond_1
    return-wide v0
.end method

.method public writeByte(I)Lcom/avos/avoscloud/okio/Buffer;
    .locals 4
    .parameter

    .prologue
    .line 972
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    .line 973
    iget-object v1, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 974
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 975
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lcom/avos/avoscloud/okio/Buffer;
    .locals 11
    .parameter

    .prologue
    .line 1032
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1034
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object p0

    .line 1084
    :goto_0
    return-object p0

    .line 1037
    :cond_0
    const/4 v0, 0x0

    .line 1038
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_17

    .line 1039
    neg-long v2, p1

    .line 1040
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 1041
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object p0

    goto :goto_0

    .line 1043
    :cond_1
    const/4 v0, 0x1

    move v4, v0

    .line 1047
    :goto_1
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 1066
    :goto_2
    if-eqz v4, :cond_2

    .line 1067
    add-int/lit8 v0, v0, 0x1

    .line 1070
    :cond_2
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v5

    .line 1071
    iget-object v6, v5, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 1072
    iget v1, v5, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v1, v0

    .line 1073
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_15

    .line 1074
    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    .line 1075
    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lcom/avos/avoscloud/okio/Buffer;->DIGITS:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    .line 1076
    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_3

    .line 1047
    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    goto :goto_2

    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_9

    const/4 v0, 0x7

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    goto :goto_2

    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    const/16 v0, 0x9

    goto :goto_2

    :cond_b
    const/16 v0, 0xa

    goto :goto_2

    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    const/16 v0, 0xb

    goto :goto_2

    :cond_d
    const/16 v0, 0xc

    goto :goto_2

    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_2

    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/16 v0, 0xe

    goto/16 :goto_2

    :cond_10
    const/16 v0, 0xf

    goto/16 :goto_2

    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_13

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_12
    const/16 v0, 0x11

    goto/16 :goto_2

    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_14

    const/16 v0, 0x12

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x13

    goto/16 :goto_2

    .line 1078
    :cond_15
    if-eqz v4, :cond_16

    .line 1079
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 1082
    :cond_16
    iget v1, v5, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 1083
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    goto/16 :goto_0

    :cond_17
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_1
.end method

.method public bridge synthetic writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/Buffer;
    .locals 9
    .parameter

    .prologue
    .line 1088
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1090
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object p0

    .line 1103
    :goto_0
    return-object p0

    .line 1093
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1095
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v2

    .line 1096
    iget-object v3, v2, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 1097
    iget v0, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    :goto_1
    if-lt v0, v4, :cond_1

    .line 1098
    sget-object v5, Lcom/avos/avoscloud/okio/Buffer;->DIGITS:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 1099
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1097
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1101
    :cond_1
    iget v0, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 1102
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    goto :goto_0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lcom/avos/avoscloud/okio/Buffer;
    .locals 5
    .parameter

    .prologue
    .line 994
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    .line 995
    iget-object v1, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 996
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 997
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 998
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 999
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1000
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1001
    iput v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 1002
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 1003
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeInt(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lcom/avos/avoscloud/okio/Buffer;
    .locals 1
    .parameter

    .prologue
    .line 1007
    invoke-static {p1}, Lcom/avos/avoscloud/okio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeInt(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeIntLe(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lcom/avos/avoscloud/okio/Buffer;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 1011
    invoke-virtual {p0, v8}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    .line 1012
    iget-object v1, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 1013
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 1014
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1015
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1016
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1017
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1018
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1019
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1020
    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1021
    add-int/lit8 v2, v3, 0x1

    and-long v4, p1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1022
    iput v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 1023
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 1024
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeLong(J)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lcom/avos/avoscloud/okio/Buffer;
    .locals 3
    .parameter

    .prologue
    .line 1028
    invoke-static {p1, p2}, Lcom/avos/avoscloud/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeLong(J)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeLongLe(J)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lcom/avos/avoscloud/okio/Buffer;
    .locals 5
    .parameter

    .prologue
    .line 979
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    .line 980
    iget-object v1, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 981
    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 982
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 983
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 984
    iput v2, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 985
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 986
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeShort(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lcom/avos/avoscloud/okio/Buffer;
    .locals 1
    .parameter

    .prologue
    .line 990
    int-to-short v0, p1

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeShort(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeShortLe(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/Buffer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 914
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1
    if-ge p3, p2, :cond_2

    .line 917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 920
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_3
    if-nez p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_4
    sget-object v0, Lcom/avos/avoscloud/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    .line 926
    :goto_0
    return-object v0

    .line 925
    :cond_5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 926
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/okio/Buffer;->write([BII)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/Buffer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 909
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)Lcom/avos/avoscloud/okio/Buffer;
    .locals 2
    .parameter

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;J)Lcom/avos/avoscloud/okio/Buffer;
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 203
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 206
    iget-object v1, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 207
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 208
    iget v0, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v4, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v0, v4

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 209
    iget-object v4, v1, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v5, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    invoke-virtual {p1, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 211
    iget v4, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    add-int/2addr v4, v0

    iput v4, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    .line 212
    iget-wide v4, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    .line 213
    int-to-long v4, v0

    sub-long/2addr p2, v4

    .line 215
    iget v0, v1, Lcom/avos/avoscloud/okio/Segment;->pos:I

    iget v4, v1, Lcom/avos/avoscloud/okio/Segment;->limit:I

    if-ne v0, v4, :cond_2

    .line 217
    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/Segment;->pop()Lcom/avos/avoscloud/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    .line 218
    invoke-static {v1}, Lcom/avos/avoscloud/okio/SegmentPool;->recycle(Lcom/avos/avoscloud/okio/Segment;)V

    :goto_1
    move-object v1, v0

    .line 220
    goto :goto_0

    .line 222
    :cond_1
    return-object p0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/Buffer;
    .locals 2
    .parameter

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/Buffer;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0xdfff

    const/16 v7, 0x80

    .line 797
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_1
    if-ge p3, p2, :cond_2

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_5

    .line 803
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_3
    const/4 v0, 0x0

    .line 849
    :goto_0
    const v2, 0xdbff

    if-gt v1, v2, :cond_4

    const v2, 0xdc00

    if-lt v0, v2, :cond_4

    if-le v0, v8, :cond_c

    .line 850
    :cond_4
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 851
    add-int/lit8 p2, p2, 0x1

    .line 808
    :cond_5
    :goto_1
    if-ge p2, p3, :cond_d

    .line 809
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 811
    if-ge v1, v7, :cond_8

    .line 812
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writableSegment(I)Lcom/avos/avoscloud/okio/Segment;

    move-result-object v2

    .line 813
    iget-object v3, v2, Lcom/avos/avoscloud/okio/Segment;->data:[B

    .line 814
    iget v0, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    sub-int v4, v0, p2

    .line 815
    rsub-int v0, v4, 0x800

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 818
    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    .line 822
    :goto_2
    if-ge v0, v5, :cond_6

    .line 823
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 824
    if-lt v6, v7, :cond_7

    .line 828
    :cond_6
    add-int v1, v0, v4

    iget v3, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    sub-int/2addr v1, v3

    .line 829
    iget v3, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/avos/avoscloud/okio/Segment;->limit:I

    .line 830
    iget-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    :goto_3
    move p2, v0

    .line 867
    goto :goto_1

    .line 825
    :cond_7
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_2

    .line 832
    :cond_8
    const/16 v0, 0x800

    if-ge v1, v0, :cond_9

    .line 834
    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 835
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 836
    add-int/lit8 v0, p2, 0x1

    goto :goto_3

    .line 838
    :cond_9
    const v0, 0xd800

    if-lt v1, v0, :cond_a

    if-le v1, v8, :cond_b

    .line 840
    :cond_a
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 841
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 842
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 843
    add-int/lit8 v0, p2, 0x1

    goto :goto_3

    .line 848
    :cond_b
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_3

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_0

    .line 858
    :cond_c
    const/high16 v2, 0x1

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 861
    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 862
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 863
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 864
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 865
    add-int/lit8 v0, p2, 0x2

    goto :goto_3

    .line 869
    :cond_d
    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;
    .locals 3
    .parameter

    .prologue
    .line 873
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 875
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 905
    :goto_0
    return-object p0

    .line 877
    :cond_0
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1

    .line 879
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 880
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_0

    .line 882
    :cond_1
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_3

    .line 883
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    .line 884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_2
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 890
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 891
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_0

    .line 893
    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    .line 895
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 896
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 897
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 898
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_0

    .line 901
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

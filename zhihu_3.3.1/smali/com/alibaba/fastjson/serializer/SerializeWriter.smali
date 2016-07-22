.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected buf:[C

.field protected count:I

.field private features:I

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 59
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 61
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 65
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_1

    .line 69
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 71
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 109
    if-gtz p2, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative initial size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 113
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 80
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_1

    .line 88
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 92
    :cond_1
    array-length v2, p2

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_2

    .line 95
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 96
    return-void

    .line 92
    :cond_2
    aget-object v3, p2, v0

    .line 93
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v3

    or-int/2addr v1, v3

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 75
    return-void
.end method

.method static final isSpecial(CI)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x5c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1480
    const/16 v2, 0x20

    if-ne p0, v2, :cond_1

    .line 1496
    :cond_0
    :goto_0
    return v0

    .line 1484
    :cond_1
    const/16 v2, 0x2f

    if-ne p0, v2, :cond_2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1485
    goto :goto_0

    .line 1488
    :cond_2
    const/16 v2, 0x23

    if-le p0, v2, :cond_3

    if-ne p0, v3, :cond_0

    .line 1492
    :cond_3
    const/16 v2, 0x1f

    if-le p0, v2, :cond_4

    if-eq p0, v3, :cond_4

    const/16 v2, 0x22

    if-ne p0, v2, :cond_0

    :cond_4
    move v0, v1

    .line 1493
    goto :goto_0
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1519
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 1524
    :goto_0
    return-void

    .line 1522
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private writeEnumValue(Ljava/lang/String;C)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x27

    const/16 v1, 0x22

    .line 522
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 524
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 526
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 534
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 530
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 532
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0
.end method

.method private writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1283
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1286
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1288
    if-nez p3, :cond_0

    .line 1289
    const/4 v1, 0x4

    .line 1290
    add-int/lit8 v3, v2, 0x8

    add-int/2addr v0, v3

    .line 1296
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v0, v3, :cond_2

    .line 1297
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_1

    .line 1298
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1299
    const/16 v0, 0x3a

    invoke-direct {p0, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 1300
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 1473
    :goto_1
    return-void

    .line 1292
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 1293
    add-int v3, v2, v1

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    goto :goto_0

    .line 1303
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1306
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v3, v4

    .line 1308
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, 0x2

    .line 1309
    add-int v4, v3, v2

    .line 1311
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x22

    aput-char v7, v5, v6

    .line 1312
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p2, v5, v2, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1314
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1316
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x22

    aput-char v3, v2, v4

    .line 1318
    add-int/lit8 v2, v4, 0x1

    .line 1319
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v2

    .line 1321
    if-nez p3, :cond_3

    .line 1322
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x6e

    aput-char v2, v0, v4

    .line 1323
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v1

    .line 1324
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v0, v2

    .line 1325
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    goto :goto_1

    .line 1329
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    const/16 v3, 0x22

    aput-char v3, v2, v4

    .line 1332
    add-int v7, v8, v1

    .line 1334
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p3, v2, v1, v3, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1336
    if-eqz p4, :cond_5

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1337
    const/4 v5, 0x0

    .line 1338
    const/4 v4, -0x1

    .line 1339
    const/4 v2, -0x1

    .line 1340
    const/4 v3, 0x0

    move v1, v8

    move v6, v0

    move v0, v2

    .line 1342
    :goto_2
    if-lt v1, v7, :cond_6

    .line 1389
    if-lez v5, :cond_5

    .line 1390
    add-int v1, v6, v5

    .line 1391
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_4

    .line 1392
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1394
    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1396
    const/4 v1, 0x1

    if-ne v5, v1, :cond_c

    .line 1397
    const/16 v0, 0x2028

    if-ne v3, v0, :cond_a

    .line 1398
    add-int/lit8 v0, v4, 0x1

    .line 1399
    add-int/lit8 v1, v4, 0x6

    .line 1400
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 1401
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1402
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    .line 1403
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 1404
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 1405
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 1406
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 1407
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x38

    aput-char v2, v0, v1

    .line 1472
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_1

    .line 1343
    :cond_6
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 1345
    const/16 v9, 0x2028

    if-ne v2, v9, :cond_7

    .line 1346
    add-int/lit8 v3, v5, 0x1

    .line 1349
    add-int/lit8 v4, v6, 0x4

    .line 1351
    const/4 v5, -0x1

    if-ne v0, v5, :cond_12

    move v0, v2

    move v5, v4

    move v4, v3

    move v2, v1

    move v3, v1

    .line 1342
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_2

    .line 1357
    :cond_7
    const/16 v9, 0x5d

    if-lt v2, v9, :cond_9

    .line 1358
    const/16 v9, 0x7f

    if-lt v2, v9, :cond_14

    const/16 v9, 0xa0

    if-gt v2, v9, :cond_14

    .line 1359
    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 1363
    :cond_8
    add-int/lit8 v3, v5, 0x1

    .line 1366
    add-int/lit8 v4, v6, 0x4

    move v5, v4

    move v4, v3

    move v3, v1

    move v10, v0

    move v0, v2

    move v2, v10

    .line 1369
    goto :goto_4

    .line 1372
    :cond_9
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1373
    add-int/lit8 v3, v5, 0x1

    .line 1377
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v4

    if-ge v2, v4, :cond_13

    .line 1378
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_13

    .line 1380
    add-int/lit8 v6, v6, 0x4

    move v4, v6

    .line 1383
    :goto_5
    const/4 v5, -0x1

    if-ne v0, v5, :cond_12

    move v0, v2

    move v5, v4

    move v4, v3

    move v2, v1

    move v3, v1

    .line 1384
    goto :goto_4

    .line 1410
    :cond_a
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v0, v0

    if-ge v3, v0, :cond_b

    .line 1411
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v0, v0, v3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 1412
    add-int/lit8 v0, v4, 0x1

    .line 1413
    add-int/lit8 v1, v4, 0x6

    .line 1414
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 1415
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1418
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x5c

    aput-char v2, v0, v4

    .line 1419
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x75

    aput-char v4, v0, v1

    .line 1420
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 1421
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v1

    .line 1422
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 1423
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto/16 :goto_3

    .line 1425
    :cond_b
    add-int/lit8 v0, v4, 0x1

    .line 1426
    add-int/lit8 v1, v4, 0x2

    .line 1427
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 1428
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1429
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    .line 1430
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto/16 :goto_3

    .line 1433
    :cond_c
    const/4 v1, 0x1

    if-le v5, v1, :cond_5

    .line 1434
    sub-int v1, v0, v8

    move v2, v7

    move v10, v0

    move v0, v1

    move v1, v10

    .line 1436
    :goto_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1437
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1439
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v3, v3

    if-ge v4, v3, :cond_d

    .line 1440
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_e

    .line 1441
    :cond_d
    const/16 v3, 0x2f

    if-ne v4, v3, :cond_10

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1442
    :cond_e
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v1

    .line 1443
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_f

    .line 1444
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v1, v5

    .line 1445
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 1446
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 1447
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 1448
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 1449
    add-int/lit8 v2, v2, 0x5

    .line 1436
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1451
    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 1452
    add-int/lit8 v2, v2, 0x1

    .line 1454
    goto :goto_7

    .line 1455
    :cond_10
    const/16 v3, 0x2028

    if-ne v4, v3, :cond_11

    .line 1456
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v1

    .line 1457
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v1, v5

    .line 1458
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 1459
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 1460
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 1461
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 1462
    add-int/lit8 v2, v2, 0x5

    .line 1463
    goto :goto_7

    .line 1464
    :cond_11
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v4, v5, v1

    move v1, v3

    goto :goto_7

    :cond_12
    move v5, v4

    move v4, v3

    move v3, v1

    move v10, v0

    move v0, v2

    move v2, v10

    goto/16 :goto_4

    :cond_13
    move v4, v6

    goto/16 :goto_5

    :cond_14
    move v2, v0

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_4
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    .line 1663
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 1665
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1666
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v6

    add-int/lit8 v3, v0, 0x1

    .line 1667
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v3, v0, :cond_8

    .line 1668
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 1669
    if-nez v6, :cond_0

    .line 1670
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1671
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1672
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1760
    :goto_0
    return-void

    .line 1676
    :cond_0
    const/4 v0, 0x0

    .line 1677
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v6, :cond_3

    move v1, v0

    .line 1685
    :goto_2
    if-eqz v1, :cond_1

    .line 1686
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1688
    :cond_1
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v6, :cond_5

    .line 1697
    if-eqz v1, :cond_2

    .line 1698
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1700
    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 1678
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1679
    array-length v3, v5

    if-ge v2, v3, :cond_4

    aget-byte v2, v5, v2

    if-eqz v2, :cond_4

    .line 1680
    const/4 v0, 0x1

    move v1, v0

    .line 1681
    goto :goto_2

    .line 1677
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1689
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1690
    array-length v3, v5

    if-ge v2, v3, :cond_6

    aget-byte v3, v5, v2

    if-eqz v3, :cond_6

    .line 1691
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1692
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1688
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1694
    :cond_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_4

    .line 1703
    :cond_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1706
    :cond_8
    if-nez v6, :cond_a

    .line 1707
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    .line 1708
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_9

    .line 1709
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1711
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 1712
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 1713
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 1717
    :cond_a
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1718
    add-int v2, v4, v6

    .line 1720
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v6, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1721
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1723
    const/4 v1, 0x0

    move v0, v4

    .line 1725
    :goto_5
    if-lt v0, v2, :cond_b

    .line 1759
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 1726
    :cond_b
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v0

    .line 1727
    array-length v7, v5

    if-ge v6, v7, :cond_d

    aget-byte v7, v5, v6

    if-eqz v7, :cond_d

    .line 1728
    if-nez v1, :cond_e

    .line 1729
    add-int/lit8 v3, v3, 0x3

    .line 1730
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v3, v1, :cond_c

    .line 1731
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1733
    :cond_c
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1735
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v0, 0x3

    sub-int v10, v2, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1736
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x1

    invoke-static {v1, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1737
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x22

    aput-char v7, v1, v4

    .line 1738
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v0

    .line 1739
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v7, v6

    aput-char v6, v1, v0

    .line 1740
    add-int/lit8 v2, v2, 0x2

    .line 1741
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x22

    aput-char v7, v1, v6

    .line 1743
    const/4 v1, 0x1

    .line 1725
    :cond_d
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1745
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 1746
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v3, v7, :cond_f

    .line 1747
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1749
    :cond_f
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1751
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v0, 0x2

    sub-int v11, v2, v0

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1752
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v0

    .line 1753
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v8, v6

    aput-char v6, v7, v0

    .line 1754
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    .line 1763
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 1765
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1766
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v6

    add-int/lit8 v3, v0, 0x1

    .line 1767
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v3, v0, :cond_8

    .line 1768
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 1769
    if-nez v6, :cond_0

    .line 1770
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1771
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1772
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1861
    :goto_0
    return-void

    .line 1776
    :cond_0
    const/4 v0, 0x0

    .line 1777
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v6, :cond_3

    move v1, v0

    .line 1785
    :goto_2
    if-eqz v1, :cond_1

    .line 1786
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1788
    :cond_1
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v6, :cond_5

    .line 1797
    if-eqz v1, :cond_2

    .line 1798
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1800
    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 1778
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1779
    array-length v3, v5

    if-ge v2, v3, :cond_4

    aget-byte v2, v5, v2

    if-eqz v2, :cond_4

    .line 1780
    const/4 v0, 0x1

    move v1, v0

    .line 1781
    goto :goto_2

    .line 1777
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1789
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1790
    array-length v3, v5

    if-ge v2, v3, :cond_6

    aget-byte v3, v5, v2

    if-eqz v3, :cond_6

    .line 1791
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1792
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1788
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1794
    :cond_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_4

    .line 1804
    :cond_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1807
    :cond_8
    if-nez v6, :cond_a

    .line 1808
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    .line 1809
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_9

    .line 1810
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1812
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 1813
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 1814
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 1818
    :cond_a
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1819
    add-int v2, v4, v6

    .line 1821
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v6, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1822
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1824
    const/4 v1, 0x0

    move v0, v4

    .line 1826
    :goto_5
    if-lt v0, v2, :cond_b

    .line 1860
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v3, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 1827
    :cond_b
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v0

    .line 1828
    array-length v7, v5

    if-ge v6, v7, :cond_d

    aget-byte v7, v5, v6

    if-eqz v7, :cond_d

    .line 1829
    if-nez v1, :cond_e

    .line 1830
    add-int/lit8 v3, v3, 0x3

    .line 1831
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v3, v1, :cond_c

    .line 1832
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1834
    :cond_c
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1836
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v0, 0x3

    sub-int v10, v2, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1837
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x1

    invoke-static {v1, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1838
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x27

    aput-char v7, v1, v4

    .line 1839
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v0

    .line 1840
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v7, v6

    aput-char v6, v1, v0

    .line 1841
    add-int/lit8 v2, v2, 0x2

    .line 1842
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x27

    aput-char v7, v1, v6

    .line 1844
    const/4 v1, 0x1

    .line 1826
    :cond_d
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1846
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 1847
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v3, v7, :cond_f

    .line 1848
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1850
    :cond_f
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1852
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v0, 0x2

    sub-int v11, v2, v0

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1853
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v0

    .line 1854
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v8, v6

    aput-char v6, v7, v0

    .line 1855
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 621
    return-void
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    if-nez p1, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 626
    if-eqz p2, :cond_0

    .line 627
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 633
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 634
    if-eqz p2, :cond_2

    .line 635
    add-int/lit8 v0, v0, 0x1

    .line 638
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_11

    .line 639
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_10

    .line 640
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 642
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 710
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 711
    if-eqz p2, :cond_0

    .line 712
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 643
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 645
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 646
    const/16 v2, 0x30

    if-lt v1, v2, :cond_4

    const/16 v2, 0x39

    if-le v1, v2, :cond_f

    :cond_4
    const/16 v2, 0x61

    if-lt v1, v2, :cond_5

    const/16 v2, 0x7a

    if-le v1, v2, :cond_f

    :cond_5
    const/16 v2, 0x41

    if-lt v1, v2, :cond_6

    const/16 v2, 0x5a

    if-le v1, v2, :cond_f

    .line 647
    :cond_6
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_f

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_f

    .line 648
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 649
    const/16 v2, 0x75

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 650
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 651
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 652
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 653
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 642
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 656
    :cond_7
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 657
    const/16 v2, 0x8

    if-eq v1, v2, :cond_8

    .line 658
    const/16 v2, 0xc

    if-eq v1, v2, :cond_8

    .line 659
    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    .line 660
    const/16 v2, 0xd

    if-eq v1, v2, :cond_8

    .line 661
    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    .line 662
    const/16 v2, 0x22

    if-eq v1, v2, :cond_8

    .line 663
    const/16 v2, 0x2f

    if-eq v1, v2, :cond_8

    .line 664
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_9

    .line 665
    :cond_8
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 666
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_2

    .line 670
    :cond_9
    const/16 v2, 0x20

    if-ge v1, v2, :cond_a

    .line 671
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 672
    const/16 v2, 0x75

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 673
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 674
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 675
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v3, v1, 0x2

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 676
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_2

    .line 680
    :cond_a
    const/16 v2, 0x7f

    if-lt v1, v2, :cond_f

    .line 681
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 682
    const/16 v2, 0x75

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 683
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 684
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 685
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 686
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_2

    .line 690
    :cond_b
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 691
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_d

    .line 692
    :cond_c
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_f

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 693
    :cond_d
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 694
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v2, v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    .line 695
    const/16 v2, 0x75

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 696
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 697
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 698
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 699
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_2

    .line 701
    :cond_e
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_2

    .line 707
    :cond_f
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_2

    .line 716
    :cond_10
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 719
    :cond_11
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v2, 0x1

    .line 720
    add-int v7, v8, v1

    .line 722
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 723
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v2, v1, v3, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 725
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 727
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 728
    const/4 v1, -0x1

    move v2, v0

    move v0, v1

    move v1, v8

    .line 730
    :goto_3
    if-lt v1, v7, :cond_13

    .line 741
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v2, v1, :cond_12

    .line 742
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 744
    :cond_12
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v1, v0

    move v0, v7

    .line 746
    :goto_4
    if-ge v1, v8, :cond_18

    .line 762
    if-eqz p2, :cond_1d

    .line 763
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 764
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    .line 731
    :cond_13
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v1

    .line 733
    const/16 v4, 0x30

    if-lt v3, v4, :cond_14

    const/16 v4, 0x39

    if-le v3, v4, :cond_17

    :cond_14
    const/16 v4, 0x61

    if-lt v3, v4, :cond_15

    const/16 v4, 0x7a

    if-le v3, v4, :cond_17

    :cond_15
    const/16 v4, 0x41

    if-lt v3, v4, :cond_16

    const/16 v4, 0x5a

    if-le v3, v4, :cond_17

    .line 734
    :cond_16
    const/16 v4, 0x2c

    if-eq v3, v4, :cond_17

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_17

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_17

    .line 736
    add-int/lit8 v0, v2, 0x5

    move v2, v0

    move v0, v1

    .line 730
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 747
    :cond_18
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 749
    const/16 v3, 0x30

    if-lt v2, v3, :cond_19

    const/16 v3, 0x39

    if-le v2, v3, :cond_1c

    :cond_19
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1a

    const/16 v3, 0x7a

    if-le v2, v3, :cond_1c

    :cond_1a
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1c

    :cond_1b
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1c

    .line 750
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1c

    .line 751
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x6

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 753
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    .line 754
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x2

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 755
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x3

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 756
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 757
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 758
    add-int/lit8 v0, v0, 0x5

    .line 746
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_4

    .line 766
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 772
    :cond_1e
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 773
    const/4 v1, -0x1

    move v2, v0

    move v0, v1

    move v1, v8

    .line 775
    :goto_5
    if-lt v1, v7, :cond_20

    .line 809
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v2, v1, :cond_1f

    .line 810
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 812
    :cond_1f
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v1, v0

    move v0, v7

    .line 814
    :goto_6
    if-ge v1, v8, :cond_27

    .line 863
    if-eqz p2, :cond_2e

    .line 864
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 865
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    .line 776
    :cond_20
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v1

    .line 778
    const/16 v4, 0x22

    if-eq v3, v4, :cond_21

    .line 779
    const/16 v4, 0x2f

    if-eq v3, v4, :cond_21

    .line 780
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_23

    .line 782
    :cond_21
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 775
    :cond_22
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 786
    :cond_23
    const/16 v4, 0x8

    if-eq v3, v4, :cond_24

    .line 787
    const/16 v4, 0xc

    if-eq v3, v4, :cond_24

    .line 788
    const/16 v4, 0xa

    if-eq v3, v4, :cond_24

    .line 789
    const/16 v4, 0xd

    if-eq v3, v4, :cond_24

    .line 790
    const/16 v4, 0x9

    if-ne v3, v4, :cond_25

    .line 792
    :cond_24
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 793
    goto :goto_7

    .line 796
    :cond_25
    const/16 v4, 0x20

    if-ge v3, v4, :cond_26

    .line 798
    add-int/lit8 v0, v2, 0x5

    move v2, v0

    move v0, v1

    .line 799
    goto :goto_7

    .line 802
    :cond_26
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_22

    .line 804
    add-int/lit8 v0, v2, 0x5

    move v2, v0

    move v0, v1

    goto :goto_7

    .line 815
    :cond_27
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 817
    const/16 v3, 0x8

    if-eq v2, v3, :cond_28

    .line 818
    const/16 v3, 0xc

    if-eq v2, v3, :cond_28

    .line 819
    const/16 v3, 0xa

    if-eq v2, v3, :cond_28

    .line 820
    const/16 v3, 0xd

    if-eq v2, v3, :cond_28

    .line 821
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2a

    .line 822
    :cond_28
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 824
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 825
    add-int/lit8 v0, v0, 0x1

    .line 814
    :cond_29
    :goto_8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_6

    .line 829
    :cond_2a
    const/16 v3, 0x22

    if-eq v2, v3, :cond_2b

    .line 830
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2b

    .line 831
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2c

    .line 832
    :cond_2b
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 834
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    aput-char v2, v3, v4

    .line 835
    add-int/lit8 v0, v0, 0x1

    .line 836
    goto :goto_8

    .line 839
    :cond_2c
    const/16 v3, 0x20

    if-ge v2, v3, :cond_2d

    .line 840
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x6

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 841
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 842
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    .line 843
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x2

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 844
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x3

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 845
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v6, v2, 0x2

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 846
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 847
    add-int/lit8 v0, v0, 0x5

    .line 848
    goto :goto_8

    .line 851
    :cond_2d
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_29

    .line 852
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x6

    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 854
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    .line 855
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x2

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 856
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x3

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 857
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 858
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 859
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_8

    .line 867
    :cond_2e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 873
    :cond_2f
    const/4 v5, 0x0

    .line 874
    const/4 v4, -0x1

    .line 875
    const/4 v2, -0x1

    .line 876
    const/4 v3, 0x0

    .line 877
    if-eqz p3, :cond_31

    move v1, v8

    move v6, v0

    move v0, v2

    .line 878
    :goto_9
    if-lt v1, v7, :cond_32

    .line 924
    if-lez v5, :cond_31

    .line 925
    add-int v1, v6, v5

    .line 926
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_30

    .line 927
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 929
    :cond_30
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 931
    const/4 v1, 0x1

    if-ne v5, v1, :cond_38

    .line 932
    const/16 v0, 0x2028

    if-ne v3, v0, :cond_36

    .line 933
    add-int/lit8 v0, v4, 0x1

    .line 934
    add-int/lit8 v1, v4, 0x6

    .line 935
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 936
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    .line 938
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 939
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 940
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 941
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 942
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x38

    aput-char v2, v0, v1

    .line 1007
    :cond_31
    :goto_a
    if-eqz p2, :cond_3e

    .line 1008
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 1009
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    .line 879
    :cond_32
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 881
    const/16 v9, 0x2028

    if-ne v2, v9, :cond_33

    .line 882
    add-int/lit8 v3, v5, 0x1

    .line 885
    add-int/lit8 v4, v6, 0x4

    .line 887
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3f

    move v0, v2

    move v5, v4

    move v4, v3

    move v2, v1

    move v3, v1

    .line 878
    :goto_b
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    goto/16 :goto_9

    .line 893
    :cond_33
    const/16 v9, 0x5d

    if-lt v2, v9, :cond_35

    .line 894
    const/16 v9, 0x7f

    if-lt v2, v9, :cond_41

    const/16 v9, 0xa0

    if-gt v2, v9, :cond_41

    .line 895
    const/4 v3, -0x1

    if-ne v0, v3, :cond_34

    move v0, v1

    .line 899
    :cond_34
    add-int/lit8 v3, v5, 0x1

    .line 902
    add-int/lit8 v4, v6, 0x4

    move v5, v4

    move v4, v3

    move v3, v1

    move v10, v0

    move v0, v2

    move v2, v10

    .line 904
    goto :goto_b

    .line 907
    :cond_35
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 908
    add-int/lit8 v3, v5, 0x1

    .line 912
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v4

    if-ge v2, v4, :cond_40

    .line 913
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_40

    .line 915
    add-int/lit8 v6, v6, 0x4

    move v4, v6

    .line 918
    :goto_c
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3f

    move v0, v2

    move v5, v4

    move v4, v3

    move v2, v1

    move v3, v1

    .line 919
    goto :goto_b

    .line 945
    :cond_36
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v0, v0

    if-ge v3, v0, :cond_37

    .line 946
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v0, v0, v3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_37

    .line 947
    add-int/lit8 v0, v4, 0x1

    .line 948
    add-int/lit8 v1, v4, 0x6

    .line 949
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 950
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 953
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x5c

    aput-char v2, v0, v4

    .line 954
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x75

    aput-char v4, v0, v1

    .line 955
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 956
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v1

    .line 957
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 958
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v1, 0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto/16 :goto_a

    .line 960
    :cond_37
    add-int/lit8 v0, v4, 0x1

    .line 961
    add-int/lit8 v1, v4, 0x2

    .line 962
    sub-int v2, v7, v4

    add-int/lit8 v2, v2, -0x1

    .line 963
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 964
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v1, 0x5c

    aput-char v1, v0, v4

    .line 965
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v4, 0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto/16 :goto_a

    .line 968
    :cond_38
    const/4 v1, 0x1

    if-le v5, v1, :cond_31

    .line 969
    sub-int v1, v0, v8

    move v2, v7

    move v10, v0

    move v0, v1

    move v1, v10

    .line 971
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_31

    .line 972
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 974
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v3, v3

    if-ge v4, v3, :cond_39

    .line 975
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_3a

    .line 976
    :cond_39
    const/16 v3, 0x2f

    if-ne v4, v3, :cond_3c

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 977
    :cond_3a
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v1

    .line 978
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3b

    .line 979
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v1, v5

    .line 980
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 981
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 982
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 983
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 984
    add-int/lit8 v2, v2, 0x5

    .line 971
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 986
    :cond_3b
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 987
    add-int/lit8 v2, v2, 0x1

    .line 989
    goto :goto_e

    .line 990
    :cond_3c
    const/16 v3, 0x2028

    if-ne v4, v3, :cond_3d

    .line 991
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x5c

    aput-char v6, v3, v1

    .line 992
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0x75

    aput-char v6, v1, v5

    .line 993
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 994
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 995
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 996
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 997
    add-int/lit8 v2, v2, 0x5

    .line 998
    goto :goto_e

    .line 999
    :cond_3d
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v4, v5, v1

    move v1, v3

    goto :goto_e

    .line 1011
    :cond_3e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_3f
    move v5, v4

    move v4, v3

    move v3, v1

    move v10, v0

    move v0, v2

    move v2, v10

    goto/16 :goto_b

    :cond_40
    move v4, v6

    goto/16 :goto_c

    :cond_41
    move v2, v0

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_b
.end method

.method private writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14
    .parameter

    .prologue
    const/16 v12, 0x2f

    const/16 v11, 0xd

    const/4 v0, 0x0

    const/16 v10, 0x5c

    const/16 v9, 0x27

    .line 1554
    if-nez p1, :cond_1

    .line 1555
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, 0x4

    .line 1556
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 1557
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1559
    :cond_0
    const-string v2, "null"

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v2, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1560
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1634
    :goto_0
    return-void

    .line 1564
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1565
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v6, v2, 0x2

    .line 1566
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v6, v2, :cond_6

    .line 1567
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_5

    .line 1568
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1569
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1579
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 1570
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1571
    if-le v1, v11, :cond_3

    if-eq v1, v10, :cond_3

    if-eq v1, v9, :cond_3

    .line 1572
    if-ne v1, v12, :cond_4

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1573
    :cond_3
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1574
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1569
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1576
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_2

    .line 1582
    :cond_5
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1585
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v2, 0x1

    .line 1586
    add-int v7, v5, v1

    .line 1588
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v2, v3

    .line 1589
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1590
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1593
    const/4 v2, -0x1

    move v3, v5

    move v4, v0

    .line 1595
    :goto_3
    if-lt v3, v7, :cond_9

    .line 1605
    add-int v1, v6, v4

    .line 1606
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_7

    .line 1607
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1609
    :cond_7
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1611
    const/4 v1, 0x1

    if-ne v4, v1, :cond_b

    .line 1612
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v2, 0x2

    sub-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1613
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v2

    .line 1614
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    .line 1633
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char v9, v0, v1

    goto/16 :goto_0

    .line 1596
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v1, v1, v3

    .line 1597
    if-le v1, v11, :cond_a

    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_a

    .line 1598
    if-ne v1, v12, :cond_e

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1599
    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    move v0, v1

    move v1, v3

    .line 1595
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    goto :goto_3

    .line 1615
    :cond_b
    const/4 v1, 0x1

    if-le v4, v1, :cond_8

    .line 1616
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v8, v7, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1617
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v2

    .line 1618
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    .line 1619
    add-int/lit8 v1, v7, 0x1

    .line 1620
    add-int/lit8 v0, v2, -0x2

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_5
    if-lt v1, v5, :cond_8

    .line 1621
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 1623
    if-le v2, v11, :cond_c

    if-eq v2, v10, :cond_c

    if-eq v2, v9, :cond_c

    .line 1624
    if-ne v2, v12, :cond_d

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1625
    :cond_c
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1626
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v3, v1

    .line 1627
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v6, v2

    aput-char v2, v3, v4

    .line 1628
    add-int/lit8 v0, v0, 0x1

    .line 1620
    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_e
    move v1, v2

    move v2, v4

    goto :goto_4
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 281
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .parameter

    .prologue
    .line 268
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 269
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 270
    return-object p0

    .line 268
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 276
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_1

    .line 335
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 338
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 339
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p2, :cond_2

    .line 117
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 119
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_1

    .line 120
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_0

    .line 122
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 125
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0
.end method

.method public expandCapacity(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 206
    if-ge v0, p1, :cond_0

    .line 209
    :goto_0
    new-array v0, p1, [C

    .line 210
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 212
    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public flush()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1864
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 1875
    :goto_0
    return-void

    .line 1869
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1870
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 1871
    :catch_0
    move-exception v0

    .line 1872
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 286
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 4
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    if-nez p1, :cond_1

    .line 309
    const-string p1, "UTF-8"

    .line 312
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;->encode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v0, [C

    .line 299
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(C)V
    .locals 3
    .parameter

    .prologue
    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 152
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 160
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v1, v2

    .line 161
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 162
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 138
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 146
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 147
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 148
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 223
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    move v4, v0

    move v0, p3

    move p3, v4

    .line 238
    :goto_0
    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 239
    iput p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 240
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v1

    .line 229
    add-int v1, p2, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 230
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 232
    sub-int/2addr p3, v0

    .line 233
    add-int/2addr p2, v0

    .line 234
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    .line 227
    if-gt p3, v0, :cond_0

    move v0, p3

    .line 235
    goto :goto_0

    :cond_1
    move v4, v0

    move v0, p3

    move p3, v4

    goto :goto_0
.end method

.method public write(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1117
    if-eqz p1, :cond_0

    .line 1118
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1122
    :goto_0
    return-void

    .line 1120
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    if-ltz p2, :cond_0

    .line 173
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 174
    if-ltz p3, :cond_0

    .line 175
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 176
    add-int v0, p2, p3

    if-gez v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 178
    :cond_1
    if-nez p3, :cond_2

    .line 201
    :goto_0
    return-void

    .line 182
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 183
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 184
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_3

    .line 185
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    move v3, v0

    move v0, p3

    move p3, v3

    .line 198
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iput p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v1

    .line 189
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 192
    sub-int/2addr p3, v0

    .line 193
    add-int/2addr p2, v0

    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    .line 187
    if-gt p3, v0, :cond_3

    move v0, p3

    .line 195
    goto :goto_1

    :cond_4
    move v3, v0

    move v0, p3

    move p3, v3

    goto :goto_1
.end method

.method public writeBooleanAndChar(ZC)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x5d

    const/16 v0, 0x2c

    .line 475
    if-eqz p1, :cond_2

    .line 476
    if-ne p2, v0, :cond_0

    .line 477
    const-string v0, "true,"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 478
    :cond_0
    if-ne p2, v1, :cond_1

    .line 479
    const-string v0, "true]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_1
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 485
    :cond_2
    if-ne p2, v0, :cond_3

    .line 486
    const-string v0, "false,"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_3
    if-ne p2, v1, :cond_4

    .line 488
    const-string v0, "false]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_4
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0
.end method

.method public writeByteArray([B)V
    .locals 14
    .parameter

    .prologue
    const/16 v1, 0x3d

    const/4 v13, 0x2

    const/4 v0, 0x0

    .line 376
    array-length v5, p1

    .line 377
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    .line 378
    if-eqz v3, :cond_0

    const/16 v2, 0x27

    move v4, v2

    .line 380
    :goto_0
    if-nez v5, :cond_2

    .line 381
    if-eqz v3, :cond_1

    const-string v0, "\'\'"

    .line 382
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 454
    :goto_2
    return-void

    .line 378
    :cond_0
    const/16 v2, 0x22

    move v4, v2

    goto :goto_0

    .line 381
    :cond_1
    const-string v0, "\"\""

    goto :goto_1

    .line 386
    :cond_2
    sget-object v6, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    .line 388
    div-int/lit8 v2, v5, 0x3

    mul-int/lit8 v7, v2, 0x3

    .line 389
    add-int/lit8 v2, v5, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    .line 391
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 392
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v8

    add-int/lit8 v8, v2, 0x2

    .line 393
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v8, v2, :cond_8

    .line 394
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_7

    .line 395
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    move v2, v0

    .line 397
    :goto_3
    if-lt v2, v7, :cond_5

    .line 409
    sub-int v2, v5, v7

    .line 410
    if-lez v2, :cond_4

    .line 412
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v2, v13, :cond_3

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_3
    or-int/2addr v0, v3

    .line 415
    shr-int/lit8 v3, v0, 0xc

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 416
    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 417
    if-ne v2, v13, :cond_6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 418
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 421
    :cond_4
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_2

    .line 399
    :cond_5
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v2

    add-int/lit8 v2, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    .line 402
    ushr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 403
    ushr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 404
    ushr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 405
    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_3

    :cond_6
    move v0, v1

    .line 417
    goto :goto_4

    .line 424
    :cond_7
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 426
    :cond_8
    iput v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 427
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    aput-char v4, v9, v3

    move v3, v0

    .line 430
    :goto_5
    if-lt v3, v7, :cond_b

    .line 442
    sub-int v2, v5, v7

    .line 443
    if-lez v2, :cond_a

    .line 445
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v2, v13, :cond_9

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_9
    or-int/2addr v0, v3

    .line 448
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x5

    shr-int/lit8 v7, v0, 0xc

    aget-char v7, v6, v7

    aput-char v7, v3, v5

    .line 449
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x4

    ushr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    aput-char v7, v3, v5

    .line 450
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x3

    if-ne v2, v13, :cond_c

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    :goto_6
    aput-char v0, v3, v5

    .line 451
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v8, -0x2

    aput-char v1, v0, v2

    .line 453
    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v8, -0x1

    aput-char v4, v0, v1

    goto/16 :goto_2

    .line 432
    :cond_b
    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v3

    add-int/lit8 v3, v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 435
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v2, 0x1

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v10, v2

    .line 436
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v11, 0x1

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v2, v11

    .line 437
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    aput-char v12, v2, v10

    .line 438
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v11, 0x1

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v6, v9

    aput-char v9, v10, v11

    goto/16 :goto_5

    :cond_c
    move v0, v1

    .line 450
    goto :goto_6
.end method

.method public writeCharacterAndChar(CC)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 499
    return-void
.end method

.method public writeDoubleAndChar(DC)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 467
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 472
    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;C)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;C)V"
        }
    .end annotation

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 504
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 519
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumValue(Ljava/lang/String;C)V

    goto :goto_0

    .line 513
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumValue(Ljava/lang/String;C)V

    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeIntAndChar(IC)V

    goto :goto_0
.end method

.method public writeFieldEmptyList(CLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1022
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1023
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1024
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1637
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 1638
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x3a

    .line 1641
    if-nez p1, :cond_0

    .line 1642
    const-string v0, "null:"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1660
    :goto_0
    return-void

    .line 1646
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1647
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 1651
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    .line 1654
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1655
    invoke-direct {p0, p1, v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0

    .line 1657
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldNull(CLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1017
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1019
    return-void
.end method

.method public writeFieldNullBoolean(CLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1038
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1039
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1040
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullList(CLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1049
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1050
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullNumber(CLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1058
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1059
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1060
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1065
    :goto_0
    return-void

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullString(CLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1028
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1029
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1030
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1035
    :goto_0
    return-void

    .line 1033
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1068
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1069
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1070
    if-nez p3, :cond_0

    .line 1071
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1075
    :goto_0
    return-void

    .line 1073
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1231
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1232
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1233
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    .line 1234
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1246
    :goto_0
    return-void

    .line 1235
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1237
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1238
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1240
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 1241
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1242
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1244
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1213
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1214
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1215
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    .line 1216
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1228
    :goto_0
    return-void

    .line 1217
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1219
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1220
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1222
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 1223
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1224
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1226
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1125
    const/high16 v0, -0x8000

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1126
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;I)V

    .line 1159
    :goto_0
    return-void

    .line 1130
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    move v1, v0

    .line 1132
    :goto_1
    if-gez p3, :cond_3

    neg-int v0, p3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1134
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1135
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 1136
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v0, v3, :cond_5

    .line 1137
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_4

    .line 1138
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;I)V

    goto :goto_0

    .line 1130
    :cond_2
    const/16 v0, 0x22

    move v1, v0

    goto :goto_1

    .line 1132
    :cond_3
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    goto :goto_2

    .line 1141
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1144
    :cond_5
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1145
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1147
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v0, v3

    .line 1149
    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    .line 1151
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v1, v4, v5

    .line 1153
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v4, v2, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1155
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v3

    .line 1156
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    .line 1158
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1168
    const-wide/high16 v0, -0x8000

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;J)V

    .line 1204
    :goto_0
    return-void

    .line 1173
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    move v1, v0

    .line 1175
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_3

    neg-long v2, p3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1177
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1178
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 1179
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v0, v3, :cond_5

    .line 1180
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_4

    .line 1181
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1182
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_0

    .line 1173
    :cond_2
    const/16 v0, 0x22

    move v1, v0

    goto :goto_1

    .line 1175
    :cond_3
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_2

    .line 1186
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1189
    :cond_5
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1190
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1192
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v0, v3

    .line 1194
    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    .line 1196
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v1, v4, v5

    .line 1198
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v4, v2, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1200
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v3

    .line 1201
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    .line 1203
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1502
    if-nez p3, :cond_0

    .line 1503
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1504
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1516
    :goto_0
    return-void

    .line 1509
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1511
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1512
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1514
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x3a

    const/4 v1, 0x0

    .line 1249
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1250
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1252
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1253
    if-nez p3, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1280
    :goto_0
    return-void

    .line 1256
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1259
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1260
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1261
    invoke-direct {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1262
    invoke-direct {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1263
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1264
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1265
    invoke-direct {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1266
    invoke-direct {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1268
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1272
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1273
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1274
    if-nez p3, :cond_5

    .line 1275
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1277
    :cond_5
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1527
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1528
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1529
    if-nez p3, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1534
    :goto_0
    return-void

    .line 1532
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x5

    const/4 v7, 0x0

    .line 1079
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    move v2, v0

    .line 1081
    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x4

    .line 1083
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1084
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v0, v4

    .line 1085
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-le v0, v4, :cond_3

    .line 1086
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v4, :cond_2

    .line 1087
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1088
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1089
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1090
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1114
    :goto_2
    return-void

    .line 1079
    :cond_0
    const/16 v0, 0x22

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1081
    goto :goto_1

    .line 1093
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1096
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1097
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1099
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v0, v4

    .line 1101
    add-int v0, v4, v3

    add-int/lit8 v0, v0, 0x1

    .line 1103
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    aput-char v2, v5, v6

    .line 1105
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p2, v7, v3, v5, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1107
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v0, 0x1

    aput-char v2, v3, v4

    .line 1109
    if-eqz p3, :cond_4

    .line 1110
    const-string v2, ":true"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    invoke-static {v2, v7, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 1112
    :cond_4
    const-string v1, ":false"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x6

    invoke-static {v1, v7, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public writeFieldValue1(CLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1162
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1163
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1165
    return-void
.end method

.method public writeFieldValue1(CLjava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1207
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1208
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1210
    return-void
.end method

.method public writeFloatAndChar(FC)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 457
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 463
    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .parameter

    .prologue
    .line 351
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    .line 352
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 356
    :cond_0
    if-gez p1, :cond_2

    neg-int v0, p1

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 358
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 359
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_3

    .line 361
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 372
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    goto :goto_1

    .line 363
    :cond_3
    new-array v1, v0, [C

    .line 364
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 365
    const/4 v0, 0x0

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_0
.end method

.method public writeIntAndChar(IC)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 537
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    .line 538
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 561
    :goto_0
    return-void

    .line 543
    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 545
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    .line 546
    add-int/lit8 v1, v0, 0x1

    .line 548
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 549
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_2

    .line 550
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 551
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 543
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    goto :goto_1

    .line 554
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 557
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 558
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p2, v2, v0

    .line 560
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 3
    .parameter

    .prologue
    .line 591
    const-wide/high16 v0, -0x8000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 592
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 596
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    neg-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 598
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 599
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_3

    .line 601
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 612
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 596
    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1

    .line 603
    :cond_3
    new-array v1, v0, [C

    .line 604
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 605
    const/4 v0, 0x0

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_0
.end method

.method public writeLongAndChar(JC)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 564
    const-wide/high16 v0, -0x8000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 565
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 588
    :goto_0
    return-void

    .line 570
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    neg-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 572
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v1

    .line 573
    add-int/lit8 v1, v0, 0x1

    .line 575
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 576
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_2

    .line 577
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 578
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 570
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1

    .line 581
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 584
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 585
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p3, v2, v0

    .line 587
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1

    .prologue
    .line 616
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1546
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1551
    :goto_0
    return-void

    .line 1549
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1537
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1543
    :goto_0
    return-void

    .line 1541
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 257
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 264
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 265
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 253
    return-void
.end method

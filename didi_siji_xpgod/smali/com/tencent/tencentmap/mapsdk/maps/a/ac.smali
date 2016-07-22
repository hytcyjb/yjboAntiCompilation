.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ac;
.super Ljava/lang/Object;
.source "JceOutputStream.java"


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a:Ljava/lang/String;

    .line 22
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    .line 23
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;-><init>()V

    .line 28
    return-void
.end method

.method private a(DI)V
    .locals 1
    .parameter "n"
    .parameter "tag"

    .prologue
    .line 126
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 127
    const/4 v0, 0x5

    invoke-direct {p0, v0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 128
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 129
    return-void
.end method

.method private a(FI)V
    .locals 1
    .parameter "n"
    .parameter "tag"

    .prologue
    .line 119
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 120
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 121
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 122
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter "len"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    .line 45
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    .local v0, bs2:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 47
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    .line 48
    .end local v0           #bs2:Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;I)V
    .locals 5
    .parameter "o"
    .parameter "tag"

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 333
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 334
    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(BI)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 336
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(ZI)V

    goto :goto_0

    .line 337
    .restart local p1
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 338
    check-cast p1, Ljava/lang/Short;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(SI)V

    goto :goto_0

    .line 339
    .restart local p1
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 340
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    goto :goto_0

    .line 341
    .restart local p1
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 342
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(JI)V

    goto :goto_0

    .line 343
    .restart local p1
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 344
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(FI)V

    goto :goto_0

    .line 345
    .restart local p1
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 346
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(DI)V

    goto :goto_0

    .line 347
    .restart local p1
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 348
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 349
    .restart local p1
    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 350
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    invoke-direct {p0, v2, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    if-nez p1, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/Object;I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_1

    .line 351
    .restart local p1
    :cond_a
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 352
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 353
    .restart local p1
    :cond_b
    instance-of v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;

    if-eqz v0, :cond_c

    .line 354
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;I)V

    goto/16 :goto_0

    .line 355
    .restart local p1
    :cond_c
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    .line 356
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a([BI)V

    goto/16 :goto_0

    .line 357
    .restart local p1
    :cond_d
    instance-of v0, p1, [Z

    if-eqz v0, :cond_e

    .line 358
    check-cast p1, [Z

    .end local p1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    invoke-direct {p0, v3, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_0

    aget-boolean v3, p1, v0

    invoke-direct {p0, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 359
    .restart local p1
    :cond_e
    instance-of v0, p1, [S

    if-eqz v0, :cond_f

    .line 360
    check-cast p1, [S

    .end local p1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    invoke-direct {p0, v3, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_4
    if-ge v0, v2, :cond_0

    aget-short v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(SI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 361
    .restart local p1
    :cond_f
    instance-of v0, p1, [I

    if-eqz v0, :cond_10

    .line 362
    check-cast p1, [I

    .end local p1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    invoke-direct {p0, v3, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_5
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 363
    .restart local p1
    :cond_10
    instance-of v0, p1, [J

    if-eqz v0, :cond_11

    .line 364
    check-cast p1, [J

    .end local p1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    invoke-direct {p0, v3, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_0

    aget-wide v3, p1, v0

    invoke-virtual {p0, v3, v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 365
    .restart local p1
    :cond_11
    instance-of v0, p1, [F

    if-eqz v0, :cond_12

    .line 366
    check-cast p1, [F

    .end local p1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    invoke-direct {p0, v3, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_7
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    invoke-direct {p0, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 367
    .restart local p1
    :cond_12
    instance-of v0, p1, [D

    if-eqz v0, :cond_13

    .line 368
    check-cast p1, [D

    .end local p1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    invoke-direct {p0, v3, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_8
    if-ge v0, v2, :cond_0

    aget-wide v3, p1, v0

    invoke-direct {p0, v3, v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(DI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 369
    .restart local p1
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 370
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    invoke-direct {p0, v3, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_9
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-direct {p0, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 371
    .restart local p1
    :cond_14
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_15

    .line 372
    check-cast p1, Ljava/util/Collection;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 374
    .restart local p1
    :cond_15
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write object error: unsupport type. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/aa;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(ZI)V
    .locals 2
    .parameter "b"
    .parameter "tag"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v0, v1

    .line 70
    .local v0, by:B
    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(BI)V

    .line 71
    return-void

    .line 69
    .end local v0           #by:B
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(BI)V
    .locals 4
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 55
    const/16 v1, 0xf

    if-ge p2, v1, :cond_0

    .line 56
    shl-int/lit8 v1, p2, 0x4

    or-int/2addr v1, p1

    int-to-byte v0, v1

    .line 57
    .local v0, b:B
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    :goto_0
    return-void

    .line 58
    .end local v0           #b:B
    :cond_0
    const/16 v1, 0x100

    if-ge p2, v1, :cond_1

    .line 59
    or-int/lit16 v1, p1, 0xf0

    int-to-byte v0, v1

    .line 60
    .restart local v0       #b:B
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    int-to-byte v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 63
    .end local v0           #b:B
    :cond_1
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tag is too large: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/aa;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .parameter "se"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a:Ljava/lang/String;

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public final a(BI)V
    .locals 1
    .parameter "b"
    .parameter "tag"

    .prologue
    .line 75
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 76
    if-nez p1, :cond_0

    .line 77
    const/16 v0, 0xc

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 80
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1
    .parameter "n"
    .parameter "tag"

    .prologue
    .line 97
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 98
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    .line 99
    int-to-short v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(SI)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 102
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final a(JI)V
    .locals 2
    .parameter "n"
    .parameter "tag"

    .prologue
    .line 108
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 109
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 110
    long-to-int v0, p1

    invoke-virtual {p0, v0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 113
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ad;I)V
    .locals 2
    .parameter "o"
    .parameter "tag"

    .prologue
    const/4 v1, 0x2

    .line 289
    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 290
    const/16 v0, 0xa

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 291
    invoke-virtual {p1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ad;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ac;)V

    .line 292
    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 293
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 294
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3
    .parameter "s"
    .parameter "tag"

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    .local v0, by:[B
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 175
    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 176
    const/4 v1, 0x7

    invoke-direct {p0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 177
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    :goto_1
    return-void

    .line 172
    .end local v0           #by:[B
    :catch_0
    move-exception v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #by:[B
    goto :goto_0

    .line 180
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 181
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public final a(Ljava/util/Collection;I)V
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p1, l:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v3, 0x0

    .line 278
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 279
    const/16 v2, 0x9

    invoke-direct {p0, v2, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 280
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 281
    if-eqz p1, :cond_1

    .line 282
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, e:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(Ljava/lang/Object;I)V

    goto :goto_1

    .line 280
    .end local v0           #e:Ljava/lang/Object;,"TT;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method

.method public final a(SI)V
    .locals 1
    .parameter "n"
    .parameter "tag"

    .prologue
    .line 86
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 87
    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 88
    int-to-byte v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(BI)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 91
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final a([BI)V
    .locals 2
    .parameter "l"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 210
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(I)V

    .line 211
    const/16 v0, 0xd

    invoke-direct {p0, v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 212
    invoke-direct {p0, v1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b(BI)V

    .line 213
    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->a(II)V

    .line 214
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 215
    return-void
.end method

.method public final a()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v0, v1, [B

    .line 37
    .local v0, newBytes:[B
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-object v0
.end method

.class public final Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 652
    const/4 v0, -0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 658
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1260
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1263
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1264
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    .line 1265
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1271
    :goto_0
    return-object v0

    .line 1266
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1267
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1268
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1271
    :cond_2
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1403
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1404
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1408
    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 1418
    :cond_1
    :goto_1
    return v1

    .line 1414
    :cond_2
    const-string v4, " #%/:?@[\\]"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 1415
    goto :goto_1

    .line 1403
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1348
    move v0, p1

    move v4, p4

    .line 1350
    :goto_0
    if-ge v0, p2, :cond_8

    .line 1351
    array-length v2, p3

    if-ne v4, v2, :cond_0

    move v0, v1

    .line 1377
    :goto_1
    return v0

    .line 1354
    :cond_0
    if-eq v4, p4, :cond_2

    .line 1355
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    .line 1356
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v2, v1

    move v3, v0

    .line 1362
    :goto_2
    if-ge v3, p2, :cond_3

    .line 1363
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1364
    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    .line 1369
    :cond_3
    sub-int v0, v3, v0

    .line 1370
    if-nez v0, :cond_7

    move v0, v1

    goto :goto_1

    .line 1365
    :cond_4
    if-nez v2, :cond_5

    if-eq v0, v3, :cond_5

    move v0, v1

    goto :goto_1

    .line 1366
    :cond_5
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    .line 1367
    const/16 v5, 0xff

    if-le v2, v5, :cond_6

    move v0, v1

    goto :goto_1

    .line 1362
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1373
    :cond_7
    add-int/lit8 v0, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    move v4, v0

    move v0, v3

    .line 1374
    goto :goto_0

    .line 1376
    :cond_8
    add-int/lit8 v0, p4, 0x4

    if-eq v4, v0, :cond_9

    move v0, v1

    goto :goto_1

    .line 1377
    :cond_9
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1276
    const/16 v0, 0x10

    new-array v8, v0, [B

    move v0, p1

    move v4, v7

    move v1, v7

    move v2, v5

    .line 1281
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1282
    array-length v6, v8

    if-ne v2, v6, :cond_0

    move-object v0, v3

    .line 1339
    :goto_1
    return-object v0

    .line 1285
    :cond_0
    add-int/lit8 v6, v0, 0x2

    if-gt v6, p2, :cond_3

    const-string v6, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v0, v6, v5, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1287
    if-eq v1, v7, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 1288
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 1289
    add-int/lit8 v1, v2, 0x2

    .line 1291
    if-ne v0, p2, :cond_e

    move v2, v1

    .line 1332
    :cond_2
    :goto_2
    array-length v0, v8

    if-eq v2, v0, :cond_d

    .line 1333
    if-ne v1, v7, :cond_c

    move-object v0, v3

    goto :goto_1

    .line 1292
    :cond_3
    if-eqz v2, :cond_4

    .line 1294
    const-string v6, ":"

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1295
    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_3
    move v4, v5

    move v6, v0

    .line 1309
    :goto_4
    if-ge v6, p2, :cond_5

    .line 1310
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1311
    invoke-static {v9}, Lcom/avos/avoscloud/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1312
    if-ne v9, v7, :cond_a

    .line 1315
    :cond_5
    sub-int v9, v6, v0

    .line 1316
    if-eqz v9, :cond_6

    const/4 v10, 0x4

    if-le v9, v10, :cond_b

    :cond_6
    move-object v0, v3

    goto :goto_1

    .line 1296
    :cond_7
    const-string v6, "."

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1298
    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v4, p2, v8, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_1

    .line 1299
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 1300
    goto :goto_2

    :cond_9
    move-object v0, v3

    .line 1302
    goto :goto_1

    .line 1313
    :cond_a
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v9

    .line 1309
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1319
    :cond_b
    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    .line 1320
    add-int/lit8 v2, v9, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    move v4, v0

    move v0, v6

    .line 1321
    goto :goto_0

    .line 1334
    :cond_c
    array-length v0, v8

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    sub-int v3, v2, v1

    invoke-static {v8, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1335
    array-length v0, v8

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v8, v1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1339
    :cond_d
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    move v2, v1

    goto :goto_3
.end method

.method private static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1388
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-object v0

    .line 1392
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1396
    goto :goto_0

    .line 1397
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x3a

    const/4 v1, 0x0

    .line 1423
    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 1425
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    move v5, v0

    .line 1427
    :goto_1
    if-ge v5, v7, :cond_0

    aget-byte v4, p0, v5

    if-nez v4, :cond_0

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    .line 1428
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_1

    .line 1430
    :cond_0
    sub-int v4, v5, v0

    .line 1431
    if-le v4, v2, :cond_1

    move v2, v4

    move v3, v0

    .line 1425
    :cond_1
    add-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 1438
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 1439
    :cond_3
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_6

    .line 1440
    if-ne v1, v3, :cond_4

    .line 1441
    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 1442
    add-int/2addr v1, v2

    .line 1443
    if-ne v1, v7, :cond_3

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_2

    .line 1445
    :cond_4
    if-lez v1, :cond_5

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 1446
    :cond_5
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 1447
    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/avos/avoscloud/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/Buffer;

    .line 1448
    add-int/lit8 v1, v1, 0x2

    .line 1449
    goto :goto_2

    .line 1451
    :cond_6
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1125
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1129
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    .line 1457
    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1458
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1459
    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 1462
    :goto_0
    return v0

    :cond_0
    move v0, v7

    .line 1460
    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    move v0, v7

    .line 1462
    goto :goto_0
.end method

.method private pop()V
    .locals 3

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1149
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1243
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1244
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1243
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1246
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1247
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1254
    :sswitch_1
    return v0

    .line 1244
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1105
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1107
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->pop()V

    goto :goto_0

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1119
    :goto_1
    if-eqz p4, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1117
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 843
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 844
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 846
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 847
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 853
    :cond_0
    return-void

    .line 843
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1077
    if-ne p2, p3, :cond_1

    .line 1100
    :cond_0
    return-void

    .line 1081
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1082
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_4

    .line 1084
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1085
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    add-int/lit8 p2, p2, 0x1

    :goto_0
    move v2, p2

    .line 1093
    :goto_1
    if-ge v2, p3, :cond_0

    .line 1094
    const-string v0, "/\\"

    #calls: Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {p1, v2, p3, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1095
    if-ge v3, p3, :cond_5

    move v4, v5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 1096
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1098
    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    move v2, v3

    .line 1099
    goto :goto_1

    .line 1089
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1095
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, -0x1

    .line 1201
    sub-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return v0

    .line 1203
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1204
    if-lt v1, v6, :cond_2

    if-le v1, v7, :cond_3

    :cond_2
    if-lt v1, v4, :cond_0

    if-gt v1, v5, :cond_0

    .line 1206
    :cond_3
    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v1, p2, :cond_0

    .line 1207
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1209
    if-lt v2, v6, :cond_4

    if-le v2, v7, :cond_7

    :cond_4
    if-lt v2, v4, :cond_5

    if-le v2, v5, :cond_7

    :cond_5
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6

    const/16 v3, 0x39

    if-le v2, v3, :cond_7

    :cond_6
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_8

    .line 1206
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1216
    :cond_8
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1217
    goto :goto_0
.end method

.method private skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1161
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_0

    .line 1162
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move p3, v0

    .line 1173
    :cond_0
    return p3

    .line 1161
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1162
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1181
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1182
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1190
    add-int/lit8 p2, v0, 0x1

    .line 1193
    :cond_0
    return p2

    .line 1181
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1182
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1229
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1230
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1231
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 1232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1233
    add-int/lit8 p1, p1, 0x1

    .line 1237
    goto :goto_0

    .line 1238
    :cond_1
    return v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 727
    if-nez p1, :cond_0

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 731
    return-object p0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 804
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    invoke-static {p1, v1, v2, v2, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v0, " \"\'<>#&="

    invoke-static {p2, v0, v2, v2, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    return-object p0

    .line 808
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPathSegment(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 721
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 723
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 792
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    invoke-static {p1, v1, v3, v2, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v0, " \"\'<>#&="

    invoke-static {p2, v0, v3, v2, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    return-object p0

    .line 796
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public build()Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/okhttp/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;-><init>(Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;Lcom/avos/avoscloud/okhttp/HttpUrl$1;)V

    return-object v0
.end method

.method effectivePort()I
    .locals 2

    .prologue
    .line 717
    iget v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public encodedFragment(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 863
    if-eqz p1, :cond_0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v2, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 866
    return-object p0

    .line 863
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodedPassword(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 693
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    const-string v0, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method public encodedPath(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    .line 767
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 772
    return-object p0
.end method

.method public encodedQuery(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 783
    if-eqz p1, :cond_0

    const-string v0, " \"\'<>#"

    invoke-static {p1, v0, v1, v1, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 787
    return-object p0

    .line 783
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodedUsername(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 681
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    const-string v0, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 683
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 856
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-static {p1, v0, v1, v1, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 859
    return-object p0

    .line 856
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public host(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    .line 703
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 705
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_1
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 707
    return-object p0
.end method

.method parse(Lcom/avos/avoscloud/okhttp/HttpUrl;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 954
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v2

    .line 955
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p2, v2, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v10

    .line 958
    invoke-static {p2, v2, v10}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v0

    .line 959
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 960
    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    const-string v0, "https"

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 962
    const-string v0, "https:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 976
    :goto_0
    const/4 v1, 0x0

    .line 977
    const/4 v0, 0x0

    .line 978
    invoke-static {p2, v2, v10}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v3

    .line 979
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    if-eqz p1, :cond_0

    #getter for: Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$100(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 989
    :cond_0
    add-int/2addr v2, v3

    move v7, v0

    move v8, v1

    move v1, v2

    .line 992
    :goto_1
    const-string v0, "@/\\?#"

    #calls: Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {p2, v1, v10, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    .line 993
    if-eq v9, v10, :cond_5

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 996
    :goto_2
    sparse-switch v0, :sswitch_data_0

    move v0, v7

    move v2, v1

    move v1, v8

    :goto_3
    move v7, v0

    move v8, v1

    move v1, v2

    .line 1039
    goto :goto_1

    .line 963
    :cond_1
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    const-string v0, "http"

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 965
    const-string v0, "http:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 967
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    .line 1072
    :goto_4
    return-object v0

    .line 969
    :cond_3
    if-eqz p1, :cond_4

    .line 970
    #getter for: Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$100(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 972
    :cond_4
    sget-object v0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    goto :goto_4

    .line 993
    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    .line 999
    :sswitch_0
    if-nez v7, :cond_8

    .line 1000
    const-string v0, ":"

    #calls: Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {p2, v1, v9, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1002
    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1004
    if-eqz v8, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1007
    if-eq v2, v9, :cond_7

    .line 1008
    const/4 v7, 0x1

    .line 1009
    add-int/lit8 v1, v2, 0x1

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move v2, v9

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1012
    :cond_7
    const/4 v8, 0x1

    .line 1017
    :goto_5
    add-int/lit8 v2, v9, 0x1

    move v0, v7

    move v1, v8

    .line 1018
    goto :goto_3

    .line 1014
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move v2, v9

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_5

    .line 1026
    :sswitch_1
    invoke-static {p2, v1, v9}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v0

    .line 1027
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v9, :cond_9

    .line 1028
    invoke-static {p2, v1, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1029
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v9}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    .line 1030
    iget v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    .line 1032
    :cond_9
    invoke-static {p2, v1, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    .line 1035
    :cond_a
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_b

    sget-object v0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    :cond_b
    move v2, v9

    .line 1054
    :cond_c
    :goto_6
    const-string v0, "?#"

    #calls: Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {p2, v2, v10, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1055
    invoke-direct {p0, p2, v2, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1059
    if-ge v0, v10, :cond_10

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_10

    .line 1060
    const-string v1, "#"

    #calls: Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {p2, v0, v10, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1061
    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1067
    :goto_7
    if-ge v2, v10, :cond_d

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_d

    .line 1068
    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1072
    :cond_d
    sget-object v0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    .line 1042
    :cond_e
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1043
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1044
    #getter for: Lcom/avos/avoscloud/okhttp/HttpUrl;->host:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$300(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1045
    #getter for: Lcom/avos/avoscloud/okhttp/HttpUrl;->port:I
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->access$400(Lcom/avos/avoscloud/okhttp/HttpUrl;)I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    .line 1046
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1047
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1048
    if-eq v2, v10, :cond_f

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_c

    .line 1049
    :cond_f
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    goto :goto_6

    :cond_10
    move v2, v0

    goto :goto_7

    .line 996
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x23 -> :sswitch_1
        0x2f -> :sswitch_1
        0x3f -> :sswitch_1
        0x40 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 687
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    const-string v0, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v1, 0x1

    invoke-static {p1, v0, v2, v2, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 689
    return-object p0
.end method

.method public port(I)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    .line 711
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_1
    iput p1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    .line 713
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 776
    if-eqz p1, :cond_0

    const-string v0, " \"\'<>#"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 779
    return-object p0

    .line 776
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reencodeForUri()Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 874
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    .line 875
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 876
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v5, "[]"

    invoke-static {v0, v5, v6, v2, v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 874
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    .line 881
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 882
    if-eqz v0, :cond_1

    .line 883
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v5, "\\^`{|}"

    invoke-static {v0, v5, v6, v6, v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 880
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const-string v1, " \"#<>\\^`{|}"

    invoke-static {v0, v1, v6, v2, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 892
    :cond_3
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 835
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    .line 839
    :goto_0
    return-object p0

    .line 837
    :cond_1
    const-string v0, " \"\'<>#&="

    invoke-static {p1, v0, v1, v1, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 827
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    .line 831
    :goto_0
    return-object p0

    .line 829
    :cond_1
    const-string v0, " \"\'<>#&="

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePathSegment(I)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 2
    .parameter

    .prologue
    .line 759
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 760
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    const-string v0, "http"

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 671
    :goto_0
    return-object p0

    .line 666
    :cond_1
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    const-string v0, "https"

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 669
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 746
    if-nez p2, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_2
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    .line 822
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    .line 823
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 735
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v6, 0x1

    move-object v0, p2

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 739
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 742
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    .line 816
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    .line 817
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 909
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 910
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 915
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 917
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 925
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 926
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 930
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 932
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 933
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 934
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 937
    :cond_4
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 938
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 939
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 921
    :cond_6
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public username(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 675
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    const-string v0, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v1, 0x1

    invoke-static {p1, v0, v2, v2, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 677
    return-object p0
.end method

.class public final Lcom/avos/avoscloud/okhttp/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/HttpUrl$1;,
        Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    }
.end annotation


# static fields
.field static final FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final HEX_DIGITS:[C = null

.field static final PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"\'<>#&="

.field static final QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final QUERY_ENCODE_SET:Ljava/lang/String; = " \"\'<>#"

.field static final USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private final queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avos/avoscloud/okhttp/HttpUrl;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>(Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    .line 306
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->username:Ljava/lang/String;

    .line 307
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->password:Ljava/lang/String;

    .line 308
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->host:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->port:I

    .line 310
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    .line 311
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 314
    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    .line 318
    return-void

    :cond_1
    move-object v0, v1

    .line 311
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;Lcom/avos/avoscloud/okhttp/HttpUrl$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;-><init>(Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-static {p0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/okhttp/HttpUrl;)I
    .locals 1
    .parameter

    .prologue
    .line 255
    iget v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->port:I

    return v0
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1551
    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_4

    .line 1552
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1553
    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    if-nez p6, :cond_2

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    if-eqz p5, :cond_3

    .line 1560
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 1561
    invoke-virtual {v0, p0, p1, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/Buffer;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 1562
    invoke-static/range {v0 .. v7}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZ)V

    .line 1563
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1568
    :goto_1
    return-object v0

    .line 1551
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 1568
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1608
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static canonicalize(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x25

    .line 1573
    const/4 v0, 0x0

    .line 1575
    :goto_0
    if-ge p2, p3, :cond_8

    .line 1576
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1577
    if-eqz p5, :cond_1

    const/16 v1, 0x9

    if-eq v2, v1, :cond_0

    const/16 v1, 0xa

    if-eq v2, v1, :cond_0

    const/16 v1, 0xc

    if-eq v2, v1, :cond_0

    const/16 v1, 0xd

    if-ne v2, v1, :cond_1

    .line 1575
    :cond_0
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 1580
    :cond_1
    const/16 v1, 0x2b

    if-ne v2, v1, :cond_3

    if-eqz p6, :cond_3

    .line 1582
    if-eqz p5, :cond_2

    const-string v1, "+"

    :goto_2
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_1

    :cond_2
    const-string v1, "%2B"

    goto :goto_2

    .line 1583
    :cond_3
    const/16 v1, 0x20

    if-lt v2, v1, :cond_5

    const/16 v1, 0x7f

    if-eq v2, v1, :cond_5

    const/16 v1, 0x80

    if-lt v2, v1, :cond_4

    if-nez p7, :cond_5

    :cond_4
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    if-ne v2, v5, :cond_7

    if-nez p5, :cond_7

    .line 1589
    :cond_5
    if-nez v0, :cond_6

    .line 1590
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 1592
    :cond_6
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 1593
    :goto_3
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1594
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1595
    invoke-virtual {p0, v5}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 1596
    sget-object v3, Lcom/avos/avoscloud/okhttp/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 1597
    sget-object v3, Lcom/avos/avoscloud/okhttp/HttpUrl;->HEX_DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_3

    .line 1601
    :cond_7
    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_1

    .line 1604
    :cond_8
    return-void
.end method

.method static decodeHexDigit(C)I
    .locals 1
    .parameter

    .prologue
    .line 1527
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 1530
    :goto_0
    return v0

    .line 1528
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1529
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1530
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 408
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/16 v0, 0x50

    .line 413
    :goto_0
    return v0

    .line 410
    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    const/16 v0, 0x1bb

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1472
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1473
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move p2, v0

    .line 1475
    :cond_0
    return p2

    .line 1472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static get(Ljava/net/URI;)Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 1
    .parameter

    .prologue
    .line 632
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 1
    .parameter

    .prologue
    .line 605
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method static getChecked(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 4
    .parameter

    .prologue
    .line 616
    new-instance v0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;-><init>()V

    .line 617
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->parse(Lcom/avos/avoscloud/okhttp/HttpUrl;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 618
    sget-object v2, Lcom/avos/avoscloud/okhttp/HttpUrl$1;->$SwitchMap$com$avos$avoscloud$okhttp$HttpUrl$Builder$ParseResult:[I

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 627
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :pswitch_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->build()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    return-object v0

    .line 622
    :pswitch_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 469
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 470
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 471
    if-lez v2, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    if-eqz v1, :cond_1

    .line 474
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_1
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 478
    :cond_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 595
    new-instance v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;-><init>()V

    .line 596
    invoke-virtual {v1, v0, p0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->parse(Lcom/avos/avoscloud/okhttp/HttpUrl;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v2

    .line 597
    sget-object v3, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->build()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 433
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 436
    :cond_0
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1491
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1492
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1493
    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    if-eqz p3, :cond_1

    .line 1495
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v1}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 1496
    invoke-virtual {v1, p0, p1, v0}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/Buffer;

    .line 1497
    invoke-static {v1, p0, v0, p2, p3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IIZ)V

    .line 1498
    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1503
    :goto_1
    return-object v0

    .line 1491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1503
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1479
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1483
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1485
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1487
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static percentDecode(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 1508
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    .line 1509
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1510
    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p3, :cond_0

    .line 1511
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v2

    .line 1512
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v3

    .line 1513
    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    .line 1514
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 1515
    add-int/lit8 v0, v0, 0x2

    .line 1508
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 1518
    :cond_0
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    if-eqz p4, :cond_1

    .line 1519
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_1

    .line 1522
    :cond_1
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_1

    .line 1524
    :cond_2
    return-void
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 487
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 489
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 490
    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 492
    :cond_0
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 493
    if-eq v3, v4, :cond_1

    if-le v3, v1, :cond_2

    .line 494
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 501
    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 502
    :cond_3
    return-object v2
.end method


# virtual methods
.method public encodedFragment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 561
    :goto_0
    return-object v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 561
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodedPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 372
    :goto_0
    return-object v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 371
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 372
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 428
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodedPathSegments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 441
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    :goto_0
    if-ge v0, v1, :cond_0

    .line 443
    add-int/lit8 v3, v0, 0x1

    .line 444
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    const-string v4, "/"

    invoke-static {v0, v3, v1, v4}, Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 445
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_0
    return-object v2
.end method

.method public encodedQuery()Ljava/lang/String;
    .locals 5

    .prologue
    .line 461
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 464
    :goto_0
    return-object v0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 463
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "#"

    invoke-static {v1, v2, v3, v4}, Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 464
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodedUsername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 360
    :goto_0
    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 359
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/avos/avoscloud/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 360
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 636
    instance-of v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/avos/avoscloud/okhttp/HttpUrl;

    iget-object v0, p1, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilder()Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 576
    new-instance v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;-><init>()V

    .line 577
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v0, v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 579
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->host:Ljava/lang/String;

    iput-object v0, v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 582
    iget v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->port:I

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->port:I

    :goto_0
    iput v0, v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->port:I

    .line 583
    iget-object v0, v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 584
    iget-object v0, v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 585
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    .line 586
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 587
    return-object v1

    .line 582
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public password()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public pathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public pathSize()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public port()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->port:I

    return v0
.end method

.method public query()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 509
    :goto_0
    return-object v0

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 521
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-object v0

    .line 522
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    .line 523
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 524
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 522
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public queryParameterName(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public queryParameterNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    .line 532
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 533
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 534
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 536
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public queryParameterValue(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 555
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 547
    :goto_0
    return-object v0

    .line 541
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    .line 543
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 544
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 547
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public querySize()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolve(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl;
    .locals 3
    .parameter

    .prologue
    .line 570
    new-instance v0, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;-><init>()V

    .line 571
    invoke-virtual {v0, p0, p1}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->parse(Lcom/avos/avoscloud/okhttp/HttpUrl;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 572
    sget-object v2, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/avos/avoscloud/okhttp/HttpUrl$Builder$ParseResult;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->build()Lcom/avos/avoscloud/okhttp/HttpUrl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .locals 3

    .prologue
    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/HttpUrl;->newBuilder()Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->reencodeForUri()Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not valid as a java.net.URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public url()Ljava/net/URL;
    .locals 2

    .prologue
    .line 323
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public username()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/HttpUrl;->username:Ljava/lang/String;

    return-object v0
.end method

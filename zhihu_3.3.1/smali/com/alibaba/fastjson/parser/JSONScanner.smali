.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# static fields
.field protected static final typeFieldName:[C


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    .line 193
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    .line 194
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    .line 195
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    .line 43
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 45
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 49
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 52
    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 68
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method static final charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 131
    array-length v2, p2

    .line 132
    add-int v1, v2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 136
    :goto_1
    if-ge v1, v2, :cond_2

    .line 137
    aget-char v3, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 473
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 476
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 479
    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 482
    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 486
    if-ne p4, v2, :cond_4

    .line 487
    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    .line 498
    :cond_2
    if-ne p6, v2, :cond_5

    .line 499
    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    .line 514
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 490
    :cond_4
    if-ne p4, v3, :cond_0

    .line 491
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    .line 502
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    .line 503
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    .line 506
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 507
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private checkTime(CCCCCC)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 418
    if-ne p1, v2, :cond_1

    .line 419
    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    .line 423
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    .line 434
    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    .line 435
    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    .line 446
    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    .line 447
    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    .line 458
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 426
    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    .line 427
    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 438
    :cond_6
    if-ne p3, v5, :cond_0

    .line 439
    if-eq p4, v2, :cond_3

    goto :goto_0

    .line 450
    :cond_7
    if-ne p5, v5, :cond_0

    .line 451
    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 463
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 464
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p4

    add-int/2addr v0, v1

    .line 465
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p5

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, p6

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 466
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, p7

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, p8

    add-int/2addr v2, v3

    .line 467
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 468
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 469
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 470
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1042
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 56
    const/16 v0, 0x1a

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 76
    return-void
.end method

.method public final indexOf(CI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()C
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 184
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 185
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    .line 186
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanFieldBoolean([C)Z
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x65

    const/16 v6, 0x2c

    const/16 v5, 0x10

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 955
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 957
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    const/4 v1, -0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1037
    :goto_0
    return v0

    .line 962
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    .line 964
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 967
    const/16 v3, 0x74

    if-ne v1, v3, :cond_4

    .line 968
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_1

    .line 969
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 972
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x75

    if-eq v1, v3, :cond_2

    .line 973
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 976
    :cond_2
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_3

    .line 977
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 981
    :cond_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 982
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 983
    const/4 v1, 0x1

    .line 1010
    :goto_1
    if-ne v2, v6, :cond_a

    .line 1011
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1012
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1013
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_2
    move v0, v1

    .line 1037
    goto :goto_0

    .line 984
    :cond_4
    const/16 v3, 0x66

    if-ne v1, v3, :cond_9

    .line 985
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_5

    .line 986
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 989
    :cond_5
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_6

    .line 990
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 993
    :cond_6
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-eq v2, v3, :cond_7

    .line 994
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 997
    :cond_7
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_8

    .line 998
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1002
    :cond_8
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1003
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v2, v1

    move v1, v0

    .line 1004
    goto :goto_1

    .line 1006
    :cond_9
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1014
    :cond_a
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_f

    .line 1015
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1016
    if-ne v2, v6, :cond_b

    .line 1017
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1018
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1031
    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_2

    .line 1019
    :cond_b
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_c

    .line 1020
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1021
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1022
    :cond_c
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_d

    .line 1023
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1024
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1025
    :cond_d
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_e

    .line 1026
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 1028
    :cond_e
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1033
    :cond_f
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0x2c

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 523
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 524
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 525
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 527
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v3

    .line 589
    :cond_0
    :goto_0
    return v0

    .line 532
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 534
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 537
    if-lt v0, v10, :cond_4

    const/16 v2, 0x39

    if-gt v0, v2, :cond_4

    .line 538
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v2, v0

    .line 540
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 541
    if-lt v1, v10, :cond_2

    const/16 v6, 0x39

    if-gt v1, v6, :cond_2

    .line 542
    mul-int/lit8 v0, v0, 0xa

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v6, v1

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    .line 543
    :cond_2
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_3

    .line 544
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v3

    .line 545
    goto :goto_0

    .line 547
    :cond_3
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 551
    if-gez v0, :cond_5

    .line 552
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v3

    .line 553
    goto :goto_0

    .line 556
    :cond_4
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v3

    .line 557
    goto :goto_0

    .line 560
    :cond_5
    if-ne v1, v9, :cond_6

    .line 561
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 562
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 563
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 567
    :cond_6
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    .line 568
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 569
    if-ne v1, v9, :cond_7

    .line 570
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 571
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 586
    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 572
    :cond_7
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_8

    .line 573
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 574
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 575
    :cond_8
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_9

    .line 576
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 577
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 578
    :cond_9
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_a

    .line 579
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 581
    :cond_a
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 582
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 583
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v0, v3

    .line 584
    goto/16 :goto_0
.end method

.method public scanFieldLong([C)J
    .locals 14
    .parameter

    .prologue
    const/16 v13, 0x30

    const/16 v12, 0x2c

    const/16 v11, 0x10

    const/4 v10, -0x1

    const-wide/16 v4, 0x0

    .line 880
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 881
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 882
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 884
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    .line 951
    :goto_0
    return-wide v0

    .line 889
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 891
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 894
    if-lt v0, v13, :cond_3

    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 895
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v1, v0

    int-to-long v0, v0

    .line 897
    :goto_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 898
    if-lt v2, v13, :cond_1

    const/16 v8, 0x39

    if-gt v2, v8, :cond_1

    .line 899
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v8, v2

    int-to-long v8, v2

    add-long/2addr v0, v8

    move v2, v3

    goto :goto_1

    .line 900
    :cond_1
    const/16 v8, 0x2e

    if-ne v2, v8, :cond_2

    .line 901
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    .line 902
    goto :goto_0

    .line 904
    :cond_2
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 908
    cmp-long v3, v0, v4

    if-gez v3, :cond_4

    .line 909
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 910
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 911
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    .line 912
    goto :goto_0

    .line 915
    :cond_3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 916
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 917
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    .line 918
    goto :goto_0

    .line 921
    :cond_4
    if-ne v2, v12, :cond_5

    .line 922
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    .line 923
    const/4 v2, 0x3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 924
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 926
    :cond_5
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_a

    .line 927
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 928
    if-ne v2, v12, :cond_6

    .line 929
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 930
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 945
    :goto_2
    const/4 v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 931
    :cond_6
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_7

    .line 932
    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 933
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 934
    :cond_7
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_8

    .line 935
    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 936
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 937
    :cond_8
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_9

    .line 938
    const/16 v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 940
    :cond_9
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 941
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 942
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    .line 943
    goto/16 :goto_0

    .line 947
    :cond_a
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v0, v4

    .line 948
    goto/16 :goto_0
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x7d

    const/16 v9, 0x2c

    const/16 v5, 0x22

    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 593
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 594
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 595
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 606
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 608
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    .line 611
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v2, p1

    add-int/2addr v0, v2

    .line 613
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 614
    if-eq v0, v5, :cond_1

    .line 615
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 617
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 625
    if-ne v5, v8, :cond_2

    .line 626
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_2
    sub-int v0, v5, v2

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 630
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 631
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_4

    .line 632
    const/4 v1, 0x1

    .line 637
    :cond_3
    if-eqz v1, :cond_5

    .line 638
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 640
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 643
    :cond_5
    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 644
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 675
    if-ne v0, v9, :cond_6

    .line 676
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 677
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v2

    .line 678
    goto :goto_0

    .line 679
    :cond_6
    if-ne v0, v10, :cond_b

    .line 680
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 681
    if-ne v0, v9, :cond_7

    .line 682
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 683
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 698
    :goto_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v2

    .line 705
    goto/16 :goto_0

    .line 684
    :cond_7
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_8

    .line 685
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 686
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 687
    :cond_8
    if-ne v0, v10, :cond_9

    .line 688
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 689
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 690
    :cond_9
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_a

    .line 691
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 693
    :cond_a
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 694
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 695
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 696
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 700
    :cond_b
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 702
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x22

    const/16 v7, 0x2c

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 777
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 779
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 876
    :goto_0
    return-object v0

    .line 786
    :cond_0
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 798
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    .line 800
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 802
    const/16 v2, 0x5b

    if-eq v1, v2, :cond_3

    .line 803
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 804
    goto :goto_0

    .line 788
    :cond_1
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 792
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 793
    :catch_0
    move-exception v0

    .line 794
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 807
    :cond_3
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 810
    :goto_2
    if-eq v1, v8, :cond_4

    .line 811
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 812
    goto :goto_0

    :cond_4
    move v1, v2

    .line 818
    :goto_3
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 819
    if-ne v1, v8, :cond_5

    .line 820
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 833
    if-ne v2, v7, :cond_6

    .line 834
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 827
    :cond_5
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_e

    .line 828
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 829
    goto :goto_0

    .line 838
    :cond_6
    if-ne v2, v9, :cond_7

    .line 839
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 847
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 848
    if-ne v1, v7, :cond_8

    .line 849
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 850
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 843
    :cond_7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 844
    goto/16 :goto_0

    .line 852
    :cond_8
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_d

    .line 853
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 854
    if-ne v1, v7, :cond_9

    .line 855
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 856
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 870
    :goto_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 857
    :cond_9
    if-ne v1, v9, :cond_a

    .line 858
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 859
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 860
    :cond_a
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_b

    .line 861
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 862
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 863
    :cond_b
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_c

    .line 864
    const/16 v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 865
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 867
    :cond_c
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 868
    goto/16 :goto_0

    .line 872
    :cond_d
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 873
    goto/16 :goto_0

    :cond_e
    move v1, v3

    goto/16 :goto_3
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x2c

    const/16 v7, 0x22

    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 709
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 711
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 772
    :goto_0
    return-object v0

    .line 716
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    .line 718
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 719
    if-eq v1, v7, :cond_1

    .line 720
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 721
    goto :goto_0

    :cond_1
    move v1, v2

    .line 728
    :goto_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 729
    if-ne v1, v7, :cond_2

    .line 730
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 731
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 733
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v5, v2, v3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 745
    if-ne v1, v8, :cond_3

    .line 746
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 747
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 737
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 739
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_9

    .line 740
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 741
    goto :goto_0

    .line 749
    :cond_3
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_8

    .line 750
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 751
    if-ne v1, v8, :cond_4

    .line 752
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 753
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 766
    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 754
    :cond_4
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_5

    .line 755
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 756
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 757
    :cond_5
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6

    .line 758
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 759
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 760
    :cond_6
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_7

    .line 761
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 763
    :cond_7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 764
    goto/16 :goto_0

    .line 768
    :cond_8
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v0, v4

    .line 769
    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 20
    .parameter

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v19, v2, v3

    .line 204
    if-nez p1, :cond_4

    const/16 v2, 0xd

    move/from16 v0, v19

    if-le v0, v2, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 206
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 207
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 208
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 209
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 210
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 212
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v8, v8, v19

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 213
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v9, v9, v19

    add-int/lit8 v9, v9, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 214
    const/16 v10, 0x2f

    if-ne v2, v10, :cond_4

    const/16 v2, 0x44

    if-ne v3, v2, :cond_4

    const/16 v2, 0x61

    if-ne v4, v2, :cond_4

    const/16 v2, 0x74

    if-ne v5, v2, :cond_4

    const/16 v2, 0x65

    if-ne v6, v2, :cond_4

    const/16 v2, 0x28

    if-ne v7, v2, :cond_4

    const/16 v2, 0x2f

    if-ne v8, v2, :cond_4

    const/16 v2, 0x29

    if-ne v9, v2, :cond_4

    .line 216
    const/4 v2, -0x1

    .line 217
    const/4 v3, 0x6

    :goto_0
    move/from16 v0, v19

    if-ge v3, v0, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 219
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 217
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-le v4, v5, :cond_0

    .line 225
    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 226
    const/4 v2, 0x0

    .line 414
    :goto_1
    return v2

    .line 228
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x6

    .line 229
    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 233
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 236
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 237
    const/4 v2, 0x1

    goto :goto_1

    .line 241
    :cond_4
    const/16 v2, 0x8

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/16 v2, 0xe

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/16 v2, 0x11

    move/from16 v0, v19

    if-ne v0, v2, :cond_11

    .line 242
    :cond_5
    if-eqz p1, :cond_6

    .line 243
    const/4 v2, 0x0

    goto :goto_1

    .line 246
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 247
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 248
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 249
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 250
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 251
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 252
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 253
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 255
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_7

    .line 256
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 259
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 262
    const/16 v2, 0x8

    move/from16 v0, v19

    if-eq v0, v2, :cond_10

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 265
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 266
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    move-object/from16 v2, p0

    .line 270
    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v2

    if-nez v2, :cond_8

    .line 271
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 274
    :cond_8
    const/16 v2, 0x11

    move/from16 v0, v19

    if-ne v0, v2, :cond_f

    .line 275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 276
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 277
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    .line 278
    const/16 v11, 0x30

    if-lt v2, v11, :cond_9

    const/16 v11, 0x39

    if-le v2, v11, :cond_a

    .line 279
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 281
    :cond_a
    const/16 v11, 0x30

    if-lt v9, v11, :cond_b

    const/16 v11, 0x39

    if-le v9, v11, :cond_c

    .line 282
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 284
    :cond_c
    const/16 v11, 0x30

    if-lt v10, v11, :cond_d

    const/16 v11, 0x39

    if-le v10, v11, :cond_e

    .line 285
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 288
    :cond_e
    sget-object v11, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v11, v2

    mul-int/lit8 v2, v2, 0x64

    sget-object v11, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v9, v11, v9

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v2, v9

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v9, v9, v10

    add-int/2addr v2, v9

    .line 293
    :goto_2
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v9, v3

    mul-int/lit8 v3, v3, 0xa

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v9, v4

    add-int v9, v3, v4

    .line 294
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v5

    mul-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v6

    add-int/2addr v4, v3

    .line 295
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v7

    mul-int/lit8 v3, v3, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, v8

    add-int/2addr v3, v5

    move v5, v9

    .line 303
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 304
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 308
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 309
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 290
    :cond_f
    const/4 v2, 0x0

    goto :goto_2

    .line 297
    :cond_10
    const/4 v5, 0x0

    .line 298
    const/4 v4, 0x0

    .line 299
    const/4 v3, 0x0

    .line 300
    const/4 v2, 0x0

    goto :goto_3

    .line 312
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_12

    .line 313
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 316
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_13

    .line 317
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 319
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_14

    .line 320
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 323
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 324
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 325
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 326
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 327
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 328
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 329
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 330
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 331
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_15

    .line 332
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 335
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 337
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 338
    const/16 v3, 0x54

    if-eq v2, v3, :cond_16

    const/16 v3, 0x20

    if-ne v2, v3, :cond_17

    if-nez p1, :cond_17

    .line 339
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_1a

    .line 340
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 342
    :cond_17
    const/16 v3, 0x22

    if-eq v2, v3, :cond_18

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    .line 343
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 348
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 350
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 351
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 353
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 356
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1b

    .line 357
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 359
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1c

    .line 360
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 363
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 364
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 368
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    move-object/from16 v2, p0

    .line 370
    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 371
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 374
    :cond_1d
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 375
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v5

    mul-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    .line 376
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v7

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, v8

    add-int/2addr v4, v5

    .line 377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 381
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 382
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1e

    .line 383
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_1f

    .line 384
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 387
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 389
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 391
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 392
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 395
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 396
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 397
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 398
    const/16 v5, 0x30

    if-lt v2, v5, :cond_20

    const/16 v5, 0x39

    if-le v2, v5, :cond_21

    .line 399
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 401
    :cond_21
    const/16 v5, 0x30

    if-lt v3, v5, :cond_22

    const/16 v5, 0x39

    if-le v3, v5, :cond_23

    .line 402
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 404
    :cond_23
    const/16 v5, 0x30

    if-lt v4, v5, :cond_24

    const/16 v5, 0x39

    if-le v4, v5, :cond_25

    .line 405
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 408
    :cond_25
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v5, v2

    mul-int/lit8 v2, v2, 0x64

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v5, v3

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 411
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 413
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 414
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/16 v6, 0x10

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 81
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 83
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    invoke-static {v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const/4 v0, -0x2

    .line 127
    :goto_0
    return v0

    .line 87
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    array-length v3, v3

    add-int/2addr v2, v3

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 90
    :goto_1
    if-ge v0, v3, :cond_2

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v2, v0

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    move v0, v1

    .line 92
    goto :goto_0

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    add-int v0, v2, v3

    .line 96
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 97
    goto :goto_0

    .line 100
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 102
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v7, :cond_4

    .line 103
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 104
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 105
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 106
    const/4 v0, 0x3

    goto :goto_0

    .line 107
    :cond_4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v8, :cond_5

    .line 108
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 109
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v7, :cond_6

    .line 110
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 111
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 123
    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 126
    :cond_5
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 127
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 112
    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_7

    .line 113
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 114
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 115
    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v8, :cond_8

    .line 116
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 117
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 118
    :cond_8
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_9

    .line 119
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    :cond_9
    move v0, v1

    .line 121
    goto/16 :goto_0
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

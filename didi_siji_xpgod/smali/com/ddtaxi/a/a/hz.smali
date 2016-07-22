.class public final Lcom/ddtaxi/a/a/hz;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/ddtaxi/a/a/ii;

.field private static final c:Lcom/ddtaxi/a/a/ii;

.field private static final d:Lcom/ddtaxi/a/a/ii;

.field private static final e:Lcom/ddtaxi/a/a/if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/ddtaxi/a/a/hz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/hz;->a:Ljava/util/logging/Logger;

    new-instance v0, Lcom/ddtaxi/a/a/ii;

    invoke-direct {v0, v2}, Lcom/ddtaxi/a/a/ii;-><init>(Lcom/ddtaxi/a/a/ii;)V

    sput-object v0, Lcom/ddtaxi/a/a/hz;->b:Lcom/ddtaxi/a/a/ii;

    new-instance v0, Lcom/ddtaxi/a/a/ii;

    invoke-direct {v0, v2}, Lcom/ddtaxi/a/a/ii;-><init>(Lcom/ddtaxi/a/a/ii;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Z)Lcom/ddtaxi/a/a/ii;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/hz;->c:Lcom/ddtaxi/a/a/ii;

    new-instance v0, Lcom/ddtaxi/a/a/ii;

    invoke-direct {v0, v2}, Lcom/ddtaxi/a/a/ii;-><init>(Lcom/ddtaxi/a/a/ii;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/ii;->b(Lcom/ddtaxi/a/a/ii;Z)Lcom/ddtaxi/a/a/ii;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/hz;->d:Lcom/ddtaxi/a/a/ii;

    invoke-static {}, Lcom/ddtaxi/a/a/if;->a()Lcom/ddtaxi/a/a/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ig;->a()Lcom/ddtaxi/a/a/if;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/hz;->e:Lcom/ddtaxi/a/a/if;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;ZZ)J
    .locals 6

    const/16 v2, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v3, "-"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number must be positive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v3, 0xa

    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    move v3, v1

    move v1, v2

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_5

    invoke-static {v3, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    if-eqz v0, :cond_c

    neg-long v0, v1

    :goto_2
    if-nez p2, :cond_a

    if-eqz p1, :cond_3

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v3, 0x8

    move v5, v3

    move v3, v1

    move v1, v5

    goto :goto_1

    :cond_3
    const-wide v2, 0x100000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    :goto_3
    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_9

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_9

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_9

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 64-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_9

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 64-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_a
    return-wide v0

    :cond_b
    move-object v0, v2

    goto :goto_3

    :cond_c
    move-wide v0, v1

    goto/16 :goto_2

    :cond_d
    move v5, v3

    move v3, v1

    move v1, v5

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method public static a()Lcom/ddtaxi/a/a/if;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/hz;->e:Lcom/ddtaxi/a/a/if;

    return-object v0
.end method

.method static a(Ljava/lang/CharSequence;)Lcom/ddtaxi/a/a/k;
    .locals 10

    const/16 v9, 0x5c

    const/16 v8, 0x27

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    new-array v6, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {v5}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-static {v6, v1, v2}, Lcom/ddtaxi/a/a/k;->a([BII)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v5, v0}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v4

    if-ne v4, v9, :cond_7

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v5}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v4

    if-ge v3, v4, :cond_6

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v5, v3}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->a(B)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->c(B)I

    move-result v0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v5}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v7

    if-ge v4, v7, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v5, v4}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v4

    invoke-static {v4}, Lcom/ddtaxi/a/a/hz;->a(B)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v5, v3}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v4

    invoke-static {v4}, Lcom/ddtaxi/a/a/hz;->c(B)I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v5}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v7

    if-ge v4, v7, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v5, v4}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v4

    invoke-static {v4}, Lcom/ddtaxi/a/a/hz;->a(B)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v5, v3}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v4

    invoke-static {v4}, Lcom/ddtaxi/a/a/hz;->c(B)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    move v2, v4

    :goto_1
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    new-instance v1, Lcom/ddtaxi/a/a/id;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid escape sequence: \'\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ddtaxi/a/a/id;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x7

    aput-byte v4, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_1
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x8

    aput-byte v4, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_2
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xc

    aput-byte v4, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_3
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    aput-byte v4, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_4
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_5
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x9

    aput-byte v4, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_6
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xb

    aput-byte v4, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_7
    add-int/lit8 v0, v2, 0x1

    aput-byte v9, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_8
    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_9
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x22

    aput-byte v4, v6, v2

    move v2, v0

    goto :goto_1

    :sswitch_a
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v5}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v4

    if-ge v0, v4, :cond_5

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v5, v0}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->b(B)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->c(B)I

    move-result v0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v5}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v7

    if-ge v4, v7, :cond_4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v5, v4}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v4

    invoke-static {v4}, Lcom/ddtaxi/a/a/hz;->b(B)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {v5, v3}, Lcom/ddtaxi/a/a/k;->a(I)B

    move-result v4

    invoke-static {v4}, Lcom/ddtaxi/a/a/hz;->c(B)I

    move-result v4

    add-int/2addr v0, v4

    :cond_4
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    move v2, v4

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/ddtaxi/a/a/id;

    const-string v1, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/id;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/ddtaxi/a/a/id;

    const-string v1, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/id;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v6, v2

    move v2, v3

    move v3, v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
        0x78 -> :sswitch_a
    .end sparse-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/ddtaxi/a/a/hz;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/ddtaxi/a/a/gp;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ddtaxi/a/a/hz;->c:Lcom/ddtaxi/a/a/ii;

    new-instance v2, Lcom/ddtaxi/a/a/ij;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v1, p0, v2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/gp;Lcom/ddtaxi/a/a/ij;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lcom/ddtaxi/a/a/ic;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/ddtaxi/a/a/ic;->a()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/ddtaxi/a/a/ic;->a()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p0, v0}, Lcom/ddtaxi/a/a/ic;->a(I)B

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, "\\a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v2, "\\f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v2, "\\v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_8
    const-string v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_9
    const-string v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method public static a(Lcom/ddtaxi/a/a/im;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ddtaxi/a/a/hz;->c:Lcom/ddtaxi/a/a/ii;

    new-instance v2, Lcom/ddtaxi/a/a/ij;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v1, p0, v2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Lcom/ddtaxi/a/a/k;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ia;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/ia;-><init>(Lcom/ddtaxi/a/a/k;)V

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->a(Lcom/ddtaxi/a/a/ic;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->a(Lcom/ddtaxi/a/a/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ib;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/ib;-><init>([B)V

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->a(Lcom/ddtaxi/a/a/ic;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(ILjava/lang/Object;Lcom/ddtaxi/a/a/ij;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ddtaxi/a/a/hz;->b(ILjava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method public static a(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/ij;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {p0, p1, v0}, Lcom/ddtaxi/a/a/hz;->b(ILjava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/hz;->b:Lcom/ddtaxi/a/a/ii;

    new-instance v1, Lcom/ddtaxi/a/a/ij;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v0, p0, p1, v1}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/gp;Ljava/lang/Appendable;)V
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/hz;->b:Lcom/ddtaxi/a/a/ii;

    new-instance v1, Lcom/ddtaxi/a/a/ij;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v0, p0, v1}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/gp;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/im;Ljava/lang/Appendable;)V
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/hz;->b:Lcom/ddtaxi/a/a/ii;

    new-instance v1, Lcom/ddtaxi/a/a/ij;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v0, p0, v1}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/hz;->e:Lcom/ddtaxi/a/a/if;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ddtaxi/a/a/if;->a(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/gl;)V
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/hz;->e:Lcom/ddtaxi/a/a/if;

    invoke-virtual {v0, p0, p1}, Lcom/ddtaxi/a/a/if;->a(Ljava/lang/CharSequence;Lcom/ddtaxi/a/a/gl;)V

    return-void
.end method

.method public static a(Ljava/lang/Readable;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/hz;->e:Lcom/ddtaxi/a/a/if;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ddtaxi/a/a/if;->a(Ljava/lang/Readable;Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/gl;)V

    return-void
.end method

.method public static a(Ljava/lang/Readable;Lcom/ddtaxi/a/a/gl;)V
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/hz;->e:Lcom/ddtaxi/a/a/if;

    invoke-virtual {v0, p0, p1}, Lcom/ddtaxi/a/a/if;->a(Ljava/lang/Readable;Lcom/ddtaxi/a/a/gl;)V

    return-void
.end method

.method private static a(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/ddtaxi/a/a/gp;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/ddtaxi/a/a/hz;->a(Lcom/ddtaxi/a/a/gp;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Lcom/ddtaxi/a/a/im;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lcom/ddtaxi/a/a/hz;->a(Lcom/ddtaxi/a/a/im;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/hz;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static b(ILjava/lang/Object;Lcom/ddtaxi/a/a/ij;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/ddtaxi/a/a/iv;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/hz;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_2
    const-string v0, "0x%08x"

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, v1, v2

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "0x%016x"

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    aput-object p1, v1, v2

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/ddtaxi/a/a/k;

    invoke-static {p1}, Lcom/ddtaxi/a/a/hz;->a(Lcom/ddtaxi/a/a/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ddtaxi/a/a/hz;->b:Lcom/ddtaxi/a/a/ii;

    check-cast p1, Lcom/ddtaxi/a/a/im;

    invoke-static {v0, p1, p2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/hz;->b:Lcom/ddtaxi/a/a/ii;

    new-instance v1, Lcom/ddtaxi/a/a/ij;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v0, p0, p1, v1}, Lcom/ddtaxi/a/a/ii;->b(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method public static b(Lcom/ddtaxi/a/a/gp;Ljava/lang/Appendable;)V
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/hz;->d:Lcom/ddtaxi/a/a/ii;

    new-instance v1, Lcom/ddtaxi/a/a/ij;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v0, p0, v1}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/gp;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method public static b(Lcom/ddtaxi/a/a/im;Ljava/lang/Appendable;)V
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/hz;->d:Lcom/ddtaxi/a/a/ii;

    new-instance v1, Lcom/ddtaxi/a/a/ij;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v0, p0, v1}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method private static b(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-le p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(B)I
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static c(Lcom/ddtaxi/a/a/gp;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ddtaxi/a/a/hz;->d:Lcom/ddtaxi/a/a/ii;

    new-instance v2, Lcom/ddtaxi/a/a/ij;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v1, p0, v2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/gp;Lcom/ddtaxi/a/a/ij;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(Lcom/ddtaxi/a/a/im;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ddtaxi/a/a/hz;->d:Lcom/ddtaxi/a/a/ii;

    new-instance v2, Lcom/ddtaxi/a/a/ij;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/ddtaxi/a/a/ij;-><init>(Ljava/lang/Appendable;Lcom/ddtaxi/a/a/ij;)V

    invoke-static {v1, p0, v2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/hz;->a(Ljava/lang/CharSequence;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ddtaxi/a/a/hz;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static e(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/ddtaxi/a/a/hz;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static f(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/ddtaxi/a/a/hz;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static g(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ddtaxi/a/a/hz;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final INT_N_MULTMAX_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field protected static final N_MULTMAX_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C

.field protected static whitespaceFlags:[Z


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected keywods:Lcom/alibaba/fastjson/parser/Keywords;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    .line 2891
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    .line 2893
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    .line 2894
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 2895
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 2896
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 2897
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 2898
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 2907
    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 2910
    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    .line 2914
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-le v0, v1, :cond_1

    .line 2917
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-le v0, v1, :cond_2

    .line 2920
    return-void

    .line 2911
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 2910
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2915
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 2914
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2918
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 2917
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 74
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 79
    sget-object v0, Lcom/alibaba/fastjson/parser/Keywords;->DEFAULT_KEYWORDS:Lcom/alibaba/fastjson/parser/Keywords;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->keywods:Lcom/alibaba/fastjson/parser/Keywords;

    .line 82
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 86
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-nez v0, :cond_1

    .line 90
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 92
    :cond_1
    return-void
.end method

.method public static final isWhitespace(C)Z
    .locals 1
    .parameter

    .prologue
    .line 2888
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final scanStringSingleQuote()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2553
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2554
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2557
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 2559
    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 2675
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2676
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2677
    return-void

    .line 2563
    :cond_0
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 2564
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2567
    :cond_1
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_4

    .line 2568
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v0, :cond_3

    .line 2569
    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2571
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 2572
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 2573
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2574
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 2578
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 2582
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 2584
    sparse-switch v0, :sswitch_data_0

    .line 2657
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2658
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2586
    :sswitch_0
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2589
    :sswitch_1
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2592
    :sswitch_2
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2595
    :sswitch_3
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2598
    :sswitch_4
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2601
    :sswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2604
    :sswitch_6
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2607
    :sswitch_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2610
    :sswitch_8
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2613
    :sswitch_9
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2616
    :sswitch_a
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2619
    :sswitch_b
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2623
    :sswitch_c
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2626
    :sswitch_d
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2629
    :sswitch_e
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2632
    :sswitch_f
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2635
    :sswitch_10
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2638
    :sswitch_11
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2641
    :sswitch_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 2642
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 2644
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x10

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    .line 2645
    int-to-char v0, v0

    .line 2646
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2649
    :sswitch_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 2650
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 2651
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    .line 2652
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    .line 2653
    new-instance v4, Ljava/lang/String;

    new-array v5, v8, [C

    aput-char v0, v5, v6

    aput-char v1, v5, v7

    aput-char v2, v5, v9

    aput-char v3, v5, v10

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 2654
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2663
    :cond_4
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v1, :cond_5

    .line 2664
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 2668
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_6

    .line 2669
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2671
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v0, v1, v2

    goto/16 :goto_0

    .line 2584
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 1051
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1053
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 1054
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 573
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 574
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 2
    .parameter

    .prologue
    .line 2849
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2850
    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 2851
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2863
    :goto_0
    return-object v0

    .line 2855
    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 2856
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 2860
    :cond_1
    if-eqz p1, :cond_2

    .line 2861
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 2863
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 2868
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final getBufferPosition()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .prologue
    .line 585
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public final intValue()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v7, -0xccccccc

    .line 997
    .line 999
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v5, v1, v3

    .line 1004
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_2

    .line 1005
    const/4 v3, 0x1

    .line 1006
    const/high16 v1, -0x8000

    .line 1007
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v1

    move v1, v2

    .line 1011
    :goto_0
    if-eqz v4, :cond_0

    .line 1012
    :cond_0
    if-ge v1, v5, :cond_8

    .line 1013
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    .line 1014
    neg-int v0, v0

    .line 1016
    :goto_1
    if-lt v2, v5, :cond_3

    move v1, v2

    .line 1036
    :cond_1
    if-eqz v4, :cond_7

    .line 1037
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_6

    .line 1043
    :goto_2
    return v0

    .line 1009
    :cond_2
    const v1, -0x7fffffff

    move v3, v1

    move v4, v0

    move v1, v2

    goto :goto_0

    .line 1018
    :cond_3
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1020
    const/16 v6, 0x4c

    if-eq v2, v6, :cond_1

    const/16 v6, 0x53

    if-eq v2, v6, :cond_1

    const/16 v6, 0x42

    if-eq v2, v6, :cond_1

    .line 1024
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v2, v6, v2

    .line 1026
    if-ge v0, v7, :cond_4

    .line 1027
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_4
    mul-int/lit8 v0, v0, 0xa

    .line 1030
    add-int v6, v3, v2

    if-ge v0, v6, :cond_5

    .line 1031
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_5
    sub-int/2addr v0, v2

    move v2, v1

    goto :goto_1

    .line 1040
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_7
    neg-int v0, v0

    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_1
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 14

    .prologue
    .line 398
    const-wide/16 v4, 0x0

    .line 399
    const/4 v7, 0x0

    .line 400
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 403
    :cond_0
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v0

    .line 408
    const/16 v0, 0x20

    .line 410
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 427
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    .line 428
    const/4 v7, 0x1

    .line 429
    const-wide/high16 v2, -0x8000

    .line 430
    add-int/lit8 v6, v6, 0x1

    move-wide v8, v2

    move v10, v7

    move v3, v6

    .line 434
    :goto_1
    if-eqz v10, :cond_2

    const-wide v6, -0xcccccccccccccccL

    .line 435
    :goto_2
    if-ge v3, v1, :cond_c

    .line 436
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    aget v3, v4, v3

    .line 437
    neg-int v3, v3

    int-to-long v4, v3

    .line 439
    :goto_3
    if-lt v2, v1, :cond_3

    .line 452
    if-eqz v10, :cond_8

    .line 453
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_7

    .line 454
    const-wide/32 v2, -0x80000000

    cmp-long v1, v4, v2

    if-ltz v1, :cond_6

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_6

    .line 455
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 474
    :goto_4
    return-object v0

    .line 412
    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    .line 413
    const/16 v0, 0x4c

    .line 414
    goto :goto_0

    .line 416
    :sswitch_1
    add-int/lit8 v1, v1, -0x1

    .line 417
    const/16 v0, 0x53

    .line 418
    goto :goto_0

    .line 420
    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    .line 421
    const/16 v0, 0x42

    .line 422
    goto :goto_0

    .line 432
    :cond_1
    const-wide v2, -0x7fffffffffffffffL

    move-wide v8, v2

    move v10, v7

    move v3, v6

    goto :goto_1

    .line 434
    :cond_2
    const-wide v6, -0xcccccccccccccccL

    goto :goto_2

    .line 441
    :cond_3
    sget-object v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    aget v2, v11, v2

    .line 442
    cmp-long v11, v4, v6

    if-gez v11, :cond_4

    .line 443
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 445
    :cond_4
    const-wide/16 v12, 0xa

    mul-long/2addr v4, v12

    .line 446
    int-to-long v12, v2

    add-long/2addr v12, v8

    cmp-long v11, v4, v12

    if-gez v11, :cond_5

    .line 447
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 449
    :cond_5
    int-to-long v12, v2

    sub-long/2addr v4, v12

    move v2, v3

    goto :goto_3

    .line 457
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    .line 459
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_8
    neg-long v2, v4

    .line 463
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_b

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_b

    .line 464
    const/16 v1, 0x53

    if-ne v0, v1, :cond_9

    .line 465
    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_4

    .line 468
    :cond_9
    const/16 v1, 0x42

    if-ne v0, v1, :cond_a

    .line 469
    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_4

    .line 472
    :cond_a
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_4

    .line 474
    :cond_b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_4

    :cond_c
    move v2, v3

    goto/16 :goto_3

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2527
    move v0, v1

    .line 2528
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2529
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_1

    .line 2538
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2533
    :cond_1
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .parameter

    .prologue
    .line 577
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1057
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 50
    return-void
.end method

.method public final longValue()J
    .locals 13

    .prologue
    const-wide v10, -0xcccccccccccccccL

    .line 2799
    const-wide/16 v0, 0x0

    .line 2800
    const/4 v5, 0x0

    .line 2801
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v7, v2, v3

    .line 2806
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 2807
    const/4 v5, 0x1

    .line 2808
    const-wide/high16 v2, -0x8000

    .line 2809
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v12, v4

    move-wide v4, v2

    move v2, v12

    .line 2813
    :goto_0
    if-eqz v6, :cond_0

    .line 2814
    :cond_0
    if-ge v2, v7, :cond_8

    .line 2815
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    .line 2816
    neg-int v0, v0

    int-to-long v0, v0

    .line 2818
    :goto_1
    if-lt v3, v7, :cond_3

    move v2, v3

    .line 2837
    :cond_1
    if-eqz v6, :cond_7

    .line 2838
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_6

    .line 2844
    :goto_2
    return-wide v0

    .line 2811
    :cond_2
    const-wide v2, -0x7fffffffffffffffL

    move v6, v5

    move v12, v4

    move-wide v4, v2

    move v2, v12

    goto :goto_0

    .line 2820
    :cond_3
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2822
    const/16 v8, 0x4c

    if-eq v3, v8, :cond_1

    const/16 v8, 0x53

    if-eq v3, v8, :cond_1

    const/16 v8, 0x42

    if-eq v3, v8, :cond_1

    .line 2826
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v3, v8, v3

    .line 2827
    cmp-long v8, v0, v10

    if-gez v8, :cond_4

    .line 2828
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2830
    :cond_4
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    .line 2831
    int-to-long v8, v3

    add-long/2addr v8, v4

    cmp-long v8, v0, v8

    if-gez v8, :cond_5

    .line 2832
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2834
    :cond_5
    int-to-long v8, v3

    sub-long/2addr v0, v8

    move v3, v2

    goto :goto_1

    .line 2841
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2844
    :cond_7
    neg-long v0, v0

    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_1
.end method

.method public final matchField([C)Z
    .locals 2
    .parameter

    .prologue
    .line 1117
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    const/4 v0, 0x0

    .line 1134
    :goto_0
    return v0

    .line 1121
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1122
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1124
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1126
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1134
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1127
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 1128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1129
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1131
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_1
.end method

.method public final matchStat()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .prologue
    .line 337
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 345
    :goto_1
    return-void

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_1
.end method

.method public final nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 99
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 102
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 104
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 196
    :goto_1
    return-void

    .line 109
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 111
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 115
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 120
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 125
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sparse-switch v0, :sswitch_data_0

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-ne v0, v2, :cond_5

    .line 186
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    goto :goto_1

    .line 138
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 141
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    goto :goto_1

    .line 144
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTreeSet()V

    goto :goto_1

    .line 147
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSet()V

    goto :goto_1

    .line 150
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    goto :goto_1

    .line 153
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    goto :goto_1

    .line 156
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 157
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 160
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 161
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 164
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 165
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 168
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 169
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 172
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 173
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 176
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 177
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 180
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 181
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 189
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 190
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    goto/16 :goto_1

    .line 192
    :cond_6
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x3a -> :sswitch_d
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x5b -> :sswitch_9
        0x5d -> :sswitch_a
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_2
        0x7b -> :sswitch_b
        0x7d -> :sswitch_c
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 206
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 326
    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 208
    :pswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_2

    .line 209
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 334
    :goto_1
    return-void

    .line 213
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_0

    .line 214
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 220
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 221
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 226
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    .line 227
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 232
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    .line 233
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 238
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 239
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 244
    :pswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 245
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 250
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 251
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 252
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto :goto_1

    .line 256
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_8

    .line 257
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 262
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 263
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 264
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 270
    :pswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 271
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto/16 :goto_1

    .line 276
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 277
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto/16 :goto_1

    .line 282
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_b

    .line 283
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 288
    :cond_b
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 289
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 290
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 295
    :pswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_c

    .line 296
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 297
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 301
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 302
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 303
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 308
    :pswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    .line 309
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 310
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 314
    :cond_d
    :pswitch_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 315
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 320
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    goto/16 :goto_1

    .line 331
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3
    .parameter

    .prologue
    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 359
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 362
    return-void

    .line 365
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 370
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not match "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithChar(CI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x39

    const/16 v5, 0x30

    const/16 v4, 0x22

    const/16 v3, 0xe

    const/16 v2, 0xc

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 490
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 504
    :goto_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 505
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v5, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v6, :cond_2

    .line 506
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 562
    :goto_2
    return-void

    .line 495
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 500
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not match "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_9

    .line 512
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 513
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto :goto_2

    .line 516
    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 517
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_4

    .line 518
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 519
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto :goto_2

    .line 523
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v5, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v6, :cond_9

    .line 524
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 525
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_2

    .line 529
    :cond_5
    if-ne p2, v2, :cond_7

    .line 530
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_6

    .line 531
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 532
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 535
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    .line 536
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 537
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 540
    :cond_7
    if-ne p2, v3, :cond_9

    .line 541
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_8

    .line 542
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 543
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 547
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_9

    .line 548
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_2

    .line 554
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 555
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 559
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_2
.end method

.method public final nextTokenWithColon()V
    .locals 1

    .prologue
    .line 348
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 349
    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 1
    .parameter

    .prologue
    .line 479
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 480
    return-void
.end method

.method public final nextTokenWithComma()V
    .locals 1

    .prologue
    .line 352
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 353
    return-void
.end method

.method public final nextTokenWithComma(I)V
    .locals 1
    .parameter

    .prologue
    .line 483
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 484
    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final numberValue()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 2872
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2874
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    .line 2876
    packed-switch v0, :pswitch_data_0

    .line 2882
    :pswitch_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 2878
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 2880
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 2876
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final pos()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2706
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2707
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 2708
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2709
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v0, v1

    .line 2712
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 811
    return-void
.end method

.method public scanBoolean(C)Z
    .locals 7
    .parameter

    .prologue
    const/16 v5, 0x65

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 1744
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1747
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1750
    const/16 v3, 0x74

    if-ne v2, v3, :cond_1

    .line 1751
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_0

    .line 1752
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_0

    .line 1753
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1755
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x5

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1775
    :goto_0
    if-ne v1, p1, :cond_3

    .line 1776
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1777
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1778
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1782
    :goto_1
    return v0

    .line 1758
    :cond_0
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_1

    .line 1761
    :cond_1
    const/16 v3, 0x66

    if-ne v2, v3, :cond_4

    .line 1762
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_2

    .line 1763
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_2

    .line 1764
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    .line 1765
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1767
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x6

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1770
    :cond_2
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_1

    .line 1781
    :cond_3
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_1

    :cond_4
    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_0
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1377
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1378
    if-nez v0, :cond_0

    .line 1379
    const/4 v0, 0x0

    .line 1381
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanFalse()V
    .locals 2

    .prologue
    .line 2463
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 2464
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2466
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2468
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    .line 2469
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2471
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2473
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 2474
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2476
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2478
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    .line 2479
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2481
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2483
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    .line 2484
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2486
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2488
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    .line 2489
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 2490
    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2494
    return-void

    .line 2492
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBoolean([C)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x2c

    const/16 v7, 0x1a

    const/16 v6, 0x10

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 1828
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1830
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1831
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1916
    :goto_0
    return v1

    .line 1835
    :cond_0
    array-length v0, p1

    .line 1836
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1839
    const/16 v2, 0x74

    if-ne v0, v2, :cond_4

    .line 1840
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x72

    if-eq v0, v3, :cond_1

    .line 1841
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1844
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x75

    if-eq v0, v2, :cond_2

    .line 1845
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1848
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x65

    if-eq v0, v3, :cond_3

    .line 1849
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1853
    :cond_3
    const/4 v0, 0x1

    .line 1878
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1879
    if-ne v2, v8, :cond_a

    .line 1880
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1881
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1882
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1883
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v1, v0

    .line 1885
    goto :goto_0

    .line 1854
    :cond_4
    const/16 v2, 0x66

    if-ne v0, v2, :cond_9

    .line 1855
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-eq v0, v3, :cond_5

    .line 1856
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1859
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_6

    .line 1860
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1863
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x73

    if-eq v0, v3, :cond_7

    .line 1864
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1867
    :cond_7
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v2, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_8

    .line 1868
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    :cond_8
    move v2, v0

    move v0, v1

    .line 1873
    goto :goto_1

    .line 1874
    :cond_9
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1888
    :cond_a
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_f

    .line 1889
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1890
    if-ne v2, v8, :cond_b

    .line 1891
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1892
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1893
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1910
    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v0

    .line 1916
    goto/16 :goto_0

    .line 1894
    :cond_b
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_c

    .line 1895
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1896
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1897
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 1898
    :cond_c
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_d

    .line 1899
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1900
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1901
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 1902
    :cond_d
    if-ne v2, v7, :cond_e

    .line 1903
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1904
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1905
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1907
    :cond_e
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1912
    :cond_f
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0
.end method

.method public final scanFieldDouble(C)D
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x39

    const/16 v5, 0x30

    .line 2277
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2280
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v0, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2283
    if-lt v1, v5, :cond_6

    if-gt v1, v6, :cond_6

    .line 2285
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2286
    if-lt v0, v5, :cond_0

    if-gt v0, v6, :cond_0

    move v0, v1

    .line 2284
    goto :goto_0

    .line 2293
    :cond_0
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_2

    .line 2294
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2295
    if-lt v1, v5, :cond_1

    if-gt v1, v6, :cond_1

    .line 2297
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2298
    if-lt v0, v5, :cond_2

    if-gt v0, v6, :cond_2

    move v0, v1

    .line 2296
    goto :goto_1

    .line 2305
    :cond_1
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v2

    .line 2341
    :goto_2
    return-wide v0

    .line 2310
    :cond_2
    const/16 v2, 0x65

    if-eq v0, v2, :cond_3

    const/16 v2, 0x45

    if-ne v0, v2, :cond_5

    .line 2311
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2312
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_8

    .line 2313
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2316
    :goto_3
    if-lt v0, v5, :cond_5

    if-gt v0, v6, :cond_5

    .line 2317
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 2315
    goto :goto_3

    .line 2324
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2325
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 2326
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 2327
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 2333
    if-ne v0, p1, :cond_7

    .line 2334
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2335
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2336
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2337
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move-wide v0, v2

    .line 2338
    goto :goto_2

    .line 2329
    :cond_6
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v2

    .line 2330
    goto :goto_2

    .line 2340
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v2

    .line 2341
    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public final scanFieldDouble([C)D
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x1

    const/16 v6, 0x39

    const/16 v5, 0x30

    const-wide/16 v2, 0x0

    .line 2176
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2178
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2179
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v2

    .line 2273
    :goto_0
    return-wide v0

    .line 2183
    :cond_0
    array-length v1, p1

    .line 2184
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2187
    if-lt v1, v5, :cond_7

    if-gt v1, v6, :cond_7

    .line 2189
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2190
    if-lt v0, v5, :cond_1

    if-gt v0, v6, :cond_1

    move v0, v1

    .line 2188
    goto :goto_1

    .line 2197
    :cond_1
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    .line 2198
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2199
    if-lt v1, v5, :cond_2

    if-gt v1, v6, :cond_2

    .line 2201
    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2202
    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    move v0, v1

    .line 2200
    goto :goto_2

    .line 2209
    :cond_2
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v2

    .line 2210
    goto :goto_0

    .line 2214
    :cond_3
    const/16 v4, 0x65

    if-eq v0, v4, :cond_4

    const/16 v4, 0x45

    if-ne v0, v4, :cond_6

    .line 2215
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2216
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_e

    .line 2217
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2220
    :goto_3
    if-lt v0, v5, :cond_6

    if-gt v0, v6, :cond_6

    .line 2221
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v4

    .line 2219
    goto :goto_3

    .line 2228
    :cond_6
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, p1

    add-int/2addr v4, v5

    .line 2229
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 2230
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v4

    .line 2231
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 2237
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_8

    .line 2238
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2239
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2240
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2241
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move-wide v0, v4

    .line 2242
    goto/16 :goto_0

    .line 2233
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v2

    .line 2234
    goto/16 :goto_0

    .line 2245
    :cond_8
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_d

    .line 2246
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2247
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9

    .line 2248
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2249
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2250
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2267
    :goto_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 2273
    goto/16 :goto_0

    .line 2251
    :cond_9
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_a

    .line 2252
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2253
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2254
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 2255
    :cond_a
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_b

    .line 2256
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2257
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2258
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 2259
    :cond_b
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_c

    .line 2260
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2261
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2262
    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 2264
    :cond_c
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v2

    .line 2265
    goto/16 :goto_0

    .line 2269
    :cond_d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v2

    .line 2270
    goto/16 :goto_0

    :cond_e
    move v1, v4

    goto/16 :goto_3
.end method

.method public final scanFieldFloat([C)F
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x39

    const/16 v4, 0x30

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 2034
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2036
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2037
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v2

    .line 2117
    :goto_0
    return v0

    .line 2041
    :cond_0
    array-length v1, p1

    .line 2042
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2045
    if-lt v1, v4, :cond_4

    if-gt v1, v6, :cond_4

    .line 2047
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2048
    if-lt v0, v4, :cond_1

    if-gt v0, v6, :cond_1

    move v0, v1

    .line 2046
    goto :goto_1

    .line 2055
    :cond_1
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_3

    .line 2056
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2057
    if-lt v1, v4, :cond_2

    if-gt v1, v6, :cond_2

    .line 2059
    :goto_2
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2060
    if-lt v0, v4, :cond_3

    if-gt v0, v6, :cond_3

    move v0, v1

    .line 2058
    goto :goto_2

    .line 2067
    :cond_2
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v2

    .line 2068
    goto :goto_0

    .line 2072
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v3, v4

    .line 2073
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 2074
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v3

    .line 2075
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2081
    const/16 v4, 0x2c

    if-ne v0, v4, :cond_5

    .line 2082
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2083
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2084
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2085
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v0, v3

    .line 2086
    goto :goto_0

    .line 2077
    :cond_4
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v2

    .line 2078
    goto :goto_0

    .line 2089
    :cond_5
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_a

    .line 2090
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2091
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_6

    .line 2092
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2093
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2094
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2111
    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 2117
    goto/16 :goto_0

    .line 2095
    :cond_6
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_7

    .line 2096
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2097
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2098
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3

    .line 2099
    :cond_7
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_8

    .line 2100
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2101
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2102
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3

    .line 2103
    :cond_8
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_9

    .line 2104
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2105
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2106
    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2108
    :cond_9
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v2

    .line 2109
    goto/16 :goto_0

    .line 2113
    :cond_a
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v2

    .line 2114
    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x2c

    const/16 v7, 0x1a

    const/16 v6, 0x10

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1671
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1673
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1674
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1740
    :goto_0
    return v0

    .line 1678
    :cond_0
    array-length v0, p1

    .line 1679
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1682
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-gt v0, v2, :cond_3

    .line 1683
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v0, v2, v0

    .line 1685
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1686
    const/16 v4, 0x30

    if-lt v1, v4, :cond_1

    const/16 v4, 0x39

    if-gt v1, v4, :cond_1

    .line 1687
    mul-int/lit8 v0, v0, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v4, v1

    add-int/2addr v0, v1

    move v1, v2

    .line 1688
    goto :goto_1

    :cond_1
    const/16 v4, 0x2e

    if-ne v1, v4, :cond_2

    .line 1689
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1690
    goto :goto_0

    .line 1695
    :cond_2
    if-gez v0, :cond_4

    .line 1696
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1697
    goto :goto_0

    .line 1700
    :cond_3
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1701
    goto :goto_0

    .line 1704
    :cond_4
    if-ne v1, v8, :cond_5

    .line 1705
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1706
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1707
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1708
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 1712
    :cond_5
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_a

    .line 1713
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1714
    if-ne v1, v8, :cond_6

    .line 1715
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1716
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1717
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1734
    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1718
    :cond_6
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_7

    .line 1719
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1720
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1721
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 1722
    :cond_7
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_8

    .line 1723
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1724
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1725
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 1726
    :cond_8
    if-ne v1, v7, :cond_9

    .line 1727
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1728
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1729
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1731
    :cond_9
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1732
    goto/16 :goto_0

    .line 1736
    :cond_a
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1737
    goto/16 :goto_0
.end method

.method public scanFieldLong([C)J
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x1a

    const/16 v9, 0x10

    const/4 v8, -0x1

    const-wide/16 v4, 0x0

    .line 1920
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1922
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1923
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 1989
    :goto_0
    return-wide v0

    .line 1927
    :cond_0
    array-length v0, p1

    .line 1928
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1931
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 1932
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v0, v1, v0

    int-to-long v0, v0

    .line 1934
    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1935
    const/16 v6, 0x30

    if-lt v2, v6, :cond_1

    const/16 v6, 0x39

    if-gt v2, v6, :cond_1

    .line 1936
    const-wide/16 v6, 0xa

    mul-long/2addr v0, v6

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v2, v6, v2

    int-to-long v6, v2

    add-long/2addr v0, v6

    move v2, v3

    .line 1937
    goto :goto_1

    :cond_1
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_2

    .line 1938
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 1939
    goto :goto_0

    .line 1944
    :cond_2
    cmp-long v6, v0, v4

    if-gez v6, :cond_4

    .line 1945
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 1946
    goto :goto_0

    .line 1949
    :cond_3
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 1950
    goto :goto_0

    .line 1953
    :cond_4
    if-ne v2, v11, :cond_5

    .line 1954
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1955
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1956
    const/4 v2, 0x3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1957
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 1961
    :cond_5
    const/16 v6, 0x7d

    if-ne v2, v6, :cond_a

    .line 1962
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1963
    if-ne v2, v11, :cond_6

    .line 1964
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1965
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1966
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1983
    :goto_2
    const/4 v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1967
    :cond_6
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_7

    .line 1968
    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1969
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1970
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 1971
    :cond_7
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_8

    .line 1972
    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1973
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1974
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 1975
    :cond_8
    if-ne v2, v10, :cond_9

    .line 1976
    const/16 v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1977
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1978
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1980
    :cond_9
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 1981
    goto/16 :goto_0

    .line 1985
    :cond_a
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 1986
    goto/16 :goto_0
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x2c

    const/16 v4, 0x22

    const/16 v8, 0x1a

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 1142
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1144
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1146
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 1224
    :goto_0
    return-object v0

    .line 1151
    :cond_0
    array-length v0, p1

    .line 1152
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1154
    if-eq v0, v4, :cond_1

    .line 1155
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1157
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1163
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 1164
    invoke-virtual {p0, v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v4

    .line 1165
    if-ne v4, v7, :cond_2

    .line 1166
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 1170
    sub-int v2, v4, v0

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 1171
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, p1

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-lt v2, v4, :cond_3

    .line 1178
    :goto_2
    if-eqz v1, :cond_5

    .line 1179
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1181
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1172
    :cond_3
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    .line 1173
    const/4 v1, 0x1

    .line 1174
    goto :goto_2

    .line 1171
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1184
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    .line 1185
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1189
    if-ne v1, v9, :cond_6

    .line 1190
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1191
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1192
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1196
    :cond_6
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_b

    .line 1197
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1198
    if-ne v1, v9, :cond_7

    .line 1199
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1200
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1201
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1218
    :goto_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1202
    :cond_7
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_8

    .line 1203
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1204
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1205
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3

    .line 1206
    :cond_8
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_9

    .line 1207
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1208
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1209
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3

    .line 1210
    :cond_9
    if-ne v1, v8, :cond_a

    .line 1211
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1212
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1213
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1215
    :cond_a
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1216
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1220
    :cond_b
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1221
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

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
    const/16 v9, 0x22

    const/16 v8, 0x1a

    const/16 v7, 0x2c

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 1451
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1453
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1560
    :goto_0
    return-object v0

    .line 1460
    :cond_0
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1461
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1474
    :goto_1
    array-length v1, p1

    .line 1475
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1477
    const/16 v2, 0x5b

    if-eq v1, v2, :cond_3

    .line 1478
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1479
    goto :goto_0

    .line 1462
    :cond_1
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 1466
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1467
    :catch_0
    move-exception v0

    .line 1468
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1482
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1485
    :goto_2
    if-eq v1, v9, :cond_4

    .line 1486
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1487
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1494
    :goto_3
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1495
    if-ne v1, v9, :cond_5

    .line 1496
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    .line 1497
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 1498
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 1499
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1501
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1511
    if-ne v1, v7, :cond_6

    .line 1512
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1505
    :cond_5
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_e

    .line 1506
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1507
    goto/16 :goto_0

    .line 1516
    :cond_6
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_7

    .line 1517
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1525
    if-ne v1, v7, :cond_8

    .line 1526
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1527
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1528
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1521
    :cond_7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1522
    goto/16 :goto_0

    .line 1532
    :cond_8
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_d

    .line 1533
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1534
    if-ne v1, v7, :cond_9

    .line 1535
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1536
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1537
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1554
    :goto_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1538
    :cond_9
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_a

    .line 1539
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1540
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1541
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 1542
    :cond_a
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_b

    .line 1543
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1544
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1545
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 1546
    :cond_b
    if-ne v1, v8, :cond_c

    .line 1547
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1548
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1549
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 1551
    :cond_c
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1552
    goto/16 :goto_0

    .line 1556
    :cond_d
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1557
    goto/16 :goto_0

    :cond_e
    move v1, v3

    goto/16 :goto_3
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x22

    const/16 v6, 0x1a

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1299
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1301
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1302
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1372
    :goto_0
    return-object v0

    .line 1306
    :cond_0
    array-length v2, p1

    .line 1307
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1309
    if-eq v2, v7, :cond_2

    .line 1310
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1311
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1318
    :cond_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1319
    if-ne v1, v7, :cond_3

    .line 1322
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    .line 1323
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    .line 1324
    invoke-virtual {p0, v1, v4, v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    .line 1325
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1337
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 1338
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1339
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1340
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1329
    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 1331
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_1

    .line 1332
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1333
    goto :goto_0

    .line 1344
    :cond_4
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_9

    .line 1345
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1346
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_5

    .line 1347
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1348
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1349
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1366
    :goto_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1350
    :cond_5
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_6

    .line 1351
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1352
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1353
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 1354
    :cond_6
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_7

    .line 1355
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1356
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 1358
    :cond_7
    if-ne v1, v6, :cond_8

    .line 1359
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1360
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1361
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1363
    :cond_8
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1364
    goto/16 :goto_0

    .line 1368
    :cond_9
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1369
    goto/16 :goto_0
.end method

.method public final scanFloat(C)F
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 2121
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2124
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v0, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2127
    if-lt v1, v4, :cond_3

    if-gt v1, v5, :cond_3

    .line 2129
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2130
    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    move v0, v1

    .line 2128
    goto :goto_0

    .line 2137
    :cond_0
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 2138
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2139
    if-lt v1, v4, :cond_1

    if-gt v1, v5, :cond_1

    .line 2141
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2142
    if-lt v0, v4, :cond_2

    if-gt v0, v5, :cond_2

    move v0, v1

    .line 2140
    goto :goto_1

    .line 2149
    :cond_1
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v2

    .line 2171
    :goto_2
    return v0

    .line 2154
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2155
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 2156
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 2157
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 2163
    if-ne v0, p1, :cond_4

    .line 2164
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2165
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2166
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2167
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v0, v2

    .line 2168
    goto :goto_2

    .line 2159
    :cond_3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v2

    .line 2160
    goto :goto_2

    .line 2170
    :cond_4
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v2

    .line 2171
    goto :goto_2
.end method

.method public final scanIdent()V
    .locals 2

    .prologue
    .line 2497
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2501
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2503
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2504
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2508
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 2510
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->keywods:Lcom/alibaba/fastjson/parser/Keywords;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/Keywords;->getKeyword(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2511
    if-eqz v0, :cond_1

    .line 2512
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2516
    :goto_0
    return-void

    .line 2514
    :cond_1
    const/16 v0, 0x12

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public scanInt(C)I
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1787
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1790
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1793
    if-lt v0, v6, :cond_2

    if-gt v0, v7, :cond_2

    .line 1794
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v0, v2, v0

    .line 1796
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1797
    if-lt v1, v6, :cond_0

    if-gt v1, v7, :cond_0

    .line 1798
    mul-int/lit8 v0, v0, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v4, v1

    add-int/2addr v0, v1

    move v1, v2

    .line 1799
    goto :goto_0

    :cond_0
    const/16 v4, 0x2e

    if-ne v1, v4, :cond_1

    .line 1800
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1823
    :goto_1
    return v0

    .line 1806
    :cond_1
    if-gez v0, :cond_3

    .line 1807
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1808
    goto :goto_1

    .line 1811
    :cond_2
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v0, v3

    .line 1812
    goto :goto_1

    .line 1815
    :cond_3
    if-ne v1, p1, :cond_4

    .line 1816
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1817
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1818
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1819
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1822
    :cond_4
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_1
.end method

.method public scanLong(C)J
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, -0x1

    .line 1993
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1996
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1999
    if-lt v0, v9, :cond_2

    if-gt v0, v10, :cond_2

    .line 2000
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v0, v1, v0

    int-to-long v0, v0

    .line 2002
    :goto_0
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2003
    if-lt v2, v9, :cond_0

    if-gt v2, v10, :cond_0

    .line 2004
    const-wide/16 v6, 0xa

    mul-long/2addr v0, v6

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v2, v6, v2

    int-to-long v6, v2

    add-long/2addr v0, v6

    move v2, v3

    .line 2005
    goto :goto_0

    :cond_0
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_1

    .line 2006
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 2029
    :goto_1
    return-wide v0

    .line 2012
    :cond_1
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 2013
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 2014
    goto :goto_1

    .line 2017
    :cond_2
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v0, v4

    .line 2018
    goto :goto_1

    .line 2021
    :cond_3
    if-ne v2, p1, :cond_4

    .line 2022
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2023
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2024
    const/4 v2, 0x3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2025
    const/16 v2, 0x10

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 2028
    :cond_4
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_1
.end method

.method public final scanNullOrNew()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 2418
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 2419
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2421
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2423
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    .line 2424
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2425
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    .line 2426
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2428
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2430
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 2431
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2433
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2435
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    .line 2436
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_4

    .line 2437
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2460
    :goto_0
    return-void

    .line 2439
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2444
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    .line 2445
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse e"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2447
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2449
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    .line 2450
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse w"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2452
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2454
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    .line 2455
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_9

    .line 2456
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2458
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/16 v7, 0x44

    const/16 v6, 0x2d

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v1, 0x1

    .line 2715
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2717
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v6, :cond_0

    .line 2718
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2719
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2723
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v5, :cond_1

    .line 2724
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2728
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 2731
    :cond_1
    const/4 v0, 0x0

    .line 2733
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_3

    .line 2734
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2735
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2739
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v5, :cond_2

    .line 2740
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2744
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    :cond_2
    move v0, v1

    .line 2748
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_5

    .line 2749
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2750
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2791
    :cond_4
    :goto_2
    if-eqz v0, :cond_10

    .line 2792
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2796
    :goto_3
    return-void

    .line 2751
    :cond_5
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_6

    .line 2752
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2753
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 2754
    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x42

    if-ne v2, v3, :cond_7

    .line 2755
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2756
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 2757
    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x46

    if-ne v2, v3, :cond_8

    .line 2758
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2759
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move v0, v1

    .line 2761
    goto :goto_2

    :cond_8
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v2, v7, :cond_9

    .line 2762
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2763
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move v0, v1

    .line 2765
    goto :goto_2

    :cond_9
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x65

    if-eq v2, v3, :cond_a

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x45

    if-ne v2, v3, :cond_4

    .line 2766
    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2767
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2769
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v6, :cond_c

    .line 2770
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2771
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2775
    :cond_c
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_d

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v5, :cond_d

    .line 2776
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2780
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 2783
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v7, :cond_e

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x46

    if-ne v0, v2, :cond_f

    .line 2784
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2785
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :cond_f
    move v0, v1

    .line 2788
    goto/16 :goto_2

    .line 2794
    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_3
.end method

.method public final scanSet()V
    .locals 2

    .prologue
    .line 2680
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    .line 2681
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2683
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2685
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 2686
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2688
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2690
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    .line 2691
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2693
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2695
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    .line 2696
    :cond_3
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2700
    return-void

    .line 2698
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v4, 0x22

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 1228
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1231
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1233
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_2

    .line 1234
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    .line 1236
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1242
    if-ne v1, p1, :cond_1

    .line 1243
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1244
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1245
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1294
    :goto_0
    return-object v0

    .line 1238
    :cond_0
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1248
    :cond_1
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1253
    :cond_2
    if-eq v2, v4, :cond_3

    .line 1254
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1256
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1262
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 1263
    invoke-virtual {p0, v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1264
    if-ne v3, v6, :cond_4

    .line 1265
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    sub-int v0, v3, v0

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 1269
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-lt v2, v3, :cond_5

    .line 1276
    :goto_2
    if-eqz v1, :cond_7

    .line 1277
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1279
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1270
    :cond_5
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_6

    .line 1271
    const/4 v1, 0x1

    .line 1272
    goto :goto_2

    .line 1269
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1282
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1283
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1287
    if-ne v1, p1, :cond_8

    .line 1288
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1289
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1290
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1293
    :cond_8
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0
.end method

.method public final scanString()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 862
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 863
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 866
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 868
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 988
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 989
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 990
    return-void

    .line 872
    :cond_0
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 873
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unclosed string : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 876
    :cond_1
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_5

    .line 877
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v0, :cond_4

    .line 878
    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 880
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 881
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 882
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-le v1, v0, :cond_2

    .line 883
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 885
    :cond_2
    new-array v0, v0, [C

    .line 886
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 890
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 895
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 897
    sparse-switch v0, :sswitch_data_0

    .line 970
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 971
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unclosed string : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 899
    :sswitch_0
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 902
    :sswitch_1
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 905
    :sswitch_2
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 908
    :sswitch_3
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 911
    :sswitch_4
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 914
    :sswitch_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 917
    :sswitch_6
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 920
    :sswitch_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 923
    :sswitch_8
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 926
    :sswitch_9
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 929
    :sswitch_a
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 932
    :sswitch_b
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 936
    :sswitch_c
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 939
    :sswitch_d
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 942
    :sswitch_e
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 945
    :sswitch_f
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 948
    :sswitch_10
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 951
    :sswitch_11
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 954
    :sswitch_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 955
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 957
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x10

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    .line 958
    int-to-char v0, v0

    .line 959
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 962
    :sswitch_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 963
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 964
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    .line 965
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    .line 966
    new-instance v4, Ljava/lang/String;

    new-array v5, v8, [C

    aput-char v0, v5, v6

    aput-char v1, v5, v7

    aput-char v2, v5, v9

    aput-char v3, v5, v10

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 967
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 976
    :cond_5
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v1, :cond_6

    .line 977
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 981
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_7

    .line 982
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 984
    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v0, v1, v2

    goto/16 :goto_0

    .line 897
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public scanStringArray(Ljava/lang/Class;C)Ljava/util/Collection;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;C)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    const/16 v7, 0x6c

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1565
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1569
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1582
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1584
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    .line 1585
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_2

    .line 1587
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1593
    if-ne v0, p2, :cond_3

    .line 1594
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1595
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1596
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1666
    :goto_1
    return-object v0

    .line 1571
    :cond_0
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1575
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1589
    :cond_2
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1590
    goto :goto_1

    .line 1599
    :cond_3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1600
    goto :goto_1

    .line 1604
    :cond_4
    const/16 v2, 0x5b

    if-eq v1, v2, :cond_5

    .line 1605
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1606
    goto :goto_1

    .line 1609
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1612
    :goto_2
    const/16 v3, 0x6e

    if-ne v1, v3, :cond_6

    .line 1613
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-ne v3, v5, :cond_6

    .line 1614
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6

    .line 1615
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6

    .line 1616
    add-int/lit8 v1, v2, 0x3

    .line 1617
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1645
    :goto_3
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_9

    .line 1646
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v2, v3

    .line 1647
    goto :goto_2

    .line 1618
    :cond_6
    const/16 v3, 0x22

    if-eq v1, v3, :cond_7

    .line 1619
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1620
    goto :goto_1

    :cond_7
    move v1, v2

    .line 1627
    :goto_4
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1628
    const/16 v5, 0x22

    if-ne v1, v5, :cond_8

    .line 1629
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    .line 1630
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 1631
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 1632
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1634
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 1638
    :cond_8
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_c

    .line 1639
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1640
    goto/16 :goto_1

    .line 1650
    :cond_9
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_a

    .line 1651
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1659
    if-ne v1, p2, :cond_b

    .line 1660
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1661
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1662
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_1

    .line 1655
    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v4

    .line 1656
    goto/16 :goto_1

    .line 1665
    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto :goto_4
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 595
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v2, :cond_0

    .line 596
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    .line 599
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v3, :cond_2

    .line 600
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 607
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 608
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 609
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 613
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 614
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 615
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 619
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    .line 620
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 624
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 625
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 636
    .line 638
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 639
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move v0, v1

    move v2, v1

    .line 643
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 645
    if-ne v4, p2, :cond_0

    .line 787
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 790
    if-nez v0, :cond_9

    .line 793
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 798
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v3, v2, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 804
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 806
    return-object v0

    .line 649
    :cond_0
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_1

    .line 650
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed.str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_1
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_5

    .line 654
    if-nez v0, :cond_4

    .line 657
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v4

    if-lt v0, v4, :cond_3

    .line 658
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 659
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-le v4, v0, :cond_2

    .line 660
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 662
    :cond_2
    new-array v0, v0, [C

    .line 663
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v5, v5

    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 669
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v4, v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    move v0, v3

    .line 672
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 674
    sparse-switch v4, :sswitch_data_0

    .line 767
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 768
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :sswitch_0
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 677
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 680
    :sswitch_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 681
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 684
    :sswitch_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 685
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 688
    :sswitch_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 689
    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 692
    :sswitch_4
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 693
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 696
    :sswitch_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 697
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 700
    :sswitch_6
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 701
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 704
    :sswitch_7
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 705
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 708
    :sswitch_8
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x8

    .line 709
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 712
    :sswitch_9
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x9

    .line 713
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 716
    :sswitch_a
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xa

    .line 717
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 720
    :sswitch_b
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xb

    .line 721
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 725
    :sswitch_c
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xc

    .line 726
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 729
    :sswitch_d
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xd

    .line 730
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 733
    :sswitch_e
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x22

    .line 734
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 737
    :sswitch_f
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x27

    .line 738
    const/16 v4, 0x27

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 741
    :sswitch_10
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x2f

    .line 742
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 745
    :sswitch_11
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x5c

    .line 746
    const/16 v4, 0x5c

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 749
    :sswitch_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 750
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 752
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v4, v6, v4

    mul-int/lit8 v4, v4, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v5, v6, v5

    add-int/2addr v4, v5

    .line 753
    int-to-char v4, v4

    .line 754
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 755
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 758
    :sswitch_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 759
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 760
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    .line 761
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    .line 762
    new-instance v8, Ljava/lang/String;

    new-array v9, v10, [C

    aput-char v4, v9, v1

    aput-char v5, v9, v3

    aput-char v6, v9, v11

    aput-char v7, v9, v12

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    const/16 v4, 0x10

    invoke-static {v8, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 763
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 764
    int-to-char v4, v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 773
    :cond_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 775
    if-nez v0, :cond_6

    .line 776
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 780
    :cond_6
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v6, v6

    if-ne v5, v6, :cond_7

    .line 781
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 783
    :cond_7
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v4, v5, v6

    goto/16 :goto_0

    .line 796
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 800
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 674
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x6c

    const/4 v2, 0x1

    .line 814
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 815
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 817
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 818
    :goto_0
    if-nez v1, :cond_1

    .line 819
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal identifier : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    .line 817
    goto :goto_0

    .line 822
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 826
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 827
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 830
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    .line 832
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 833
    aget-boolean v3, v1, v2

    if-nez v3, :cond_2

    .line 844
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 845
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 848
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const v1, 0x33c587

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_3

    .line 849
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_3

    .line 850
    const/4 v0, 0x0

    .line 855
    :goto_2
    return-object v0

    .line 838
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    .line 840
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_1

    .line 855
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 1385
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1388
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1390
    const/16 v4, 0x6e

    if-ne v2, v4, :cond_2

    .line 1391
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    .line 1393
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1399
    if-ne v0, p2, :cond_1

    .line 1400
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1401
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1402
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1445
    :goto_0
    return-object v0

    .line 1395
    :cond_0
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1396
    goto :goto_0

    .line 1405
    :cond_1
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1406
    goto :goto_0

    .line 1410
    :cond_2
    if-eq v2, v7, :cond_4

    .line 1411
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1412
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1419
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1420
    if-ne v1, v7, :cond_5

    .line 1423
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 1424
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 1425
    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    .line 1426
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1438
    if-ne v1, p2, :cond_6

    .line 1439
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1440
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1441
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1430
    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 1432
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_3

    .line 1433
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v0, v3

    .line 1434
    goto :goto_0

    .line 1444
    :cond_6
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0
.end method

.method public final scanTreeSet()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 2375
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 2376
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2378
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2380
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 2381
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2383
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2385
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_2

    .line 2386
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2388
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2390
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_3

    .line 2391
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2393
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2395
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    .line 2396
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2398
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2400
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_5

    .line 2401
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2403
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2405
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6

    .line 2406
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2408
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2410
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    .line 2411
    :cond_7
    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2415
    return-void

    .line 2413
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanTrue()V
    .locals 2

    .prologue
    .line 2346
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 2347
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2349
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2351
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 2352
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2354
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2356
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 2357
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2359
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2361
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    .line 2362
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2364
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2366
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    .line 2367
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 2368
    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2372
    return-void

    .line 2370
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanType(Ljava/lang/String;)I
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/16 v6, 0x10

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1067
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1069
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    const/4 v0, -0x2

    .line 1113
    :goto_0
    return v0

    .line 1073
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v3, v3

    add-int/2addr v2, v3

    .line 1075
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1076
    :goto_1
    if-lt v0, v3, :cond_1

    .line 1081
    add-int v0, v2, v3

    .line 1082
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1083
    goto :goto_0

    .line 1077
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v2, v0

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    move v0, v1

    .line 1078
    goto :goto_0

    .line 1076
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1086
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1088
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v2, v7, :cond_4

    .line 1089
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1090
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1091
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1092
    const/4 v0, 0x3

    goto :goto_0

    .line 1093
    :cond_4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v2, v8, :cond_5

    .line 1094
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1095
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v2, v7, :cond_6

    .line 1096
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1097
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1109
    :goto_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1112
    :cond_5
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1113
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1098
    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_7

    .line 1099
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1100
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1101
    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v2, v8, :cond_8

    .line 1102
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1103
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1104
    :cond_8
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_9

    .line 1105
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2

    :cond_9
    move v0, v1

    .line 1107
    goto/16 :goto_0
.end method

.method public final skipWhitespace()V
    .locals 2

    .prologue
    .line 2543
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->whitespaceFlags:[Z

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 2544
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 2550
    :cond_0
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, ""

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

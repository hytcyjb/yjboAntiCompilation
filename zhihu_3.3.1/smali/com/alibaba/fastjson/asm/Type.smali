.class public Lcom/alibaba/fastjson/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lcom/alibaba/fastjson/asm/Type; = null

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field private final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 98
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x0

    const/high16 v2, 0x5605

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 103
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v3, v4, v1, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 108
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x2

    const v2, 0x43000601

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 113
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x3

    const v2, 0x42000501

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 118
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x4

    const v2, 0x53000701

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 123
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x5

    const v2, 0x49000001

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 128
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x6

    const v2, 0x46020201

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 133
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x7

    const v2, 0x4a010102

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 138
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/16 v1, 0x8

    const v2, 0x44030302

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    .line 180
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    .line 181
    iput p3, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    .line 182
    iput p4, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    .line 183
    return-void
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x4a

    const/16 v5, 0x44

    const/4 v1, 0x1

    .line 204
    move v0, v1

    move v2, v1

    .line 207
    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 208
    const/16 v4, 0x29

    if-ne v0, v4, :cond_3

    .line 209
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    shl-int/lit8 v2, v2, 0x2

    const/16 v3, 0x56

    if-ne v0, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_1
    or-int v0, v2, v1

    return v0

    :cond_1
    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 211
    :cond_3
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_5

    move v0, v3

    .line 212
    :goto_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_4

    move v0, v3

    goto :goto_2

    .line 214
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 222
    :cond_5
    if-eq v0, v5, :cond_6

    if-ne v0, v6, :cond_7

    .line 223
    :cond_6
    add-int/lit8 v2, v2, 0x2

    move v0, v3

    goto :goto_0

    .line 225
    :cond_7
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
    .locals 2
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lcom/alibaba/fastjson/asm/Type;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3b

    const/4 v0, 0x1

    .line 239
    aget-char v1, p0, p1

    sparse-switch v1, :sswitch_data_0

    .line 273
    :goto_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_2

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 276
    :goto_1
    return-object v0

    .line 243
    :sswitch_1
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 245
    :sswitch_2
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 247
    :sswitch_3
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 249
    :sswitch_4
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 251
    :sswitch_5
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 253
    :sswitch_6
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 255
    :sswitch_7
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 257
    :sswitch_8
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    goto :goto_1

    .line 260
    :goto_2
    :sswitch_9
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 263
    :cond_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 265
    :goto_3
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_1

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 269
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    move-object v0, v1

    goto :goto_1

    .line 276
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v2, p0, v3, v0}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    move-object v0, v1

    goto :goto_1

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_8
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_7
        0x53 -> :sswitch_4
        0x56 -> :sswitch_0
        0x5a -> :sswitch_1
        0x5b -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method getDescriptor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    return v0
.end method

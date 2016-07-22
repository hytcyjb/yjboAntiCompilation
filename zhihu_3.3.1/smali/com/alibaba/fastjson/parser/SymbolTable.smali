.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    }
.end annotation


# static fields
.field public static final DEFAULT_TABLE_SIZE:I = 0x100

.field public static final MAX_BUCKET_LENTH:I = 0x8

.field public static final MAX_SIZE:I = 0x800


# instance fields
.field private final buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

.field private final indexMask:I

.field private size:I

.field private final symbols:[Ljava/lang/String;

.field private final symbols_char:[[C


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 38
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    .line 39
    const-string v0, "$ref"

    const-string v1, "$ref"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 44
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    .line 45
    new-array v0, p1, [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .line 46
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    .line 47
    new-array v0, p1, [[C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    .line 48
    return-void
.end method

.method public static final hash([CII)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 204
    move v1, v0

    .line 207
    :goto_0
    if-ge v0, p2, :cond_0

    .line 208
    mul-int/lit8 v2, v1, 0x1f

    add-int/lit8 v1, p1, 0x1

    aget-char v3, p0, p1

    add-int/2addr v2, v3

    .line 207
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move v1, v2

    goto :goto_0

    .line 210
    :cond_0
    return v1
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v7, p4, v0

    .line 135
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v3, v0, v7

    .line 139
    if-eqz v3, :cond_c

    .line 140
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_3

    .line 141
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    aget-object v4, v0, v7

    move v0, v1

    .line 143
    :goto_0
    if-ge v0, p3, :cond_b

    .line 144
    add-int v5, p2, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-char v6, v4, v0

    if-eq v5, v6, :cond_0

    move v0, v1

    .line 150
    :goto_1
    if-eqz v0, :cond_1

    move-object v0, v3

    .line 196
    :goto_2
    return-object v0

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v6, v0

    .line 160
    :goto_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v0, v0, v7

    move-object v4, v0

    move v0, v1

    :goto_4
    if-eqz v4, :cond_6

    .line 161
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 162
    array-length v3, v5

    if-ne p3, v3, :cond_2

    iget v3, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, v3, :cond_2

    move v3, v1

    .line 164
    :goto_5
    if-ge v3, p3, :cond_a

    .line 165
    add-int v8, p2, v3

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-char v9, v5, v3

    if-eq v8, v9, :cond_4

    move v3, v1

    .line 171
    :goto_6
    if-nez v3, :cond_5

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_2
    iget-object v3, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    move-object v4, v3

    goto :goto_4

    :cond_3
    move v6, v1

    .line 154
    goto :goto_3

    .line 164
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 175
    :cond_5
    iget-object v0, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_2

    .line 178
    :cond_6
    const/16 v1, 0x8

    if-lt v0, v1, :cond_7

    .line 179
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 184
    :cond_7
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_8

    .line 186
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 189
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v5, v1, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;IIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V

    .line 190
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v0, v1, v7

    .line 191
    if-eqz v6, :cond_9

    .line 192
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 193
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    aput-object v2, v1, v7

    .line 195
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 196
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_2

    :cond_a
    move v3, v2

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v6, v2

    goto :goto_3
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->hash([CII)I

    move-result v0

    .line 53
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v7, p4, v0

    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v3, v0, v7

    .line 73
    if-eqz v3, :cond_c

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_3

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    aget-object v4, v0, v7

    move v0, v1

    .line 77
    :goto_0
    if-ge v0, p3, :cond_b

    .line 78
    add-int v5, p2, v0

    aget-char v5, p1, v5

    aget-char v6, v4, v0

    if-eq v5, v6, :cond_0

    move v0, v1

    .line 84
    :goto_1
    if-eqz v0, :cond_1

    move-object v0, v3

    .line 128
    :goto_2
    return-object v0

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v6, v0

    .line 94
    :goto_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v0, v0, v7

    move-object v4, v0

    move v0, v1

    :goto_4
    if-eqz v4, :cond_6

    .line 95
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 96
    array-length v3, v5

    if-ne p3, v3, :cond_2

    iget v3, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, v3, :cond_2

    move v3, v1

    .line 98
    :goto_5
    if-ge v3, p3, :cond_a

    .line 99
    add-int v8, p2, v3

    aget-char v8, p1, v8

    aget-char v9, v5, v3

    if-eq v8, v9, :cond_4

    move v3, v1

    .line 105
    :goto_6
    if-nez v3, :cond_5

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 94
    :cond_2
    iget-object v3, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    move-object v4, v3

    goto :goto_4

    :cond_3
    move v6, v1

    .line 88
    goto :goto_3

    .line 98
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 109
    :cond_5
    iget-object v0, v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_2

    .line 112
    :cond_6
    const/16 v1, 0x8

    if-lt v0, v1, :cond_7

    .line 113
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 117
    :cond_7
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_8

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 121
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v5, v1, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>([CIIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V

    .line 122
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v0, v1, v7

    .line 123
    if-eqz v6, :cond_9

    .line 124
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 125
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    aput-object v2, v1, v7

    .line 127
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 128
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_2

    :cond_a
    move v3, v2

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v6, v2

    goto :goto_3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    return v0
.end method

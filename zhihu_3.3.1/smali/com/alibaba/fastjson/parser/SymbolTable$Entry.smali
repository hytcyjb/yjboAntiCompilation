.class public final Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public final bytes:[B

.field public final characters:[C

.field public final hashCode:I

.field public next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 238
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .line 239
    iput p4, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->bytes:[B

    .line 241
    return-void
.end method

.method public constructor <init>([CIIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 228
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    .line 230
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .line 231
    iput p4, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->bytes:[B

    .line 233
    return-void
.end method

.class final Lcom/squareup/wire/ExtensionMap;
.super Ljava/lang/Object;
.source "ExtensionMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x1


# instance fields
.field private data:[Ljava/lang/Object;

.field private size:I


# direct methods
.method public constructor <init>(Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;TE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    .local p1, extension:Lcom/squareup/wire/Extension;,"Lcom/squareup/wire/Extension<TT;TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 41
    iget-object v0, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 42
    iput v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/ExtensionMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    .local p1, other:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p1, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    .line 48
    iget v0, p1, Lcom/squareup/wire/ExtensionMap;->size:I

    iput v0, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    .line 49
    return-void
.end method

.method private insert(Lcom/squareup/wire/Extension;Ljava/lang/Object;I)V
    .locals 5
    .parameter
    .parameter
    .parameter "insertionPoint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;TE;I)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    .local p1, key:Lcom/squareup/wire/Extension;,"Lcom/squareup/wire/Extension<TT;TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    .line 112
    .local v0, dest:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    invoke-static {v1, v3, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :cond_0
    iget v1, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    if-ge p3, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    sub-int/2addr v4, p3

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    invoke-static {v1, p3, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :goto_0
    iget v1, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    .line 144
    iput-object v0, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    aput-object p1, v1, p3

    .line 147
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/2addr v2, p3

    aput-object p2, v1, v2

    .line 148
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    iget v3, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    const/4 v2, 0x0

    .line 152
    instance-of v3, p1, Lcom/squareup/wire/ExtensionMap;

    if-nez v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 155
    check-cast v1, Lcom/squareup/wire/ExtensionMap;

    .line 156
    .local v1, other:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    iget v3, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    iget v4, v1, Lcom/squareup/wire/ExtensionMap;->size:I

    if-ne v3, v4, :cond_0

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_2

    .line 160
    iget-object v3, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v3, v3, v0

    iget-object v4, v1, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public get(Lcom/squareup/wire/Extension;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    .local p1, extension:Lcom/squareup/wire/Extension;,"Lcom/squareup/wire/Extension<TT;TE;>;"
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    invoke-static {v1, v2, v3, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getExtension(I)Lcom/squareup/wire/Extension;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/Extension",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    if-lt p1, v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/squareup/wire/Extension;

    return-object v0
.end method

.method public getExtensionValue(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 64
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    if-lt p1, v0, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/Extension",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v1, keyList:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/wire/Extension<TT;*>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    if-ge v0, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/squareup/wire/Extension;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 168
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 170
    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return v1
.end method

.method public put(Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;TE;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    .local p1, extension:Lcom/squareup/wire/Extension;,"Lcom/squareup/wire/Extension<TT;TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    invoke-static {v1, v2, v3, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    .line 102
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/2addr v2, v0

    aput-object p2, v1, v2

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    invoke-direct {p0, p1, p2, v1}, Lcom/squareup/wire/ExtensionMap;->insert(Lcom/squareup/wire/Extension;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    iget v0, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    .local p0, this:Lcom/squareup/wire/ExtensionMap;,"Lcom/squareup/wire/ExtensionMap<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v2, ""

    .line 180
    .local v2, sep:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    if-ge v0, v3, :cond_0

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v3, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/squareup/wire/Extension;

    invoke-virtual {v3}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v3, p0, Lcom/squareup/wire/ExtensionMap;->data:[Ljava/lang/Object;

    iget v4, p0, Lcom/squareup/wire/ExtensionMap;->size:I

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, ", "

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.class public final Lcom/squareup/protoparser/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# instance fields
.field private final documentation:Ljava/lang/String;

.field private final end:I

.field private final start:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .parameter "documentation"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "documentation"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    invoke-static {p2}, Lcom/squareup/protoparser/ProtoFile;->isValidTag(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid start value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    invoke-static {p3}, Lcom/squareup/protoparser/ProtoFile;->isValidTag(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid end value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    iput-object p1, p0, Lcom/squareup/protoparser/Extensions;->documentation:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/squareup/protoparser/Extensions;->start:I

    .line 19
    iput p3, p0, Lcom/squareup/protoparser/Extensions;->end:I

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    instance-of v3, p1, Lcom/squareup/protoparser/Extensions;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/squareup/protoparser/Extensions;

    .line 39
    .local v0, that:Lcom/squareup/protoparser/Extensions;
    iget v3, p0, Lcom/squareup/protoparser/Extensions;->end:I

    iget v4, v0, Lcom/squareup/protoparser/Extensions;->end:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/squareup/protoparser/Extensions;->start:I

    iget v4, v0, Lcom/squareup/protoparser/Extensions;->start:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/Extensions;->documentation:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/Extensions;->documentation:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDocumentation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/squareup/protoparser/Extensions;->documentation:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/squareup/protoparser/Extensions;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/squareup/protoparser/Extensions;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/squareup/protoparser/Extensions;->documentation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 46
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/squareup/protoparser/Extensions;->start:I

    add-int v0, v1, v2

    .line 47
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/squareup/protoparser/Extensions;->end:I

    add-int v0, v1, v2

    .line 48
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/squareup/protoparser/Extensions;->documentation:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/squareup/protoparser/Utils;->appendDocumentation(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    const-string v1, "extensions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/protoparser/Extensions;->start:I

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/squareup/protoparser/Extensions;->start:I

    iget v2, p0, Lcom/squareup/protoparser/Extensions;->end:I

    if-eq v1, v2, :cond_0

    .line 57
    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/squareup/protoparser/Extensions;->end:I

    const v2, 0x1fffffff

    if-ge v1, v2, :cond_1

    .line 59
    iget v1, p0, Lcom/squareup/protoparser/Extensions;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    :goto_0
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    :cond_1
    const-string v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

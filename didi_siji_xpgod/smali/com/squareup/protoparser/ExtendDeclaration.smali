.class public final Lcom/squareup/protoparser/ExtendDeclaration;
.super Ljava/lang/Object;
.source "ExtendDeclaration.java"


# instance fields
.field private final documentation:Ljava/lang/String;

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/MessageType$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final fqname:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "name"
    .parameter "fqname"
    .parameter "documentation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/MessageType$Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p4, fields:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/MessageType$Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p2, p4}, Lcom/squareup/protoparser/MessageType;->validateFieldTagUniqueness(Ljava/lang/String;Ljava/util/List;)V

    .line 21
    iput-object p1, p0, Lcom/squareup/protoparser/ExtendDeclaration;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fqname:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/squareup/protoparser/ExtendDeclaration;->documentation:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fields:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    instance-of v3, p1, Lcom/squareup/protoparser/ExtendDeclaration;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/squareup/protoparser/ExtendDeclaration;

    .line 48
    .local v0, that:Lcom/squareup/protoparser/ExtendDeclaration;
    iget-object v3, p0, Lcom/squareup/protoparser/ExtendDeclaration;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/ExtendDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fqname:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/ExtendDeclaration;->fqname:Ljava/lang/String;

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/ExtendDeclaration;->documentation:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/ExtendDeclaration;->documentation:Ljava/lang/String;

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fields:Ljava/util/List;

    iget-object v4, v0, Lcom/squareup/protoparser/ExtendDeclaration;->fields:Ljava/util/List;

    .line 51
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDocumentation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/protoparser/ExtendDeclaration;->documentation:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/MessageType$Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getFullyQualifiedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fqname:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/protoparser/ExtendDeclaration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/squareup/protoparser/ExtendDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 56
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fqname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 57
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/ExtendDeclaration;->documentation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 58
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 59
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/squareup/protoparser/ExtendDeclaration;->documentation:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/squareup/protoparser/Utils;->appendDocumentation(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    const-string v2, "extend "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/protoparser/ExtendDeclaration;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " {"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v2, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    iget-object v2, p0, Lcom/squareup/protoparser/ExtendDeclaration;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/MessageType$Field;

    .line 71
    .local v1, field:Lcom/squareup/protoparser/MessageType$Field;
    invoke-virtual {v1}, Lcom/squareup/protoparser/MessageType$Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/squareup/protoparser/Utils;->appendIndented(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v1           #field:Lcom/squareup/protoparser/MessageType$Field;
    :cond_0
    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

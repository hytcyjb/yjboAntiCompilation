.class public final Lcom/squareup/protoparser/EnumType;
.super Ljava/lang/Object;
.source "EnumType.java"

# interfaces
.implements Lcom/squareup/protoparser/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/protoparser/EnumType$Value;
    }
.end annotation


# instance fields
.field private final documentation:Ljava/lang/String;

.field private final fqname:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/EnumType$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter "name"
    .parameter "fqname"
    .parameter "documentation"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/EnumType$Value;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p4, options:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Option;>;"
    .local p5, values:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/EnumType$Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fqname"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "documentation"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "options"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_4
    invoke-static {p2, p5}, Lcom/squareup/protoparser/EnumType;->validateTagUniqueness(Ljava/lang/String;Ljava/util/List;)V

    .line 60
    iput-object p1, p0, Lcom/squareup/protoparser/EnumType;->name:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/squareup/protoparser/EnumType;->fqname:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/squareup/protoparser/EnumType;->documentation:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/protoparser/EnumType;->options:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/protoparser/EnumType;->values:Ljava/util/List;

    .line 65
    return-void
.end method

.method static validateTagUniqueness(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/EnumType$Value;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/EnumType$Value;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 18
    .local v1, tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/protoparser/EnumType$Value;

    .line 19
    .local v2, value:Lcom/squareup/protoparser/EnumType$Value;
    invoke-virtual {v2}, Lcom/squareup/protoparser/EnumType$Value;->getTag()I

    move-result v0

    .line 20
    .local v0, tag:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 21
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 24
    .end local v0           #tag:I
    .end local v2           #value:Lcom/squareup/protoparser/EnumType$Value;
    :cond_1
    return-void
.end method

.method static validateValueUniquenessInScope(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, nestedTypes:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/protoparser/Type;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    .local v2, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/protoparser/Type;

    .line 33
    .local v3, nestedType:Lcom/squareup/protoparser/Type;
    instance-of v6, v3, Lcom/squareup/protoparser/EnumType;

    if-eqz v6, :cond_0

    move-object v0, v3

    .line 34
    check-cast v0, Lcom/squareup/protoparser/EnumType;

    .line 35
    .local v0, enumType:Lcom/squareup/protoparser/EnumType;
    invoke-virtual {v0}, Lcom/squareup/protoparser/EnumType;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/protoparser/EnumType$Value;

    .line 36
    .local v4, value:Lcom/squareup/protoparser/EnumType$Value;
    invoke-virtual {v4}, Lcom/squareup/protoparser/EnumType$Value;->getName()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, name:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 38
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate enum name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in scope "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 43
    .end local v0           #enumType:Lcom/squareup/protoparser/EnumType;
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #nestedType:Lcom/squareup/protoparser/Type;
    .end local v4           #value:Lcom/squareup/protoparser/EnumType$Value;
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    instance-of v3, p1, Lcom/squareup/protoparser/EnumType;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/squareup/protoparser/EnumType;

    .line 96
    .local v0, that:Lcom/squareup/protoparser/EnumType;
    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/EnumType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->fqname:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/EnumType;->fqname:Ljava/lang/String;

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->documentation:Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/protoparser/EnumType;->documentation:Ljava/lang/String;

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->options:Ljava/util/List;

    iget-object v4, v0, Lcom/squareup/protoparser/EnumType;->options:Ljava/util/List;

    .line 99
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->values:Ljava/util/List;

    iget-object v4, v0, Lcom/squareup/protoparser/EnumType;->values:Ljava/util/List;

    .line 100
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
    .line 76
    iget-object v0, p0, Lcom/squareup/protoparser/EnumType;->documentation:Ljava/lang/String;

    return-object v0
.end method

.method public getFullyQualifiedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/squareup/protoparser/EnumType;->fqname:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/squareup/protoparser/EnumType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNestedTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/Option;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/squareup/protoparser/EnumType;->options:Ljava/util/List;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/protoparser/EnumType$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/squareup/protoparser/EnumType;->values:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/squareup/protoparser/EnumType;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 105
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/EnumType;->fqname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 106
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/EnumType;->documentation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 107
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/EnumType;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 108
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/protoparser/EnumType;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 109
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->documentation:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/squareup/protoparser/Utils;->appendDocumentation(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 115
    const-string v3, "enum "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/protoparser/EnumType;->name:Ljava/lang/String;

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " {"

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/protoparser/Option;

    .line 121
    .local v1, option:Lcom/squareup/protoparser/Option;
    invoke-virtual {v1}, Lcom/squareup/protoparser/Option;->toDeclaration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/squareup/protoparser/Utils;->appendIndented(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v1           #option:Lcom/squareup/protoparser/Option;
    :cond_0
    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    iget-object v3, p0, Lcom/squareup/protoparser/EnumType;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/protoparser/EnumType$Value;

    .line 127
    .local v2, value:Lcom/squareup/protoparser/EnumType$Value;
    invoke-virtual {v2}, Lcom/squareup/protoparser/EnumType$Value;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/squareup/protoparser/Utils;->appendIndented(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .end local v2           #value:Lcom/squareup/protoparser/EnumType$Value;
    :cond_1
    const-string v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.class abstract Lcom/squareup/wire/AbstractServiceWriter;
.super Lcom/squareup/wire/ServiceWriter;
.source "AbstractServiceWriter.java"


# direct methods
.method public constructor <init>(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;)V
    .locals 0
    .parameter "writer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javawriter/JavaWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ServiceWriter;-><init>(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;)V

    .line 18
    return-void
.end method


# virtual methods
.method emitAnnotation(Lcom/squareup/protoparser/Service;Lcom/squareup/protoparser/Service$Method;)V
    .locals 0
    .parameter "service"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public emitService(Lcom/squareup/protoparser/Service;Ljava/util/Set;)V
    .locals 12
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/Service;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, importedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/squareup/wire/AbstractServiceWriter;->getImports(Lcom/squareup/protoparser/Service;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v0, p0, Lcom/squareup/wire/AbstractServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    .line 24
    iget-object v0, p0, Lcom/squareup/wire/AbstractServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 26
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getDocumentation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/squareup/wire/AbstractServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getDocumentation()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/AbstractServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "interface"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    .line 30
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/protoparser/Service$Method;

    .line 31
    .local v7, method:Lcom/squareup/protoparser/Service$Method;
    invoke-virtual {v7}, Lcom/squareup/protoparser/Service$Method;->getRequestType()Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, requestType:Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 33
    .local v6, index:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1

    .line 34
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 37
    :cond_1
    invoke-virtual {v7}, Lcom/squareup/protoparser/Service$Method;->getDocumentation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/squareup/wire/AbstractServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v7}, Lcom/squareup/protoparser/Service$Method;->getDocumentation()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 40
    :cond_2
    invoke-virtual {p0, p1, v7}, Lcom/squareup/wire/AbstractServiceWriter;->emitAnnotation(Lcom/squareup/protoparser/Service;Lcom/squareup/protoparser/Service$Method;)V

    .line 41
    iget-object v0, p0, Lcom/squareup/wire/AbstractServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v7}, Lcom/squareup/protoparser/Service$Method;->getResponseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/squareup/wire/AbstractServiceWriter;->getMethodName(Lcom/squareup/protoparser/Service$Method;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljavax/lang/model/element/Modifier;

    .line 42
    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v8}, Lcom/squareup/wire/AbstractServiceWriter;->getRequestType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x1

    invoke-virtual {p0, v8}, Lcom/squareup/wire/AbstractServiceWriter;->getRequestName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/squareup/wire/AbstractServiceWriter;->getThrows()Ljava/util/List;

    move-result-object v5

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    .line 44
    iget-object v0, p0, Lcom/squareup/wire/AbstractServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    goto :goto_0

    .line 46
    .end local v6           #index:I
    .end local v7           #method:Lcom/squareup/protoparser/Service$Method;
    .end local v8           #requestType:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/squareup/wire/AbstractServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 47
    return-void
.end method

.method getImports(Lcom/squareup/protoparser/Service;)Ljava/util/List;
    .locals 1
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/protoparser/Service;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method getMethodName(Lcom/squareup/protoparser/Service$Method;)Ljava/lang/String;
    .locals 1
    .parameter "method"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service$Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/AbstractServiceWriter;->lowerCaseInitialLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRequestName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "requestType"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/squareup/wire/AbstractServiceWriter;->lowerCaseInitialLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRequestType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "baseType"

    .prologue
    .line 70
    return-object p1
.end method

.method getThrows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method lowerCaseInitialLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

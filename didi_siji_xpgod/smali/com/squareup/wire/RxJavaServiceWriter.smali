.class public Lcom/squareup/wire/RxJavaServiceWriter;
.super Lcom/squareup/wire/ServiceWriter;
.source "RxJavaServiceWriter.java"


# instance fields
.field func1Type:Ljava/lang/String;

.field requestType:Ljava/lang/String;

.field responseType:Ljava/lang/String;


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
    .line 21
    .local p2, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ServiceWriter;-><init>(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;)V

    .line 22
    return-void
.end method

.method private getMethodName(Lcom/squareup/protoparser/Service$Method;)Ljava/lang/String;
    .locals 1
    .parameter "method"

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service$Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/RxJavaServiceWriter;->lowerCaseInitialLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setTypes(Lcom/squareup/protoparser/Service$Method;)V
    .locals 2
    .parameter "method"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {p1}, Lcom/squareup/protoparser/Service$Method;->getRequestType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->requestType:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {p1}, Lcom/squareup/protoparser/Service$Method;->getResponseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->responseType:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Func1<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->requestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->responseType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->func1Type:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
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
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 26
    const-string v0, "javax.inject.Inject"

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "retrofit.http.Body"

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v0, "retrofit.http.POST"

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v0, "rx.functions.Func1"

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    .line 34
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 36
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getDocumentation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getDocumentation()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    .line 41
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 42
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    const-string v1, "Endpoint"

    const-string v2, "interface"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    .line 43
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/protoparser/Service$Method;

    .line 44
    .local v6, method:Lcom/squareup/protoparser/Service$Method;
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 45
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v6}, Lcom/squareup/protoparser/Service$Method;->getDocumentation()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 47
    invoke-direct {p0, v6}, Lcom/squareup/wire/RxJavaServiceWriter;->setTypes(Lcom/squareup/protoparser/Service$Method;)V

    .line 48
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/squareup/protoparser/Service$Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 50
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->responseType:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/squareup/wire/RxJavaServiceWriter;->getMethodName(Lcom/squareup/protoparser/Service$Method;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljavax/lang/model/element/Modifier;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@Body "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/squareup/wire/RxJavaServiceWriter;->requestType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "request"

    aput-object v5, v4, v10

    .line 51
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    .line 52
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_0

    .line 54
    .end local v6           #method:Lcom/squareup/protoparser/Service$Method;
    :cond_2
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 56
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/protoparser/Service$Method;

    .line 57
    .restart local v6       #method:Lcom/squareup/protoparser/Service$Method;
    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 59
    invoke-direct {p0, v6}, Lcom/squareup/wire/RxJavaServiceWriter;->setTypes(Lcom/squareup/protoparser/Service$Method;)V

    .line 60
    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    iget-object v2, p0, Lcom/squareup/wire/RxJavaServiceWriter;->func1Type:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/squareup/wire/RxJavaServiceWriter;->getMethodName(Lcom/squareup/protoparser/Service$Method;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    .line 61
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nnew "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/squareup/wire/RxJavaServiceWriter;->func1Type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "() {\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  @Override\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  public "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/squareup/wire/RxJavaServiceWriter;->responseType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " call("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/squareup/wire/RxJavaServiceWriter;->requestType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " request) {\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "    return endpoint."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 65
    invoke-direct {p0, v6}, Lcom/squareup/wire/RxJavaServiceWriter;->getMethodName(Lcom/squareup/protoparser/Service$Method;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "(request);\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  }\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto/16 :goto_1

    .line 70
    .end local v6           #method:Lcom/squareup/protoparser/Service$Method;
    :cond_3
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 71
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    const-string v1, "Endpoint"

    const-string v2, "endpoint"

    sget-object v3, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;

    .line 73
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 74
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    const-string v1, "Inject"

    invoke-virtual {v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 75
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "Endpoint"

    aput-object v3, v2, v9

    const-string v3, "endpoint"

    aput-object v3, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->beginConstructor(Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 76
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    const-string v1, "this.endpoint = endpoint"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 77
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->endConstructor()Lcom/squareup/javawriter/JavaWriter;

    .line 79
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/protoparser/Service$Method;

    .line 80
    .restart local v6       #method:Lcom/squareup/protoparser/Service$Method;
    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v1}, Lcom/squareup/javawriter/JavaWriter;->emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;

    .line 82
    invoke-direct {p0, v6}, Lcom/squareup/wire/RxJavaServiceWriter;->setTypes(Lcom/squareup/protoparser/Service$Method;)V

    .line 83
    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    iget-object v2, p0, Lcom/squareup/wire/RxJavaServiceWriter;->func1Type:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/squareup/protoparser/Service$Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 84
    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v6}, Lcom/squareup/wire/RxJavaServiceWriter;->getMethodName(Lcom/squareup/protoparser/Service$Method;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/javawriter/JavaWriter;->emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 85
    iget-object v1, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v1}, Lcom/squareup/javawriter/JavaWriter;->endMethod()Lcom/squareup/javawriter/JavaWriter;

    goto :goto_2

    .line 88
    .end local v6           #method:Lcom/squareup/protoparser/Service$Method;
    :cond_4
    iget-object v0, p0, Lcom/squareup/wire/RxJavaServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    invoke-virtual {v0}, Lcom/squareup/javawriter/JavaWriter;->endType()Lcom/squareup/javawriter/JavaWriter;

    .line 89
    return-void
.end method

.method lowerCaseInitialLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    .line 102
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

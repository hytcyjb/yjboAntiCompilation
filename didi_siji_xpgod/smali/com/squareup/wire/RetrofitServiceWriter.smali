.class public Lcom/squareup/wire/RetrofitServiceWriter;
.super Lcom/squareup/wire/AbstractServiceWriter;
.source "RetrofitServiceWriter.java"


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
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/AbstractServiceWriter;-><init>(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;)V

    .line 18
    return-void
.end method


# virtual methods
.method emitAnnotation(Lcom/squareup/protoparser/Service;Lcom/squareup/protoparser/Service$Method;)V
    .locals 4
    .parameter "service"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/wire/RetrofitServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/squareup/protoparser/Service$Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 30
    return-void
.end method

.method public bridge synthetic emitService(Lcom/squareup/protoparser/Service;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/squareup/wire/AbstractServiceWriter;->emitService(Lcom/squareup/protoparser/Service;Ljava/util/Set;)V

    return-void
.end method

.method getImports(Lcom/squareup/protoparser/Service;)Ljava/util/List;
    .locals 3
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
    .line 21
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "retrofit.http.Body"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "retrofit.http.POST"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method getRequestName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "requestType"

    .prologue
    .line 37
    const-string v0, "request"

    return-object v0
.end method

.method getRequestType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "requestType"

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Body "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/squareup/wire/SimpleServiceWriter;
.super Lcom/squareup/wire/AbstractServiceWriter;
.source "SimpleServiceWriter.java"


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
    .line 16
    .local p2, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/AbstractServiceWriter;-><init>(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;)V

    .line 17
    return-void
.end method


# virtual methods
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
    .line 13
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
    .line 20
    invoke-virtual {p1}, Lcom/squareup/protoparser/Service;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "java.io.IOException"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 23
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
    .line 31
    invoke-virtual {p0, p1}, Lcom/squareup/wire/SimpleServiceWriter;->lowerCaseInitialLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getThrows()Ljava/util/List;
    .locals 3
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
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "java.io.IOException"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

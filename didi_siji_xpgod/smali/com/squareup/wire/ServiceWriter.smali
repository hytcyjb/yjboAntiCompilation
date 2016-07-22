.class public abstract Lcom/squareup/wire/ServiceWriter;
.super Ljava/lang/Object;
.source "ServiceWriter.java"


# instance fields
.field protected final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final writer:Lcom/squareup/javawriter/JavaWriter;


# direct methods
.method protected constructor <init>(Lcom/squareup/javawriter/JavaWriter;Ljava/util/List;)V
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
    .line 22
    .local p2, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/squareup/wire/ServiceWriter;->writer:Lcom/squareup/javawriter/JavaWriter;

    .line 24
    iput-object p2, p0, Lcom/squareup/wire/ServiceWriter;->options:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract emitService(Lcom/squareup/protoparser/Service;Ljava/util/Set;)V
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
.end method

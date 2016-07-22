.class interface abstract Lcom/squareup/wire/IO;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/IO$FileIO;
    }
.end annotation


# virtual methods
.method public abstract getJavaWriter(Lcom/squareup/wire/OutputArtifact;)Lcom/squareup/javawriter/JavaWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;)Lcom/squareup/protoparser/ProtoFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

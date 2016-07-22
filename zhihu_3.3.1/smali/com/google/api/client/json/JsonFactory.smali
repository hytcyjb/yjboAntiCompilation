.class public abstract Lcom/google/api/client/json/JsonFactory;
.super Ljava/lang/Object;
.source "JsonFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toByteStream(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 167
    sget-object v1, Lcom/google/api/client/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v1

    .line 168
    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonGenerator;->enablePrettyPrint()V

    .line 171
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonGenerator;->flush()V

    .line 173
    return-object v0
.end method

.method private toString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/json/JsonFactory;->toByteStream(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
.end method

.method public abstract createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
.end method

.method public final createJsonObjectParser()Lcom/google/api/client/json/JsonObjectParser;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/api/client/json/JsonObjectParser;

    invoke-direct {v0, p0}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public abstract createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
.end method

.method public abstract createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
.end method

.method public abstract createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
.end method

.method public abstract createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
.end method

.method public final fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromInputStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromReader(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toByteArray(Ljava/lang/Object;)[B
    .locals 1
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->toByteStream(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final toPrettyString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

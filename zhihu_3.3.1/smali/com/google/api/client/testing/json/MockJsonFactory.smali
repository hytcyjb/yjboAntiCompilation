.class public Lcom/google/api/client/testing/json/MockJsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "MockJsonFactory.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Lcom/google/api/client/testing/json/MockJsonGenerator;

    invoke-direct {v0, p0}, Lcom/google/api/client/testing/json/MockJsonGenerator;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .locals 1
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/api/client/testing/json/MockJsonGenerator;

    invoke-direct {v0, p0}, Lcom/google/api/client/testing/json/MockJsonGenerator;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .locals 1
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {v0, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {v0, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .locals 1
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {v0, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .locals 1
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {v0, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

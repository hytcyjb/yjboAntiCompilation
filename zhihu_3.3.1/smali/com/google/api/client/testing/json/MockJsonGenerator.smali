.class public Lcom/google/api/client/testing/json/MockJsonGenerator;
.super Lcom/google/api/client/json/JsonGenerator;
.source "MockJsonGenerator.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private final factory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/JsonGenerator;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/api/client/testing/json/MockJsonGenerator;->factory:Lcom/google/api/client/json/JsonFactory;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/api/client/testing/json/MockJsonGenerator;->factory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 0
    .parameter

    .prologue
    .line 88
    return-void
.end method

.method public writeEndArray()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public writeEndObject()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public writeNull()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public writeNumber(D)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public writeNumber(F)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public writeNumber(I)V
    .locals 0
    .parameter

    .prologue
    .line 92
    return-void
.end method

.method public writeNumber(J)V
    .locals 0
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    return-void
.end method

.method public writeStartArray()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public writeStartObject()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    return-void
.end method

.class Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;
.super Lcom/google/api/client/json/JsonGenerator;
.source "AndroidJsonGenerator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator$StringNumber;
    }
.end annotation


# instance fields
.field private final factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

.field private final writer:Landroid/util/JsonWriter;


# direct methods
.method constructor <init>(Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;Landroid/util/JsonWriter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/api/client/json/JsonGenerator;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    .line 46
    iput-object p2, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/util/JsonWriter;->setLenient(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    .line 59
    return-void
.end method

.method public enablePrettyPrint()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    .line 54
    return-void
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->factory:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 69
    return-void
.end method

.method public writeEndArray()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 74
    return-void
.end method

.method public writeEndObject()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 79
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 84
    return-void
.end method

.method public writeNull()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 89
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 109
    return-void
.end method

.method public writeNumber(F)V
    .locals 4
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 114
    return-void
.end method

.method public writeNumber(I)V
    .locals 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 94
    return-void
.end method

.method public writeNumber(J)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 99
    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    new-instance v1, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator$StringNumber;

    invoke-direct {v1, p1}, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator$StringNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 164
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 119
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 104
    return-void
.end method

.method public writeStartArray()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 169
    return-void
.end method

.method public writeStartObject()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 174
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 179
    return-void
.end method

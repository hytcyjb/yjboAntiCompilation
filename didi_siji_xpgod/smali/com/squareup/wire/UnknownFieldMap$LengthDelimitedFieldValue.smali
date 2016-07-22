.class final Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;
.super Lcom/squareup/wire/UnknownFieldMap$FieldValue;
.source "UnknownFieldMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/UnknownFieldMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LengthDelimitedFieldValue"
.end annotation


# instance fields
.field private final value:Lokio/ByteString;


# direct methods
.method public constructor <init>(ILokio/ByteString;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 159
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/wire/WireType;)V

    .line 160
    iput-object p2, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    .line 161
    return-void
.end method


# virtual methods
.method public getAsBytes()Lokio/ByteString;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    iget-object v1, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public write(ILcom/squareup/wire/WireOutput;)V
    .locals 1
    .parameter "tag"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 169
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 170
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    .line 171
    return-void
.end method

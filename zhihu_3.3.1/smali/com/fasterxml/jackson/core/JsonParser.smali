.class public abstract Lcom/fasterxml/jackson/core/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonParser$1;,
        Lcom/fasterxml/jackson/core/JsonParser$Feature;,
        Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    }
.end annotation


# static fields
.field private static final MAX_BYTE_I:I = 0xff

.field private static final MAX_SHORT_I:I = 0x7fff

.field private static final MIN_BYTE_I:I = -0x80

.field private static final MIN_SHORT_I:I = -0x8000


# instance fields
.field protected _features:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I

    .line 220
    return-void
.end method


# virtual methods
.method protected _constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
    .locals 2
    .parameter

    .prologue
    .line 1378
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-object v0
.end method

.method protected _reportUnsupportedOperation()V
    .locals 3

    .prologue
    .line 1388
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported by parser of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z
    .locals 1
    .parameter

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public abstract clearCurrentToken()V
.end method

.method public abstract close()V
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 434
    if-eqz p2, :cond_0

    .line 435
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 439
    :goto_0
    return-object p0

    .line 437
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .parameter

    .prologue
    .line 424
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I

    .line 425
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .parameter

    .prologue
    .line 414
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I

    .line 415
    return-object p0
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
.end method

.method public getBinaryValue()[B
    .locals 1

    .prologue
    .line 1057
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
.end method

.method public getBooleanValue()Z
    .locals 4

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1004
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1005
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1006
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current token ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") not of boolean type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v1
.end method

.method public getByteValue()B
    .locals 2

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    .line 870
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 871
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 873
    :cond_1
    int-to-byte v0, v0

    return v0
.end method

.method public abstract getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
.end method

.method public abstract getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public abstract getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract getDoubleValue()D
.end method

.method public abstract getEmbeddedObject()Ljava/lang/Object;
.end method

.method public abstract getFloatValue()F
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIntValue()I
.end method

.method public abstract getLastClearedToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract getLongValue()J
.end method

.method public abstract getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.end method

.method public abstract getNumberValue()Ljava/lang/Number;
.end method

.method public abstract getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
.end method

.method public getSchema()Lcom/fasterxml/jackson/core/FormatSchema;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortValue()S
    .locals 2

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    .line 893
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 894
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of Java short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 896
    :cond_1
    int-to-short v0, v0

    return v0
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextCharacters()[C
.end method

.method public abstract getTextLength()I
.end method

.method public abstract getTextOffset()I
.end method

.method public abstract getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.end method

.method public getValueAsBoolean()Z
    .locals 1

    .prologue
    .line 1204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 1219
    return p1
.end method

.method public getValueAsDouble()D
    .locals 2

    .prologue
    .line 1174
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 1
    .parameter

    .prologue
    .line 1189
    return-wide p1
.end method

.method public getValueAsInt()I
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 0
    .parameter

    .prologue
    .line 1129
    return p1
.end method

.method public getValueAsLong()J
    .locals 2

    .prologue
    .line 1144
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 1
    .parameter

    .prologue
    .line 1159
    return-wide p1
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasCurrentToken()Z
.end method

.method public abstract hasTextCharacters()Z
.end method

.method public abstract isClosed()Z
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 2
    .parameter

    .prologue
    .line 446
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpectedStartArrayToken()Z
    .locals 2

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 574
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 580
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 576
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 578
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextFieldName(Lcom/fasterxml/jackson/core/SerializableString;)Z
    .locals 2
    .parameter

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIntValue(I)I
    .locals 2
    .parameter

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method public nextLongValue(J)J
    .locals 3
    .parameter

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract nextToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract nextValue()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract overrideCurrentName(Ljava/lang/String;)V
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->_reportUnsupportedOperation()V

    .line 1093
    const/4 v0, 0x0

    return v0
.end method

.method public readBinaryValue(Ljava/io/OutputStream;)I
    .locals 1
    .parameter

    .prologue
    .line 1075
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public readValueAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 1310
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    .line 1311
    if-nez v0, :cond_0

    .line 1312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1281
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    .line 1282
    if-nez v0, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fasterxml/jackson/core/TreeNode;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    .line 1360
    if-nez v0, :cond_0

    .line 1361
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :cond_0
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/ObjectCodec;->readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public readValuesAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1341
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    .line 1342
    if-nez v0, :cond_0

    .line 1343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public readValuesAs(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    .line 1328
    if-nez v0, :cond_0

    .line 1329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 1
    .parameter

    .prologue
    .line 379
    const/4 v0, -0x1

    return v0
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 1
    .parameter

    .prologue
    .line 399
    const/4 v0, -0x1

    return v0
.end method

.method public requiresCustomCodec()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
.end method

.method public setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V
    .locals 3
    .parameter

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support schema of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
.end method

.method public abstract version()Lcom/fasterxml/jackson/core/Version;
.end method

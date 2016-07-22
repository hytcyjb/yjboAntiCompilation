.class final Lcom/squareup/wire/UnknownFieldMap;
.super Ljava/lang/Object;
.source "UnknownFieldMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$FieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;
    }
.end annotation


# instance fields
.field fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/UnknownFieldMap$FieldValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method constructor <init>(Lcom/squareup/wire/UnknownFieldMap;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iget-object v0, p1, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 187
    :cond_0
    return-void
.end method

.method private addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V
    .locals 8
    .parameter
    .parameter "tag"
    .parameter
    .parameter "wireType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/UnknownFieldMap$FieldValue;",
            ">;>;ITT;",
            "Lcom/squareup/wire/WireType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    .local p3, value:Ljava/lang/Object;,"TT;"
    const/4 v7, 0x0

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 219
    .local v1, values:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;"
    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #values:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .restart local v1       #values:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    sget-object v2, Lcom/squareup/wire/UnknownFieldMap$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-virtual {p4}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported wireType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    .end local p3           #value:Ljava/lang/Object;,"TT;"
    invoke-static {p2, p3}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->varint(ILjava/lang/Long;)Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;

    move-result-object v0

    .line 234
    .local v0, fieldValue:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/UnknownFieldMap$FieldValue;

    invoke-virtual {v2}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->getWireType()Lcom/squareup/wire/WireType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->getWireType()Lcom/squareup/wire/WireType;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 235
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Wire type %s differs from previous type %s for tag %s"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    .line 236
    invoke-virtual {v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->getWireType()Lcom/squareup/wire/WireType;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v6, 0x1

    .line 237
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/UnknownFieldMap$FieldValue;

    invoke-virtual {v2}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->getWireType()Lcom/squareup/wire/WireType;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 235
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    .end local v0           #fieldValue:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    .restart local p3       #value:Ljava/lang/Object;,"TT;"
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3           #value:Ljava/lang/Object;,"TT;"
    invoke-static {p2, p3}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->fixed32(ILjava/lang/Integer;)Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;

    move-result-object v0

    .restart local v0       #fieldValue:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    goto :goto_0

    .line 227
    .end local v0           #fieldValue:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    .restart local p3       #value:Ljava/lang/Object;,"TT;"
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    .end local p3           #value:Ljava/lang/Object;,"TT;"
    invoke-static {p2, p3}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->fixed64(ILjava/lang/Long;)Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;

    move-result-object v0

    .restart local v0       #fieldValue:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    goto :goto_0

    .line 229
    .end local v0           #fieldValue:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    .restart local p3       #value:Ljava/lang/Object;,"TT;"
    :pswitch_3
    check-cast p3, Lokio/ByteString;

    .end local p3           #value:Ljava/lang/Object;,"TT;"
    invoke-static {p2, p3}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->lengthDelimited(ILokio/ByteString;)Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;

    move-result-object v0

    .line 230
    .restart local v0       #fieldValue:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/UnknownFieldMap$FieldValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method addFixed32(ILjava/lang/Integer;)V
    .locals 2
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 195
    return-void
.end method

.method addFixed64(ILjava/lang/Long;)V
    .locals 2
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 199
    return-void
.end method

.method addLengthDelimited(ILokio/ByteString;)V
    .locals 2
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 203
    return-void
.end method

.method addVarint(ILjava/lang/Long;)V
    .locals 2
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 191
    return-void
.end method

.method getSerializedSize()I
    .locals 6

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, size:I
    iget-object v3, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/squareup/wire/WireOutput;->varintTagSize(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/UnknownFieldMap$FieldValue;

    .line 248
    .local v2, value:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    invoke-virtual {v2}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->getSerializedSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 249
    goto :goto_0

    .line 252
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    .end local v2           #value:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    :cond_1
    return v1
.end method

.method write(Lcom/squareup/wire/WireOutput;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v3, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 259
    .local v1, tag:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/UnknownFieldMap$FieldValue;

    .line 260
    .local v2, value:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    invoke-virtual {v2, v1, p1}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->write(ILcom/squareup/wire/WireOutput;)V

    goto :goto_0

    .line 264
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    .end local v1           #tag:I
    .end local v2           #value:Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    :cond_1
    return-void
.end method

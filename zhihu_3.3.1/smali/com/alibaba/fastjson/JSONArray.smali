.class public Lcom/alibaba/fastjson/JSONArray;
.super Lcom/alibaba/fastjson/JSON;
.source "JSONArray.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/JSON;",
        "Lcom/alibaba/fastjson/JSONAware;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient componentType:Ljava/lang/reflect/Type;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected transient relatedArray:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 358
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 1
    .parameter

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 323
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
    .locals 1
    .parameter

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getBooleanValue(I)Z
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getByte(I)Ljava/lang/Byte;
    .locals 1
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 227
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getByteValue(I)B
    .locals 1
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method

.method public getComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->componentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)Ljava/lang/Double;
    .locals 1
    .parameter

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue(I)D
    .locals 2
    .parameter

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 313
    if-nez v0, :cond_0

    .line 314
    const-wide/16 v0, 0x0

    .line 317
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat(I)Ljava/lang/Float;
    .locals 1
    .parameter

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(I)F
    .locals 1
    .parameter

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 297
    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getIntValue(I)I
    .locals 1
    .parameter

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 265
    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;
    .locals 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 192
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    .line 193
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 196
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    goto :goto_0
.end method

.method public getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 182
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 183
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 186
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLongValue(I)J
    .locals 2
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 281
    if-nez v0, :cond_0

    .line 282
    const-wide/16 v0, 0x0

    .line 285
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 201
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedArray()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->relatedArray:Ljava/lang/Object;

    return-object v0
.end method

.method public getShort(I)Ljava/lang/Short;
    .locals 1
    .parameter

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue(I)S
    .locals 1
    .parameter

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 249
    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0
.end method

.method public getSqlDate(I)Ljava/sql/Date;
    .locals 1
    .parameter

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 1
    .parameter

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setComponentType(Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->componentType:Ljava/lang/reflect/Type;

    .line 85
    return-void
.end method

.method public setRelatedArray(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->relatedArray:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

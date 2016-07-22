.class public Lcom/alibaba/fastjson/JSONObject;
.super Lcom/alibaba/fastjson/JSON;
.source "JSONObject.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/JSON;",
        "Lcom/alibaba/fastjson/JSONAware;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/reflect/InvocationHandler;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 75
    if-eqz p2, :cond_0

    .line 76
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 67
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 303
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .parameter

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getByteValue(Ljava/lang/String;)B
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue(Ljava/lang/String;)D
    .locals 2
    .parameter

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    if-nez v0, :cond_0

    .line 247
    const-wide/16 v0, 0x0

    .line 250
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .parameter

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(Ljava/lang/String;)F
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    if-nez v0, :cond_0

    .line 215
    const-wide/16 v0, 0x0

    .line 218
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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
    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue(Ljava/lang/String;)S
    .locals 1
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0
.end method

.method public getSqlDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1
    .parameter

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 1
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 335
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 336
    array-length v2, v0

    if-ne v2, v5, :cond_4

    .line 337
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 338
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 339
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal setter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 344
    if-eqz v0, :cond_d

    .line 345
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 346
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    if-nez v0, :cond_3

    .line 351
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 352
    const-string v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal setter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 358
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal setter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    aget-object v3, p3, v4

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 401
    :goto_1
    return-object v0

    .line 367
    :cond_4
    array-length v0, v0

    if-nez v0, :cond_b

    .line 368
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 369
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_5

    .line 370
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal getter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_5
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 375
    if-eqz v0, :cond_c

    .line 376
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    .line 377
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 381
    :goto_2
    if-nez v0, :cond_7

    .line 382
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 383
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 386
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal getter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 389
    :cond_8
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 390
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 392
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal getter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 396
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal getter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v0, v1

    goto/16 :goto_2

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 299
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

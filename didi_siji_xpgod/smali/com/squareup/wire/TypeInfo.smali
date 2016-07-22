.class public final Lcom/squareup/wire/TypeInfo;
.super Ljava/lang/Object;
.source "TypeInfo.java"


# static fields
.field private static final JAVA_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    .line 13
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "bool"

    const-string v2, "Boolean"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "bytes"

    const-string v2, "ByteString"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "double"

    const-string v2, "Double"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "float"

    const-string v2, "Float"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "fixed32"

    const-string v2, "Integer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "fixed64"

    const-string v2, "Long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "int32"

    const-string v2, "Integer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "int64"

    const-string v2, "Long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "sfixed32"

    const-string v2, "Integer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "sfixed64"

    const-string v2, "Long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "sint32"

    const-string v2, "Integer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "sint64"

    const-string v2, "Long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "string"

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "uint32"

    const-string v2, "Integer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    const-string v1, "uint64"

    const-string v2, "Long"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static isScalar(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 38
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static scalarType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 47
    sget-object v0, Lcom/squareup/wire/TypeInfo;->JAVA_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

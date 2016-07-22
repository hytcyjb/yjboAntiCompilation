.class public final Lcom/squareup/protoparser/ScalarTypes;
.super Ljava/lang/Object;
.source "ScalarTypes.java"


# static fields
.field private static final SCALAR_TYPES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOL:Ljava/lang/String; = "bool"

.field public static final TYPE_BYTES:Ljava/lang/String; = "bytes"

.field public static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field public static final TYPE_FIXED_32:Ljava/lang/String; = "fixed32"

.field public static final TYPE_FIXED_64:Ljava/lang/String; = "fixed64"

.field public static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field public static final TYPE_INT_32:Ljava/lang/String; = "int32"

.field public static final TYPE_INT_64:Ljava/lang/String; = "int64"

.field public static final TYPE_SFIXED_32:Ljava/lang/String; = "sfixed32"

.field public static final TYPE_SFIXED_64:Ljava/lang/String; = "sfixed64"

.field public static final TYPE_SINT_32:Ljava/lang/String; = "sint32"

.field public static final TYPE_SINT_64:Ljava/lang/String; = "sint64"

.field public static final TYPE_STRING:Ljava/lang/String; = "string"

.field public static final TYPE_UINT_32:Ljava/lang/String; = "uint32"

.field public static final TYPE_UINT_64:Ljava/lang/String; = "uint64"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 31
    .local v0, scalarTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "bool"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v1, "bytes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "double"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "float"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v1, "fixed32"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "fixed64"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, "int32"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "int64"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v1, "sfixed32"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v1, "sfixed64"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "sint32"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v1, "sint64"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "string"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "uint32"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "uint64"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/squareup/protoparser/ScalarTypes;->SCALAR_TYPES:Ljava/util/Set;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static isScalarType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 51
    sget-object v0, Lcom/squareup/protoparser/ScalarTypes;->SCALAR_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

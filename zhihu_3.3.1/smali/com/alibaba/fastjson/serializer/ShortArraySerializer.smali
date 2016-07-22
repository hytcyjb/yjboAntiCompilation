.class public Lcom/alibaba/fastjson/serializer/ShortArraySerializer;
.super Ljava/lang/Object;
.source "ShortArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/ShortArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/ShortArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ShortArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ShortArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ShortArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .line 31
    if-nez p2, :cond_1

    .line 32
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "[]"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 40
    :cond_1
    check-cast p2, [S

    .line 41
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 42
    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-lt v0, v2, :cond_2

    .line 48
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 43
    :cond_2
    if-eqz v0, :cond_3

    .line 44
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 46
    :cond_3
    aget-short v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

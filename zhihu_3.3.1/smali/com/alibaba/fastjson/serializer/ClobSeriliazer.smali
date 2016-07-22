.class public Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
.super Ljava/lang/Object;
.source "ClobSeriliazer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    if-nez p2, :cond_0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 37
    :goto_0
    return-void

    .line 21
    :cond_0
    check-cast p2, Ljava/sql/Clob;

    .line 22
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 25
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 27
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 28
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/io/IOException;

    const-string v2, "write clob error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 30
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 32
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

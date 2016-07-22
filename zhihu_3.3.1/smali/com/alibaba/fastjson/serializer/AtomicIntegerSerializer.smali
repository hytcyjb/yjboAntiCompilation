.class public Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;
.super Ljava/lang/Object;
.source "AtomicIntegerSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicIntegerSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    .line 32
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 34
    return-void
.end method

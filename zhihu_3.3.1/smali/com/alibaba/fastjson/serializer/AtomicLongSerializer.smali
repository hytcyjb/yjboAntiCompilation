.class public Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;
.super Ljava/lang/Object;
.source "AtomicLongSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicLongSerializer;

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
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    .line 32
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 34
    return-void
.end method

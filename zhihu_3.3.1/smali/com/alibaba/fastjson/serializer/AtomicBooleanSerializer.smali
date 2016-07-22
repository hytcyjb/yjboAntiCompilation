.class public Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;
.super Ljava/lang/Object;
.source "AtomicBooleanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicBooleanSerializer;

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
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0
.end method

.class public Lcom/alibaba/fastjson/serializer/ExceptionSerializer;
.super Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.source "ExceptionSerializer.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method

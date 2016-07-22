.class public Lcom/alibaba/fastjson/serializer/JSONSerializerMap;
.super Lcom/alibaba/fastjson/serializer/SerializeConfig;
.source "JSONSerializerMap.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public final put(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

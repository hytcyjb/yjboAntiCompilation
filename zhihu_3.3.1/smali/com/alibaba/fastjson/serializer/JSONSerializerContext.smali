.class public final Lcom/alibaba/fastjson/serializer/JSONSerializerContext;
.super Ljava/lang/Object;
.source "JSONSerializerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;
    }
.end annotation


# static fields
.field public static final DEFAULT_TABLE_SIZE:I = 0x80


# instance fields
.field private final buckets:[Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

.field private final indexMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializerContext;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext;->indexMask:I

    .line 36
    new-array v0, p1, [Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext;->buckets:[Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

    .line 37
    return-void
.end method


# virtual methods
.method public final put(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 41
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext;->indexMask:I

    and-int v2, v1, v0

    .line 43
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext;->buckets:[Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 44
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;->object:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0

    .line 43
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;->next:Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext;->buckets:[Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

    aget-object v3, v3, v2

    invoke-direct {v0, p1, v1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;-><init>(Ljava/lang/Object;ILcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;)V

    .line 50
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializerContext;->buckets:[Lcom/alibaba/fastjson/serializer/JSONSerializerContext$Entry;

    aput-object v0, v1, v2

    .line 52
    const/4 v0, 0x0

    goto :goto_1
.end method

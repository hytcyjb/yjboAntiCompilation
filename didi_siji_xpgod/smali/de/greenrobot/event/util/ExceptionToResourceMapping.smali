.class public Lde/greenrobot/event/util/ExceptionToResourceMapping;
.super Ljava/lang/Object;
.source "ExceptionToResourceMapping.java"


# instance fields
.field public final throwableToMsgIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/Class;I)Lde/greenrobot/event/util/ExceptionToResourceMapping;
    .locals 2
    .parameter
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lde/greenrobot/event/util/ExceptionToResourceMapping;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lde/greenrobot/event/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object p0
.end method

.method public mapThrowable(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 6
    .parameter "throwable"

    .prologue
    .line 27
    move-object v2, p1

    .line 28
    .local v2, throwableToCheck:Ljava/lang/Throwable;
    const/16 v0, 0x14

    .line 31
    .local v0, depthToGo:I
    :cond_0
    invoke-virtual {p0, v2}, Lde/greenrobot/event/util/ExceptionToResourceMapping;->mapThrowableFlat(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v1

    .line 32
    .local v1, resId:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 40
    .end local v1           #resId:Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 35
    .restart local v1       #resId:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    if-lez v0, :cond_2

    if-eq v2, p1, :cond_2

    if-nez v2, :cond_0

    .line 38
    :cond_2
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No specific message ressource ID found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected mapThrowableFlat(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 8
    .parameter "throwable"

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 50
    .local v6, throwableClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v7, p0, Lde/greenrobot/event/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 51
    .local v5, resId:Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, closestClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v7, p0, Lde/greenrobot/event/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 54
    .local v4, mappings:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 55
    .local v3, mapping:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 56
    .local v0, candidate:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 57
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    :cond_1
    move-object v1, v0

    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #resId:Ljava/lang/Integer;
    check-cast v5, Ljava/lang/Integer;

    .restart local v5       #resId:Ljava/lang/Integer;
    goto :goto_0

    .line 65
    .end local v0           #candidate:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .end local v1           #closestClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mapping:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Integer;>;"
    .end local v4           #mappings:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Integer;>;>;"
    :cond_2
    return-object v5
.end method

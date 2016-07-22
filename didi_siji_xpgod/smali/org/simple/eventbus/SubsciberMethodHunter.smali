.class public Lorg/simple/eventbus/SubsciberMethodHunter;
.super Ljava/lang/Object;
.source "SubsciberMethodHunter.java"


# instance fields
.field mSubcriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/simple/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/simple/eventbus/Subscription;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, subscriberMap:Ljava/util/Map;,"Ljava/util/Map<Lorg/simple/eventbus/EventType;Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/simple/eventbus/Subscription;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private convertType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, eventType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, p1

    .line 154
    .local v0, returnClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-class v0, Ljava/lang/Boolean;

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    const-class v0, Ljava/lang/Integer;

    .line 158
    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    const-class v0, Ljava/lang/Float;

    .line 160
    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const-class v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method private isSystemCalss(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 168
    const-string v0, "java."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javax."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private subscibe(Lorg/simple/eventbus/EventType;Lorg/simple/eventbus/TargetMethod;Ljava/lang/Object;)V
    .locals 3
    .parameter "event"
    .parameter "method"
    .parameter "subscriber"

    .prologue
    .line 97
    iget-object v2, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    .line 98
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    .local v1, subscriptionLists:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/simple/eventbus/Subscription;>;"
    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v1           #subscriptionLists:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/simple/eventbus/Subscription;>;"
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 103
    .restart local v1       #subscriptionLists:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/simple/eventbus/Subscription;>;"
    :cond_0
    new-instance v0, Lorg/simple/eventbus/Subscription;

    invoke-direct {v0, p3, p2}, Lorg/simple/eventbus/Subscription;-><init>(Ljava/lang/Object;Lorg/simple/eventbus/TargetMethod;)V

    .line 104
    .local v0, newSubscription:Lorg/simple/eventbus/Subscription;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public findSubcribeMethods(Ljava/lang/Object;)V
    .locals 11
    .parameter "subscriber"

    .prologue
    .line 61
    iget-object v9, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    if-nez v9, :cond_0

    .line 62
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "the mSubcriberMap is null. "

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 66
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/simple/eventbus/SubsciberMethodHunter;->isSystemCalss(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 89
    :cond_1
    return-void

    .line 67
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    .local v0, allMethods:[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v0

    if-lt v4, v9, :cond_3

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_3
    aget-object v5, v0, v4

    .line 71
    .local v5, method:Ljava/lang/reflect/Method;
    const-class v9, Lorg/simple/eventbus/Subscriber;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/simple/eventbus/Subscriber;

    .line 72
    .local v1, annotation:Lorg/simple/eventbus/Subscriber;
    if-eqz v1, :cond_4

    .line 74
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 76
    .local v7, paramsTypeClass:[Ljava/lang/Class;
    if-eqz v7, :cond_4

    array-length v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 77
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-direct {p0, v9}, Lorg/simple/eventbus/SubsciberMethodHunter;->convertType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 78
    .local v6, paramType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Lorg/simple/eventbus/EventType;

    invoke-interface {v1}, Lorg/simple/eventbus/Subscriber;->tag()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v6, v9}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 79
    .local v3, eventType:Lorg/simple/eventbus/EventType;
    new-instance v8, Lorg/simple/eventbus/TargetMethod;

    .line 80
    invoke-interface {v1}, Lorg/simple/eventbus/Subscriber;->mode()Lorg/simple/eventbus/ThreadMode;

    move-result-object v9

    .line 79
    invoke-direct {v8, v5, v6, v9}, Lorg/simple/eventbus/TargetMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/simple/eventbus/ThreadMode;)V

    .line 81
    .local v8, subscribeMethod:Lorg/simple/eventbus/TargetMethod;
    invoke-direct {p0, v3, v8, p1}, Lorg/simple/eventbus/SubsciberMethodHunter;->subscibe(Lorg/simple/eventbus/EventType;Lorg/simple/eventbus/TargetMethod;Ljava/lang/Object;)V

    .line 68
    .end local v3           #eventType:Lorg/simple/eventbus/EventType;
    .end local v6           #paramType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #paramsTypeClass:[Ljava/lang/Class;
    .end local v8           #subscribeMethod:Lorg/simple/eventbus/TargetMethod;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public removeMethodsFromMap(Ljava/lang/Object;)V
    .locals 8
    .parameter "subscriber"

    .prologue
    .line 119
    iget-object v5, p0, Lorg/simple/eventbus/SubsciberMethodHunter;->mSubcriberMap:Ljava/util/Map;

    .line 120
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/simple/eventbus/Subscription;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    return-void

    .line 122
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    .local v4, subscriptions:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/simple/eventbus/Subscription;>;"
    if-eqz v4, :cond_3

    .line 124
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 125
    .local v0, foundSubscriptions:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/Subscription;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 126
    .local v2, subIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/simple/eventbus/Subscription;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 135
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 139
    .end local v0           #foundSubscriptions:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/Subscription;>;"
    .end local v2           #subIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/simple/eventbus/Subscription;>;"
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 140
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 127
    .restart local v0       #foundSubscriptions:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/Subscription;>;"
    .restart local v2       #subIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/simple/eventbus/Subscription;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simple/eventbus/Subscription;

    .line 128
    .local v3, subscription:Lorg/simple/eventbus/Subscription;
    iget-object v5, v3, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "### \u79fb\u9664\u8ba2\u9605 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

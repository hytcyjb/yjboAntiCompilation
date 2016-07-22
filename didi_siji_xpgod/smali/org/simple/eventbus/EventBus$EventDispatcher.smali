.class Lorg/simple/eventbus/EventBus$EventDispatcher;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simple/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventDispatcher"
.end annotation


# instance fields
.field mAsyncEventHandler:Lorg/simple/eventbus/handler/EventHandler;

.field private mCacheEventTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/List",
            "<",
            "Lorg/simple/eventbus/EventType;",
            ">;>;"
        }
    .end annotation
.end field

.field mMatchPolicy:Lorg/simple/eventbus/matchpolicy/MatchPolicy;

.field mPostThreadHandler:Lorg/simple/eventbus/handler/EventHandler;

.field mUIThreadEventHandler:Lorg/simple/eventbus/handler/EventHandler;

.field final synthetic this$0:Lorg/simple/eventbus/EventBus;


# direct methods
.method private constructor <init>(Lorg/simple/eventbus/EventBus;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->this$0:Lorg/simple/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Lorg/simple/eventbus/handler/UIThreadEventHandler;

    invoke-direct {v0}, Lorg/simple/eventbus/handler/UIThreadEventHandler;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mUIThreadEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    .line 266
    new-instance v0, Lorg/simple/eventbus/handler/DefaultEventHandler;

    invoke-direct {v0}, Lorg/simple/eventbus/handler/DefaultEventHandler;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mPostThreadHandler:Lorg/simple/eventbus/handler/EventHandler;

    .line 271
    new-instance v0, Lorg/simple/eventbus/handler/AsyncEventHandler;

    invoke-direct {v0}, Lorg/simple/eventbus/handler/AsyncEventHandler;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mAsyncEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    .line 276
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mCacheEventTypes:Ljava/util/Map;

    .line 280
    new-instance v0, Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;

    invoke-direct {v0}, Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mMatchPolicy:Lorg/simple/eventbus/matchpolicy/MatchPolicy;

    return-void
.end method

.method synthetic constructor <init>(Lorg/simple/eventbus/EventBus;Lorg/simple/eventbus/EventBus$EventDispatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lorg/simple/eventbus/EventBus$EventDispatcher;-><init>(Lorg/simple/eventbus/EventBus;)V

    return-void
.end method

.method private deliveryEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V
    .locals 5
    .parameter "type"
    .parameter "aEvent"

    .prologue
    .line 299
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 300
    .local v0, eventClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 302
    .local v2, eventTypes:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/EventType;>;"
    iget-object v3, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mCacheEventTypes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mCacheEventTypes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #eventTypes:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/EventType;>;"
    check-cast v2, Ljava/util/List;

    .line 309
    .restart local v2       #eventTypes:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/EventType;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    return-void

    .line 305
    :cond_0
    iget-object v3, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mMatchPolicy:Lorg/simple/eventbus/matchpolicy/MatchPolicy;

    invoke-interface {v3, p1, p2}, Lorg/simple/eventbus/matchpolicy/MatchPolicy;->findMatchEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mCacheEventTypes:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 309
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simple/eventbus/EventType;

    .line 310
    .local v1, eventType:Lorg/simple/eventbus/EventType;
    invoke-direct {p0, v1, p2}, Lorg/simple/eventbus/EventBus$EventDispatcher;->handleEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getEventHandler(Lorg/simple/eventbus/ThreadMode;)Lorg/simple/eventbus/handler/EventHandler;
    .locals 1
    .parameter "mode"

    .prologue
    .line 335
    sget-object v0, Lorg/simple/eventbus/ThreadMode;->ASYNC:Lorg/simple/eventbus/ThreadMode;

    if-ne p1, v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mAsyncEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    .line 343
    :goto_0
    return-object v0

    .line 339
    :cond_0
    sget-object v0, Lorg/simple/eventbus/ThreadMode;->POST:Lorg/simple/eventbus/ThreadMode;

    if-ne p1, v0, :cond_1

    .line 340
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mPostThreadHandler:Lorg/simple/eventbus/handler/EventHandler;

    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mUIThreadEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    goto :goto_0
.end method

.method private handleEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V
    .locals 6
    .parameter "eventType"
    .parameter "aEvent"

    .prologue
    .line 321
    iget-object v4, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->this$0:Lorg/simple/eventbus/EventBus;

    #getter for: Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;
    invoke-static {v4}, Lorg/simple/eventbus/EventBus;->access$0(Lorg/simple/eventbus/EventBus;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 322
    .local v3, subscriptions:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/Subscription;>;"
    if-nez v3, :cond_1

    .line 332
    :cond_0
    return-void

    .line 326
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simple/eventbus/Subscription;

    .line 327
    .local v2, subscription:Lorg/simple/eventbus/Subscription;
    iget-object v1, v2, Lorg/simple/eventbus/Subscription;->threadMode:Lorg/simple/eventbus/ThreadMode;

    .line 328
    .local v1, mode:Lorg/simple/eventbus/ThreadMode;
    invoke-direct {p0, v1}, Lorg/simple/eventbus/EventBus$EventDispatcher;->getEventHandler(Lorg/simple/eventbus/ThreadMode;)Lorg/simple/eventbus/handler/EventHandler;

    move-result-object v0

    .line 330
    .local v0, eventHandler:Lorg/simple/eventbus/handler/EventHandler;
    invoke-interface {v0, v2, p2}, Lorg/simple/eventbus/handler/EventHandler;->handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method dispatchEvents(Ljava/lang/Object;)V
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 286
    iget-object v1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->this$0:Lorg/simple/eventbus/EventBus;

    iget-object v1, v1, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 287
    .local v0, eventsQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lorg/simple/eventbus/EventType;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 290
    return-void

    .line 288
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simple/eventbus/EventType;

    invoke-direct {p0, v1, p1}, Lorg/simple/eventbus/EventBus$EventDispatcher;->deliveryEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V

    goto :goto_0
.end method

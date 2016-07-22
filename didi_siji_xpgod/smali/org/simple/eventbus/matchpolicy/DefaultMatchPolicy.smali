.class public Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;
.super Ljava/lang/Object;
.source "DefaultMatchPolicy.java"

# interfaces
.implements Lorg/simple/eventbus/matchpolicy/MatchPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addInterfaces(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/simple/eventbus/EventType;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, eventTypes:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/EventType;>;"
    .local p2, eventClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p2, :cond_1

    .line 64
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 58
    .local v1, interfacesClasses:[Ljava/lang/Class;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 59
    .local v0, interfaceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 60
    new-instance v4, Lorg/simple/eventbus/EventType;

    invoke-direct {v4, v0, p3}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-direct {p0, p1, v0, p3}, Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;->addInterfaces(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public findMatchEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .parameter "type"
    .parameter "aEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simple/eventbus/EventType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 37
    .local v0, eventClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 38
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/EventType;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 44
    return-object v1

    .line 39
    :cond_0
    new-instance v2, Lorg/simple/eventbus/EventType;

    iget-object v3, p1, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v2, p1, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;->addInterfaces(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

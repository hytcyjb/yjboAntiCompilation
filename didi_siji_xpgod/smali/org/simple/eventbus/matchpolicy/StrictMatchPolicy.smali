.class public Lorg/simple/eventbus/matchpolicy/StrictMatchPolicy;
.super Ljava/lang/Object;
.source "StrictMatchPolicy.java"

# interfaces
.implements Lorg/simple/eventbus/matchpolicy/MatchPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findMatchEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
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
    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 40
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lorg/simple/eventbus/EventType;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method

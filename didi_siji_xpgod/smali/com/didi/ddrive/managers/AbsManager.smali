.class public abstract Lcom/didi/ddrive/managers/AbsManager;
.super Ljava/lang/Object;
.source "AbsManager.java"


# static fields
.field private static managers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/didi/ddrive/managers/AbsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/AbsManager;->managers:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/didi/ddrive/managers/AbsManager;->register()V

    .line 16
    return-void
.end method

.method private register()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/didi/ddrive/managers/AbsManager;->managers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public static releaseAll()V
    .locals 3

    .prologue
    .line 27
    sget-object v2, Lcom/didi/ddrive/managers/AbsManager;->managers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/managers/AbsManager;

    .line 28
    .local v0, absMgr:Lcom/didi/ddrive/managers/AbsManager;
    invoke-virtual {v0}, Lcom/didi/ddrive/managers/AbsManager;->release()V

    goto :goto_0

    .line 30
    .end local v0           #absMgr:Lcom/didi/ddrive/managers/AbsManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract release()V
.end method

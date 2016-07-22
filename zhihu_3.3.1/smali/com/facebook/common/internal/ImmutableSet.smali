.class public Lcom/facebook/common/internal/ImmutableSet;
.super Ljava/util/HashSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 25
    return-void
.end method

.method public static copyOf(Ljava/util/Set;)Lcom/facebook/common/internal/ImmutableSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lcom/facebook/common/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/facebook/common/internal/ImmutableSet;

    invoke-direct {v0, p0}, Lcom/facebook/common/internal/ImmutableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/facebook/common/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/facebook/common/internal/ImmutableSet;

    invoke-direct {v1, v0}, Lcom/facebook/common/internal/ImmutableSet;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

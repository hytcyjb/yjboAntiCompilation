.class final Lcom/tencent/tencentmap/mapsdk/maps/a/f;
.super Ljava/lang/Object;
.source "Leaf.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
        "<TT;TS;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
            "<TT;TS;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

.field private final c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V
    .locals 1
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
            "<TT;TS;>;>;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/f;,"Lcom/tencent/tencentmap/mapsdk/maps/a/f<TT;TS;>;"
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->a:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    .line 23
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/p;->a(Ljava/util/Collection;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    .line 24
    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
            "<TT;TS;>;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/f;,"Lcom/tencent/tencentmap/mapsdk/maps/a/f<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/d;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
            "<+TT;+TS;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/f;,"Lcom/tencent/tencentmap/mapsdk/maps/a/f<TT;TS;>;"
    .local p1, entry:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<+TT;+TS;>;"
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .local v0, entries2:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->a()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 62
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/f;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v2, v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/f;-><init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 65
    :goto_0
    return-object v2

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/n;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->b()I

    invoke-interface {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/n;->a(Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/t;

    move-result-object v1

    .line 65
    .local v1, pair:Lcom/tencent/tencentmap/mapsdk/maps/a/t;,"Lcom/tencent/tencentmap/mapsdk/maps/a/t<Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/f;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->a()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/f;-><init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/f;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->a()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/f;-><init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
            "<-",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
            "<-",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
            "<TT;TS;>;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/f;,"Lcom/tencent/tencentmap/mapsdk/maps/a/f<TT;TS;>;"
    .local p1, condition:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hj<-Lcom/tencent/tencentmap/mapsdk/maps/a/q;Ljava/lang/Boolean;>;"
    .local p2, subscriber:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;>;"
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    :cond_0
    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/d;

    .line 43
    .local v0, entry:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;"
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {p2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;
    .locals 1

    .prologue
    .line 28
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/f;,"Lcom/tencent/tencentmap/mapsdk/maps/a/f<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/f;,"Lcom/tencent/tencentmap/mapsdk/maps/a/f<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

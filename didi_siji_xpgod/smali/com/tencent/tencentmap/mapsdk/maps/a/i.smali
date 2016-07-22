.class final Lcom/tencent/tencentmap/mapsdk/maps/a/i;
.super Ljava/lang/Object;
.source "NonLeaf.java"

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
            "<+",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
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
            "<+",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;>;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/i;,"Lcom/tencent/tencentmap/mapsdk/maps/a/i<TT;TS;>;"
    .local p1, children:Ljava/util/List;,"Ljava/util/List<+Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    .line 25
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->a:Ljava/util/List;

    .line 26
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/p;->a(Ljava/util/Collection;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    .line 27
    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/i;,"Lcom/tencent/tencentmap/mapsdk/maps/a/i<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/d;)Ljava/util/List;
    .locals 8
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
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/i;,"Lcom/tencent/tencentmap/mapsdk/maps/a/i<TT;TS;>;"
    .local p1, entry:Lcom/tencent/tencentmap/mapsdk/maps/a/d;,"Lcom/tencent/tencentmap/mapsdk/maps/a/d<+TT;+TS;>;"
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/l;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->a:Ljava/util/List;

    invoke-interface {v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/l;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/q;Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    move-result-object v0

    .line 62
    .local v0, child:Lcom/tencent/tencentmap/mapsdk/maps/a/g;,"Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;"
    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/g;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/d;)Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;>;"
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    .local v1, children2:Ljava/util/List;,"Ljava/util/List<+Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->a()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 66
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/i;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v4, v1, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/i;-><init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 71
    :goto_1
    return-object v4

    .line 69
    :cond_2
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/n;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->b()I

    invoke-interface {v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/n;->a(Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/t;

    move-result-object v3

    .line 71
    .local v3, pair:Lcom/tencent/tencentmap/mapsdk/maps/a/t;,"Lcom/tencent/tencentmap/mapsdk/maps/a/t<+Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/i;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->a()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/i;-><init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/i;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->a()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    invoke-direct {v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/i;-><init>(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/c;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
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
    .line 38
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/i;,"Lcom/tencent/tencentmap/mapsdk/maps/a/i<TT;TS;>;"
    .local p1, criterion:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hj<-Lcom/tencent/tencentmap/mapsdk/maps/a/q;Ljava/lang/Boolean;>;"
    .local p2, subscriber:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;>;"
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    .line 42
    .local v0, child:Lcom/tencent/tencentmap/mapsdk/maps/a/g;,"Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;"
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-interface {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/g;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V

    goto :goto_0
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/i;,"Lcom/tencent/tencentmap/mapsdk/maps/a/i<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/i;,"Lcom/tencent/tencentmap/mapsdk/maps/a/i<TT;TS;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

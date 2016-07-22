.class final Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;
.super Ljava/lang/Object;
.source "OnSubscribeSearch.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/hb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/hb;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
            "<-",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
            "<TT;TS;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hj",
            "<-",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/tencent/tencentmap/mapsdk/maps/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/w",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/h",
            "<TT;TS;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;Lcom/tencent/tencentmap/mapsdk/maps/a/hj;Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;",
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
    .line 37
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/j$a<TT;TS;>;"
    .local p1, node:Lcom/tencent/tencentmap/mapsdk/maps/a/g;,"Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;"
    .local p2, condition:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hj<-Lcom/tencent/tencentmap/mapsdk/maps/a/q;Ljava/lang/Boolean;>;"
    .local p3, subscriber:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<-Lcom/tencent/tencentmap/mapsdk/maps/a/d<TT;TS;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    .line 39
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    .line 40
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    .line 41
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;I)V

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->a(Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 13
    .parameter "n"

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;,"Lcom/tencent/tencentmap/mapsdk/maps/a/j$a<TT;TS;>;"
    const-wide v3, 0x7fffffffffffffffL

    const-wide/16 v11, 0x0

    .line 48
    cmp-long v1, p1, v11

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    cmp-long v1, p1, v3

    if-nez v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-interface {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/g;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hj;Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-nez v1, :cond_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/hj;

    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    invoke-static {v1, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/w;J)Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;

    move-result-object v1

    move-object v4, v1

    :goto_2
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/h;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a()V

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-lez v2, :cond_a

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/g;->c()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    :goto_4
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/w;J)Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/h;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/h;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b(Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    move-result-object v2

    instance-of v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/i;

    if-eqz v2, :cond_8

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v9

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/i;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/i;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->b()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/g;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/hj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/h;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/g;I)V

    invoke-virtual {v9, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b(Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    :goto_5
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/w;J)Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/h;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b(Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/f;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/f;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->b()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/d;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/hj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v8, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)J

    move-result-wide v2

    const-wide/16 v9, 0x1

    sub-long/2addr v2, v9

    :goto_6
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/h;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/h;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/w;->b(Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/w;J)Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_2

    :cond_9
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)J

    move-result-wide v2

    goto :goto_6

    :cond_a
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/a$a;)Lcom/tencent/tencentmap/mapsdk/maps/a/w;

    move-result-object v1

    goto/16 :goto_3

    :cond_b
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/j$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    cmp-long v1, v1, v11

    if-nez v1, :cond_3

    goto/16 :goto_0
.end method

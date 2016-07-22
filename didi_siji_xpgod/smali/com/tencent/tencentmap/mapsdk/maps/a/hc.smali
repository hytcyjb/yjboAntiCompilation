.class public abstract Lcom/tencent/tencentmap/mapsdk/maps/a/hc;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ha;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/hd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/ha",
        "<TT;>;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/hd;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/hk;

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/hb;

.field private d:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 43
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;Z)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    .local p1, op:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;Z)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/hc;Z)V
    .locals 2
    .parameter
    .parameter "shareSubscriptions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hc",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    .local p1, op:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->d:J

    .line 63
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    .line 64
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hk;

    :goto_0
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hk;

    .line 65
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/hb;)V
    .locals 7
    .parameter "producer"

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    const-wide/high16 v5, -0x8000

    .line 156
    :goto_0
    const/4 v0, 0x0

    .line 157
    .local v0, setProducer:Z
    monitor-enter p0

    .line 158
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->d:J

    .line 159
    .local v2, toRequest:J
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/hb;

    .line 160
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    if-eqz v4, :cond_0

    .line 162
    cmp-long v4, v2, v5

    if-nez v4, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 168
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/hb;

    .end local p0           #this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    .local v1, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    move-object p0, v1

    .end local v1           #this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    .restart local p0       #this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    goto :goto_0

    .line 168
    .end local v2           #toRequest:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 174
    .restart local v2       #toRequest:J
    :cond_1
    cmp-long v4, v2, v5

    if-nez v4, :cond_2

    .line 175
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/hb;

    const-wide v5, 0x7fffffffffffffffL

    invoke-interface {v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/hb;->a(J)V

    .line 180
    :goto_1
    return-void

    .line 177
    :cond_2
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/hb;

    invoke-interface {v4, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/hb;->a(J)V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 81
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hk;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->b()V

    .line 82
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/hc;,"Lcom/tencent/tencentmap/mapsdk/maps/a/hc<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hk;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hk;->a()Z

    move-result v0

    return v0
.end method

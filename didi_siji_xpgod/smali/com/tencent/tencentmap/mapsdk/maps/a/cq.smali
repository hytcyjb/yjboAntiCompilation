.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cq;
.super Ljava/lang/Object;
.source "HighThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ThreadFactory;

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq;->a:Ljava/util/concurrent/ThreadFactory;

    .line 62
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cq;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq;->b:Ljava/util/concurrent/BlockingQueue;

    .line 67
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    .line 68
    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq;->b:Ljava/util/concurrent/BlockingQueue;

    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq;->c:Ljava/util/concurrent/Executor;

    .line 25
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

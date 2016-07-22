.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cr;
.super Ljava/lang/Object;
.source "LowThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/ThreadFactory;

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cr$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cr$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cr;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cr;->b:Ljava/util/concurrent/ThreadFactory;

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cr;->c:Ljava/util/concurrent/BlockingQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    .line 58
    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cr;->c:Ljava/util/concurrent/BlockingQueue;

    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cr;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cr;->a:Ljava/util/concurrent/Executor;

    .line 17
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cr;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

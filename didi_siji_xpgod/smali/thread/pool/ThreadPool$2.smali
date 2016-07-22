.class Lthread/pool/ThreadPool$2;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lthread/pool/ThreadPool;-><init>(IIZJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lthread/pool/ThreadPool;


# direct methods
.method constructor <init>(Lthread/pool/ThreadPool;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lthread/pool/ThreadPool$2;->this$0:Lthread/pool/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .parameter "r"
    .parameter "executor"

    .prologue
    .line 53
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

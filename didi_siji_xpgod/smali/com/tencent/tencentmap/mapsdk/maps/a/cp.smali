.class public abstract Lcom/tencent/tencentmap/mapsdk/maps/a/cp;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static final d:Ljava/util/concurrent/Executor;

.field public static final e:Ljava/util/concurrent/Executor;

.field private static synthetic l:[I


# instance fields
.field private final f:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile h:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cr;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cr;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->b:Ljava/util/concurrent/Executor;

    .line 51
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cq;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cq;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->c:Ljava/util/concurrent/Executor;

    .line 53
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;-><init>(B)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->d:Ljava/util/concurrent/Executor;

    .line 55
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$c;-><init>(B)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->e:Ljava/util/concurrent/Executor;

    .line 61
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cp<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->k:Z

    .line 104
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e;

    .line 114
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$2;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->g:Ljava/util/concurrent/FutureTask;

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cp<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    const/4 v5, 0x1

    .line 139
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;

    .line 140
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v1, v5, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, message:Landroid/os/Message;
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->k:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    :goto_0
    return-object p1

    .line 144
    :cond_0
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$b;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;)V
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a()V

    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    return-void
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method protected static varargs b()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/cp;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic d()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->l:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->values()[Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->l:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/cp;
    .locals 2
    .parameter "exec"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cp",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cp<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    if-eq v0, v1, :cond_0

    .line 411
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 422
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$d;

    .line 424
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e;

    iput-object p2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp$e;->b:[Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->g:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 429
    return-object p0

    .line 413
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cp<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/cp;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/cp",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cp<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->k:Z

    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/tencent/tencentmap/mapsdk/maps/a/cp;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/cp;,"Lcom/tencent/tencentmap/mapsdk/maps/a/cp<TParams;TProgress;TResult;>;"
    const/4 v1, 0x1

    .line 291
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/cp;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

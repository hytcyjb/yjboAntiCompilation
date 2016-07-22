.class public Lcom/octo/android/robospice/request/b/a;
.super Ljava/lang/Object;
.source "DefaultRequestListenerNotifier.java"

# interfaces
.implements Lcom/octo/android/robospice/request/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octo/android/robospice/request/b/a$c;,
        Lcom/octo/android/robospice/request/b/a$b;,
        Lcom/octo/android/robospice/request/b/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/octo/android/robospice/request/b/a;->a:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/octo/android/robospice/request/b/a;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;",
            "Lcom/octo/android/robospice/persistence/exception/SpiceException;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/octo/android/robospice/request/b/a$c;

    invoke-direct {v0, p3, p2}, Lcom/octo/android/robospice/request/b/a$c;-><init>(Ljava/util/Set;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/octo/android/robospice/request/b/a;->a(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;TT;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/octo/android/robospice/request/b/a$c;

    invoke-direct {v0, p3, p2}, Lcom/octo/android/robospice/request/b/a$c;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/octo/android/robospice/request/b/a;->a(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/octo/android/robospice/request/b/a$a;

    invoke-direct {v0, p2}, Lcom/octo/android/robospice/request/b/a$a;-><init>(Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/octo/android/robospice/request/b/a;->a(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/d;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;",
            "Lcom/octo/android/robospice/request/listener/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/octo/android/robospice/request/b/a$b;

    invoke-direct {v0, p2, p3}, Lcom/octo/android/robospice/request/b/a$b;-><init>(Ljava/util/Set;Lcom/octo/android/robospice/request/listener/d;)V

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/octo/android/robospice/request/b/a;->a(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public b(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method

.method public c(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public d(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/octo/android/robospice/request/b/a$c;

    new-instance v1, Lcom/octo/android/robospice/exception/RequestCancelledException;

    const-string v2, "Request has been cancelled explicitely."

    invoke-direct {v1, v2}, Lcom/octo/android/robospice/exception/RequestCancelledException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Lcom/octo/android/robospice/request/b/a$c;-><init>(Ljava/util/Set;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/octo/android/robospice/request/b/a;->a(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public e(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/octo/android/robospice/request/b/a;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

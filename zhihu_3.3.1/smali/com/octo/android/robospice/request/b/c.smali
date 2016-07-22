.class public Lcom/octo/android/robospice/request/b/c;
.super Ljava/lang/Object;
.source "SpiceServiceListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octo/android/robospice/request/b/c$f;,
        Lcom/octo/android/robospice/request/b/c$g;,
        Lcom/octo/android/robospice/request/b/c$c;,
        Lcom/octo/android/robospice/request/b/c$h;,
        Lcom/octo/android/robospice/request/b/c$d;,
        Lcom/octo/android/robospice/request/b/c$e;,
        Lcom/octo/android/robospice/request/b/c$b;,
        Lcom/octo/android/robospice/request/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/octo/android/robospice/request/listener/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    .line 352
    return-void
.end method


# virtual methods
.method public a(Lcom/octo/android/robospice/request/a;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/octo/android/robospice/request/listener/g$a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/listener/g$a;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/lang/Thread;)V

    .line 59
    new-instance v1, Lcom/octo/android/robospice/request/b/c$e;

    iget-object v2, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-direct {v1, p1, v2, v0}, Lcom/octo/android/robospice/request/b/c$e;-><init>(Lcom/octo/android/robospice/request/a;Ljava/util/List;Lcom/octo/android/robospice/request/listener/g$a;)V

    invoke-virtual {p0, v1}, Lcom/octo/android/robospice/request/b/c;->a(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/request/listener/d;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Lcom/octo/android/robospice/request/listener/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/octo/android/robospice/request/listener/g$a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/listener/g$a;-><init>()V

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/lang/Thread;)V

    .line 125
    invoke-virtual {v0, p2}, Lcom/octo/android/robospice/request/listener/g$a;->a(Lcom/octo/android/robospice/request/listener/d;)V

    .line 126
    new-instance v1, Lcom/octo/android/robospice/request/b/c$g;

    iget-object v2, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-direct {v1, p1, v2, v0}, Lcom/octo/android/robospice/request/b/c$g;-><init>(Lcom/octo/android/robospice/request/a;Ljava/util/List;Lcom/octo/android/robospice/request/listener/g$a;)V

    invoke-virtual {p0, v1}, Lcom/octo/android/robospice/request/b/c;->a(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/octo/android/robospice/request/listener/g$a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/listener/g$a;-><init>()V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/lang/Thread;)V

    .line 70
    invoke-virtual {v0, p2}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/util/Set;)V

    .line 71
    new-instance v1, Lcom/octo/android/robospice/request/b/c$a;

    iget-object v2, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-direct {v1, p1, v2, v0}, Lcom/octo/android/robospice/request/b/c$a;-><init>(Lcom/octo/android/robospice/request/a;Ljava/util/List;Lcom/octo/android/robospice/request/listener/g$a;)V

    invoke-virtual {p0, v1}, Lcom/octo/android/robospice/request/b/c;->a(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/listener/g;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/octo/android/robospice/request/b/c;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 33
    const-string v0, "Message Queue starting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/octo/android/robospice/request/b/c;->b:Landroid/os/Handler;

    .line 36
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message queue is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/octo/android/robospice/request/b/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 148
    iget-object v0, p0, Lcom/octo/android/robospice/request/b/c;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/octo/android/robospice/request/b/c;->b:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b(Lcom/octo/android/robospice/request/a;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/octo/android/robospice/request/listener/g$a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/listener/g$a;-><init>()V

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/lang/Thread;)V

    .line 94
    new-instance v1, Lcom/octo/android/robospice/request/b/c$d;

    iget-object v2, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-direct {v1, p1, v2, v0}, Lcom/octo/android/robospice/request/b/c$d;-><init>(Lcom/octo/android/robospice/request/a;Ljava/util/List;Lcom/octo/android/robospice/request/listener/g$a;)V

    invoke-virtual {p0, v1}, Lcom/octo/android/robospice/request/b/c;->a(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public b(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/octo/android/robospice/request/listener/g$a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/listener/g$a;-><init>()V

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/lang/Thread;)V

    .line 82
    invoke-virtual {v0, p2}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/util/Set;)V

    .line 83
    new-instance v1, Lcom/octo/android/robospice/request/b/c$b;

    iget-object v2, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-direct {v1, p1, v2, v0}, Lcom/octo/android/robospice/request/b/c$b;-><init>(Lcom/octo/android/robospice/request/a;Ljava/util/List;Lcom/octo/android/robospice/request/listener/g$a;)V

    invoke-virtual {p0, v1}, Lcom/octo/android/robospice/request/b/c;->a(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public b(Lcom/octo/android/robospice/request/listener/g;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public c(Lcom/octo/android/robospice/request/a;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/octo/android/robospice/request/listener/g$a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/listener/g$a;-><init>()V

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/lang/Thread;)V

    .line 104
    new-instance v1, Lcom/octo/android/robospice/request/b/c$h;

    iget-object v2, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-direct {v1, p1, v2, v0}, Lcom/octo/android/robospice/request/b/c$h;-><init>(Lcom/octo/android/robospice/request/a;Ljava/util/List;Lcom/octo/android/robospice/request/listener/g$a;)V

    invoke-virtual {p0, v1}, Lcom/octo/android/robospice/request/b/c;->a(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public c(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/octo/android/robospice/request/listener/g$a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/listener/g$a;-><init>()V

    .line 136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/lang/Thread;)V

    .line 137
    invoke-virtual {v0, p2}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/util/Set;)V

    .line 138
    new-instance v1, Lcom/octo/android/robospice/request/b/c$f;

    iget-object v2, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-direct {v1, p1, v2, v0}, Lcom/octo/android/robospice/request/b/c$f;-><init>(Lcom/octo/android/robospice/request/a;Ljava/util/List;Lcom/octo/android/robospice/request/listener/g$a;)V

    invoke-virtual {p0, v1}, Lcom/octo/android/robospice/request/b/c;->a(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public d(Lcom/octo/android/robospice/request/a;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/octo/android/robospice/request/listener/g$a;

    invoke-direct {v0}, Lcom/octo/android/robospice/request/listener/g$a;-><init>()V

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/request/listener/g$a;->a(Ljava/lang/Thread;)V

    .line 114
    new-instance v1, Lcom/octo/android/robospice/request/b/c$c;

    iget-object v2, p0, Lcom/octo/android/robospice/request/b/c;->a:Ljava/util/List;

    invoke-direct {v1, p1, v2, v0}, Lcom/octo/android/robospice/request/b/c$c;-><init>(Lcom/octo/android/robospice/request/a;Ljava/util/List;Lcom/octo/android/robospice/request/listener/g$a;)V

    invoke-virtual {p0, v1}, Lcom/octo/android/robospice/request/b/c;->a(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

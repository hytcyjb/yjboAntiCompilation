.class public Lcom/octo/android/robospice/request/e;
.super Ljava/lang/Object;
.source "RequestProgressManager.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/octo/android/robospice/request/d;

.field private final c:Lcom/octo/android/robospice/request/b/b;

.field private final d:Lcom/octo/android/robospice/request/b/c;


# direct methods
.method public constructor <init>(Lcom/octo/android/robospice/request/d;Lcom/octo/android/robospice/request/b/b;Lcom/octo/android/robospice/request/b/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/octo/android/robospice/request/e;->b:Lcom/octo/android/robospice/request/d;

    .line 40
    iput-object p2, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    .line 41
    iput-object p3, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/octo/android/robospice/request/e;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "Sending all request complete."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 92
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->b:Lcom/octo/android/robospice/request/d;

    invoke-interface {v0}, Lcom/octo/android/robospice/request/d;->a()V

    .line 94
    :cond_0
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not calling network request : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as it is cancelled. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 123
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 124
    sget-object v1, Lcom/octo/android/robospice/request/listener/RequestStatus;->COMPLETE:Lcom/octo/android/robospice/request/listener/RequestStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    .line 126
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v1, p1}, Lcom/octo/android/robospice/request/b/c;->d(Lcom/octo/android/robospice/request/a;)V

    .line 127
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v1, p1, v0}, Lcom/octo/android/robospice/request/b/b;->d(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/octo/android/robospice/request/e;->d(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 129
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;)V
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
            "Lcom/octo/android/robospice/persistence/exception/SpiceException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 114
    sget-object v1, Lcom/octo/android/robospice/request/listener/RequestStatus;->COMPLETE:Lcom/octo/android/robospice/request/listener/RequestStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    .line 116
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v1, p1}, Lcom/octo/android/robospice/request/b/c;->b(Lcom/octo/android/robospice/request/a;)V

    .line 117
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v1, p1, p2, v0}, Lcom/octo/android/robospice/request/b/b;->a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/persistence/exception/SpiceException;Ljava/util/Set;)V

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/octo/android/robospice/request/e;->d(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 119
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 99
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v1, p1}, Lcom/octo/android/robospice/request/b/c;->c(Lcom/octo/android/robospice/request/a;)V

    .line 100
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v1, p1, p2, v0}, Lcom/octo/android/robospice/request/b/b;->a(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;Ljava/util/Set;)V

    .line 101
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Collection;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 144
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v1, p1, v0}, Lcom/octo/android/robospice/request/b/b;->e(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 146
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing listeners of request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 148
    invoke-interface {v0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 150
    :cond_0
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 2
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
    .line 54
    const-string v0, "Request was *NOT* found when adding request listeners to existing requests."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 56
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/b/c;->a(Lcom/octo/android/robospice/request/a;)V

    .line 57
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v0, p1, p2}, Lcom/octo/android/robospice/request/b/b;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 58
    return-void
.end method

.method protected a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/RequestStatus;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;",
            "Lcom/octo/android/robospice/request/listener/RequestStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/octo/android/robospice/request/listener/d;

    invoke-direct {v0, p3}, Lcom/octo/android/robospice/request/listener/d;-><init>(Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/d;)V

    .line 78
    invoke-virtual {p0}, Lcom/octo/android/robospice/request/e;->a()V

    .line 79
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/d;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;",
            "Lcom/octo/android/robospice/request/listener/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "Sending progress %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/octo/android/robospice/request/listener/d;->a()Lcom/octo/android/robospice/request/listener/RequestStatus;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 84
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v0, p1, p3}, Lcom/octo/android/robospice/request/b/c;->a(Lcom/octo/android/robospice/request/a;Lcom/octo/android/robospice/request/listener/d;)V

    .line 85
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/octo/android/robospice/request/b/b;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/d;)V

    .line 86
    invoke-virtual {p0}, Lcom/octo/android/robospice/request/e;->a()V

    .line 87
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/listener/g;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/b/c;->a(Lcom/octo/android/robospice/request/listener/g;)V

    .line 154
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/octo/android/robospice/request/a",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/octo/android/robospice/request/listener/c",
            "<*>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public b(Lcom/octo/android/robospice/request/a;)Lcom/octo/android/robospice/request/listener/e;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;)",
            "Lcom/octo/android/robospice/request/listener/e;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/octo/android/robospice/request/e$1;

    invoke-direct {v0, p0, p1}, Lcom/octo/android/robospice/request/e$1;-><init>(Lcom/octo/android/robospice/request/e;Lcom/octo/android/robospice/request/a;)V

    .line 182
    return-object v0
.end method

.method public b(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/octo/android/robospice/request/a",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 105
    sget-object v1, Lcom/octo/android/robospice/request/listener/RequestStatus;->COMPLETE:Lcom/octo/android/robospice/request/listener/RequestStatus;

    invoke-virtual {p0, p1, v0, v1}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    .line 107
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v1, p1}, Lcom/octo/android/robospice/request/b/c;->c(Lcom/octo/android/robospice/request/a;)V

    .line 108
    iget-object v1, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v1, p1, p2, v0}, Lcom/octo/android/robospice/request/b/b;->a(Lcom/octo/android/robospice/request/a;Ljava/lang/Object;Ljava/util/Set;)V

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/octo/android/robospice/request/e;->d(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 110
    return-void
.end method

.method public b(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
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
    .line 61
    const-string v0, "Request was added to queue."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 63
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/b/c;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 64
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v0, p1, p2}, Lcom/octo/android/robospice/request/b/b;->b(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 65
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->k()Lcom/octo/android/robospice/request/listener/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/d;)V

    .line 66
    return-void
.end method

.method public b(Lcom/octo/android/robospice/request/listener/g;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/b/c;->b(Lcom/octo/android/robospice/request/listener/g;)V

    .line 158
    return-void
.end method

.method public c(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
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
    .line 69
    const-string v0, "Request was aggregated in queue."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 71
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/b/c;->b(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 72
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->c:Lcom/octo/android/robospice/request/b/b;

    invoke-interface {v0, p1, p2}, Lcom/octo/android/robospice/request/b/b;->c(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 73
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->k()Lcom/octo/android/robospice/request/listener/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;Lcom/octo/android/robospice/request/listener/d;)V

    .line 74
    return-void
.end method

.method public d(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 4
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
    .line 161
    const-string v0, "Removing %s  size is %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc/a/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 162
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Lcom/octo/android/robospice/request/e;->a()V

    .line 165
    iget-object v0, p0, Lcom/octo/android/robospice/request/e;->d:Lcom/octo/android/robospice/request/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/b/c;->c(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 166
    return-void
.end method

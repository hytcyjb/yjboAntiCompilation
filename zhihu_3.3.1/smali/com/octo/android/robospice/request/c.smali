.class public Lcom/octo/android/robospice/request/c;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# instance fields
.field private final a:Ljava/util/Map;
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

.field private final b:Lcom/octo/android/robospice/request/e;

.field private final c:Lcom/octo/android/robospice/request/f;

.field private final d:Lcom/octo/android/robospice/persistence/b;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/octo/android/robospice/persistence/b;Lcom/octo/android/robospice/request/e;Lcom/octo/android/robospice/request/f;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/octo/android/robospice/request/c;->d:Lcom/octo/android/robospice/persistence/b;

    .line 49
    iput-object p2, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    .line 50
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    invoke-virtual {p2, v0}, Lcom/octo/android/robospice/request/e;->a(Ljava/util/Map;)V

    .line 51
    iput-object p3, p0, Lcom/octo/android/robospice/request/c;->c:Lcom/octo/android/robospice/request/f;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/octo/android/robospice/request/c;)Lcom/octo/android/robospice/request/e;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    return-object v0
.end method

.method static synthetic b(Lcom/octo/android/robospice/request/c;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->d:Lcom/octo/android/robospice/persistence/b;

    invoke-virtual {v0}, Lcom/octo/android/robospice/persistence/b;->a()V

    .line 159
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Collection;)V
    .locals 1
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
    .line 146
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Collection;)V

    .line 147
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V
    .locals 7
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/octo/android/robospice/request/c;->e:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping request : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as processor is stopped."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 133
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding request to queue "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " size is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 65
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    iget-object v3, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    monitor-enter v3

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octo/android/robospice/request/a;

    .line 68
    invoke-virtual {p1, v0}, Lcom/octo/android/robospice/request/a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/octo/android/robospice/request/a;->f()V

    .line 70
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;)V

    .line 71
    monitor-exit v3

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    monitor-enter v3

    .line 81
    :try_start_2
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 83
    if-nez v0, :cond_6

    .line 84
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    const-string v0, "Adding entry for type %s and cacheKey %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->d()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_4
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 96
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_5
    if-eqz v1, :cond_7

    .line 100
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/e;->c(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 90
    :cond_6
    :try_start_3
    const-string v1, "Request for type %s and cacheKey %s already exists."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->d()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->h()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v1, v2

    .line 91
    goto :goto_1

    .line 93
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 104
    :cond_7
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 105
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/e;->b(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 116
    new-instance v0, Lcom/octo/android/robospice/request/c$1;

    invoke-direct {v0, p0, p1}, Lcom/octo/android/robospice/request/c$1;-><init>(Lcom/octo/android/robospice/request/c;Lcom/octo/android/robospice/request/a;)V

    .line 124
    invoke-virtual {p1, v0}, Lcom/octo/android/robospice/request/a;->a(Lcom/octo/android/robospice/request/listener/b;)V

    .line 126
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/a;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 127
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;)V

    .line 128
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    :cond_8
    if-nez v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    .line 110
    :cond_9
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/request/e;->d(Lcom/octo/android/robospice/request/a;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 131
    :cond_a
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->c:Lcom/octo/android/robospice/request/f;

    invoke-interface {v0, p1}, Lcom/octo/android/robospice/request/f;->a(Lcom/octo/android/robospice/request/a;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/octo/android/robospice/request/listener/g;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/e;->a(Lcom/octo/android/robospice/request/listener/g;)V

    .line 199
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->c:Lcom/octo/android/robospice/request/f;

    invoke-interface {v0, p1}, Lcom/octo/android/robospice/request/f;->a(Z)V

    .line 167
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octo/android/robospice/request/c;->e:Z

    .line 207
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->c:Lcom/octo/android/robospice/request/f;

    invoke-interface {v0}, Lcom/octo/android/robospice/request/f;->a()V

    .line 208
    return-void
.end method

.method public b(Lcom/octo/android/robospice/request/listener/g;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->b:Lcom/octo/android/robospice/request/e;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/e;->b(Lcom/octo/android/robospice/request/listener/g;)V

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x5d

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v0, " request count= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, ", listeners per requests = ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v0, p0, Lcom/octo/android/robospice/request/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/octo/android/robospice/request/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, " --> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

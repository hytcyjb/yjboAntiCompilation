.class public Lcom/octo/android/robospice/persistence/b;
.super Ljava/lang/Object;
.source "CacheManager.java"


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/octo/android/robospice/persistence/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/octo/android/robospice/persistence/d;",
            "Ljava/util/List",
            "<",
            "Lcom/octo/android/robospice/persistence/c",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/octo/android/robospice/persistence/b;->a:Ljava/util/Collection;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/octo/android/robospice/persistence/b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/c;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/octo/android/robospice/persistence/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/b;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octo/android/robospice/persistence/e;

    .line 168
    invoke-interface {v0, p1}, Lcom/octo/android/robospice/persistence/e;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    instance-of v2, v0, Lcom/octo/android/robospice/persistence/c;

    if-eqz v2, :cond_1

    .line 170
    check-cast v0, Lcom/octo/android/robospice/persistence/c;

    .line 186
    :goto_0
    return-object v0

    .line 173
    :cond_1
    instance-of v2, v0, Lcom/octo/android/robospice/persistence/d;

    if-eqz v2, :cond_0

    .line 174
    check-cast v0, Lcom/octo/android/robospice/persistence/d;

    .line 176
    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/persistence/d;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/octo/android/robospice/persistence/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octo/android/robospice/persistence/c;

    .line 179
    invoke-virtual {v2, p1}, Lcom/octo/android/robospice/persistence/c;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 180
    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/persistence/d;->b(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/c;

    move-result-object v2

    .line 184
    invoke-virtual {v0}, Lcom/octo/android/robospice/persistence/d;->c()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/octo/android/robospice/persistence/c;->a(Z)V

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 186
    goto :goto_0

    .line 191
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not handled by any registered ObjectPersister. Please add a Persister for this class inside the CacheManager of your SpiceService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/octo/android/robospice/persistence/b;->a(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/octo/android/robospice/persistence/c;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/octo/android/robospice/persistence/b;->a(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/c;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/octo/android/robospice/persistence/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/b;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octo/android/robospice/persistence/e;

    .line 150
    instance-of v1, v0, Lcom/octo/android/robospice/persistence/a;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 151
    check-cast v1, Lcom/octo/android/robospice/persistence/a;

    invoke-interface {v1}, Lcom/octo/android/robospice/persistence/a;->a()V

    .line 154
    :cond_1
    instance-of v1, v0, Lcom/octo/android/robospice/persistence/d;

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Lcom/octo/android/robospice/persistence/d;

    .line 156
    iget-object v1, p0, Lcom/octo/android/robospice/persistence/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octo/android/robospice/persistence/c;

    .line 158
    invoke-virtual {v0}, Lcom/octo/android/robospice/persistence/c;->a()V

    goto :goto_0

    .line 163
    :cond_2
    return-void
.end method

.method public a(Lcom/octo/android/robospice/persistence/e;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/b;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    instance-of v0, p1, Lcom/octo/android/robospice/persistence/d;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/b;->b:Ljava/util/Map;

    check-cast p1, Lcom/octo/android/robospice/persistence/d;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-void

    .line 48
    :cond_1
    instance-of v0, p1, Lcom/octo/android/robospice/persistence/c;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " only supports "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/octo/android/robospice/persistence/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/octo/android/robospice/persistence/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instances."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/octo/android/robospice/persistence/b;->a(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/octo/android/robospice/persistence/c;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/octo/android/robospice/persistence/exception/CacheCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Throwable;)I

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

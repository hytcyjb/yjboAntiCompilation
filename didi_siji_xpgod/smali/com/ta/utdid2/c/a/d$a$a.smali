.class public final Lcom/ta/utdid2/c/a/d$a$a;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/ta/utdid2/c/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/c/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ta/utdid2/c/a/d$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/c/a/d$a;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->b:Ljava/util/Map;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->c:Z

    .line 287
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;F)Lcom/ta/utdid2/c/a/b$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/ta/utdid2/c/a/b$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 295
    .line 298
    invoke-static {}, Lcom/ta/utdid2/c/a/d;->a()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v2}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    move v4, v1

    .line 300
    :goto_0
    if-eqz v4, :cond_9

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v2}, Lcom/ta/utdid2/c/a/d$a;->a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    move-object v3, v1

    .line 306
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    :try_start_1
    iget-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->c:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/c/a/d$a;->b(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->c:Z

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 315
    if-ne v0, p0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/c/a/d$a;->b(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :goto_3
    if-eqz v4, :cond_1

    .line 322
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 327
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_2
    move v4, v1

    .line 299
    goto :goto_0

    .line 318
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v7}, Lcom/ta/utdid2/c/a/d$a;->b(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 326
    :cond_4
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 327
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    :try_start_4
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-static {v0}, Lcom/ta/utdid2/c/a/d$a;->c(Lcom/ta/utdid2/c/a/d$a;)Z

    move-result v6

    .line 329
    if-eqz v6, :cond_5

    .line 330
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    invoke-virtual {v0}, Lcom/ta/utdid2/c/a/d$a;->d()V

    .line 332
    :cond_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 334
    if-eqz v4, :cond_8

    .line 335
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_8

    .line 336
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/utdid2/c/a/b$b;

    .line 338
    if-eqz v0, :cond_6

    .line 339
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a$a;->a:Lcom/ta/utdid2/c/a/d$a;

    goto :goto_5

    .line 335
    :cond_7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 346
    :cond_8
    return v6

    :cond_9
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_1
.end method

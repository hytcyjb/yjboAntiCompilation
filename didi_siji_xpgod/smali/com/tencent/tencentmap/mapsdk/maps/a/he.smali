.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/he;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/he$d;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/he$c;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, errors:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 83
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->c:Ljava/lang/Throwable;

    .line 50
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    .local v1, deDupedExceptions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, _exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 53
    .local v2, ex:Ljava/lang/Throwable;
    instance-of v4, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/he;

    if-eqz v4, :cond_0

    .line 54
    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/he;

    .end local v2           #ex:Ljava/lang/Throwable;
    iget-object v4, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 56
    .restart local v2       #ex:Ljava/lang/Throwable;
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v2           #ex:Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a:Ljava/util/List;

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exceptions occurred. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;B)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Throwable;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, errors:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;-><init>(Ljava/util/Collection;)V

    .line 67
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3
    .parameter "ex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 246
    .local v1, root:Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 252
    :goto_0
    return-object v0

    .line 254
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 250
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;)V
    .locals 9
    .parameter "s"

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, bldr:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 162
    .local v6, myStackElement:Ljava/lang/StackTraceElement;
    const-string v7, "\tat "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v6           #myStackElement:Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v3, 0x1

    .line 165
    .local v3, i:I
    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 166
    .local v2, ex:Ljava/lang/Throwable;
    const-string v7, "  ComposedException "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v7, "\t"

    invoke-static {v1, v2, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 168
    add-int/lit8 v3, v3, 0x1

    .line 169
    goto :goto_1

    .line 170
    .end local v2           #ex:Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;->a()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 171
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;->a(Ljava/lang/Object;)V

    .line 172
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6
    .parameter "bldr"
    .parameter "ex"
    .parameter "prefix"

    .prologue
    .line 176
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 178
    .local v3, stackElement:Ljava/lang/StackTraceElement;
    const-string v4, "\t\tat "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v3           #stackElement:Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 181
    const-string v4, "\tCaused by: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .end local p1
    const-string p2, ""

    .restart local p1
    goto :goto_0

    .line 184
    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 8

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->c:Ljava/lang/Throwable;

    if-nez v7, :cond_4

    .line 89
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;-><init>()V

    .line 90
    .local v0, _cause:Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v6, seenCauses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object v1, v0

    .line 93
    .local v1, chain:Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 94
    .local v3, e:Ljava/lang/Throwable;
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v7

    .line 102
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 103
    .local v2, child:Ljava/lang/Throwable;
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    new-instance v3, Ljava/lang/RuntimeException;

    .end local v3           #e:Ljava/lang/Throwable;
    const-string v7, "Duplicate found in causal chain so cropping to prevent loop ..."

    invoke-direct {v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v3       #e:Ljava/lang/Throwable;
    goto :goto_1

    .line 108
    :cond_1
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 87
    .end local v0           #_cause:Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;
    .end local v1           #chain:Ljava/lang/Throwable;
    .end local v2           #child:Ljava/lang/Throwable;
    .end local v3           #e:Ljava/lang/Throwable;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #seenCauses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Throwable;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 113
    .restart local v0       #_cause:Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;
    .restart local v1       #chain:Ljava/lang/Throwable;
    .restart local v3       #e:Ljava/lang/Throwable;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #seenCauses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 120
    goto :goto_0

    .line 121
    .end local v3           #e:Ljava/lang/Throwable;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->c:Ljava/lang/Throwable;

    .line 123
    .end local v0           #_cause:Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;
    .end local v1           #chain:Ljava/lang/Throwable;
    .end local v6           #seenCauses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_4
    iget-object v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->c:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v7

    .restart local v0       #_cause:Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;
    .restart local v1       #chain:Ljava/lang/Throwable;
    .restart local v3       #e:Ljava/lang/Throwable;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #seenCauses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Throwable;>;"
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final printStackTrace()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->printStackTrace(Ljava/io/PrintStream;)V

    .line 139
    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 143
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$c;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/he$c;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;)V

    .line 144
    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 148
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$d;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/he$d;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/he;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/he$b;)V

    .line 149
    return-void
.end method

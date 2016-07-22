.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/hp;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static final a:Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

.field private static final b:Lcom/tencent/tencentmap/mapsdk/maps/a/hp;


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hm;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/hn;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaSchedulersHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    .line 58
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp$1;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp$1;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    return-void
.end method

.method public static a()Lcom/tencent/tencentmap/mapsdk/maps/a/hp;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/hp;

    return-object v0
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, pluginClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, classSimpleName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rxjava.plugin."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".implementation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, implementingClass:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 155
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 157
    invoke-virtual {v3, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 169
    :goto_0
    return-object v3

    .line 160
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implementation is not an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implementation class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 163
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implementation not able to be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 165
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implementation not able to be accessed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 169
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/hm;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 73
    const-class v1, Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, impl:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 76
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .end local v0           #impl:Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    return-object v1

    .line 80
    .restart local v0       #impl:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->c:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hm;

    .end local v0           #impl:Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()Lcom/tencent/tencentmap/mapsdk/maps/a/hn;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 115
    const-class v1, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, impl:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ho;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .end local v0           #impl:Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    return-object v1

    .line 122
    .restart local v0       #impl:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/hp;->d:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/hn;

    .end local v0           #impl:Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

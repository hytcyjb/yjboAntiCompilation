.class public Lcom/didi/async/task/ActivityController;
.super Ljava/lang/Object;
.source "ActivityController.java"


# static fields
.field private static controller:Lcom/didi/async/task/ActivityController;


# instance fields
.field private actMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/didi/async/task/ActivityController;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/didi/async/task/ActivityController;->controller:Lcom/didi/async/task/ActivityController;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/didi/async/task/ActivityController;

    invoke-direct {v0}, Lcom/didi/async/task/ActivityController;-><init>()V

    sput-object v0, Lcom/didi/async/task/ActivityController;->controller:Lcom/didi/async/task/ActivityController;

    .line 21
    :cond_0
    sget-object v0, Lcom/didi/async/task/ActivityController;->controller:Lcom/didi/async/task/ActivityController;

    return-object v0
.end method


# virtual methods
.method public addAcitivty(Landroid/app/Activity;)V
    .locals 3
    .parameter "ac"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearActivity()V
    .locals 4

    .prologue
    .line 43
    iget-object v3, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/app/Activity;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 46
    .local v2, sf:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/app/Activity;>;"
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 49
    .local v0, ac:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 54
    .end local v0           #ac:Landroid/app/Activity;
    .end local v2           #sf:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/app/Activity;>;"
    :cond_1
    iget-object v3, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 55
    return-void
.end method

.method public isClear()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "ac"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/didi/async/task/ActivityController;->actMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

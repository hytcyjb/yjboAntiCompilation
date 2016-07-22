.class Lbolts/b$a;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lbolts/b$a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lbolts/b$1;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lbolts/b$a;-><init>()V

    return-void
.end method

.method private a()I
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lbolts/b$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 69
    iget-object v1, p0, Lbolts/b$a;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70
    return v0
.end method

.method private b()I
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lbolts/b$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 80
    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 84
    if-nez v0, :cond_1

    .line 85
    iget-object v1, p0, Lbolts/b$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 89
    :goto_0
    return v0

    .line 87
    :cond_1
    iget-object v1, p0, Lbolts/b$a;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lbolts/b$a;->a()I

    move-result v0

    .line 96
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 97
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    invoke-direct {p0}, Lbolts/b$a;->b()I

    .line 104
    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-static {}, Lbolts/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lbolts/b$a;->b()I

    throw v0
.end method

.class public Lcom/facebook/imagepipeline/producers/aq;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/aq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/imagepipeline/producers/j",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/facebook/imagepipeline/producers/aq;->b:I

    .line 44
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/aq;->e:Ljava/util/concurrent/Executor;

    .line 45
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ag;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/aq;->a:Lcom/facebook/imagepipeline/producers/ag;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/aq;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/producers/aq;->c:I

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/aq;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/aq;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/producers/aq;)I
    .locals 2
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/facebook/imagepipeline/producers/aq;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/imagepipeline/producers/aq;->c:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/aq;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/aq;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v0

    .line 53
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThrottlingProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/producers/aq;->c:I

    iget v1, p0, Lcom/facebook/imagepipeline/producers/aq;->b:I

    if-lt v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/aq;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v0, 0x1

    .line 64
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/aq;->b(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 69
    :cond_0
    return-void

    .line 61
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/facebook/imagepipeline/producers/aq;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/producers/aq;->c:I

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v0

    .line 73
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThrottlingProducer"

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/aq;->a:Lcom/facebook/imagepipeline/producers/ag;

    new-instance v1, Lcom/facebook/imagepipeline/producers/aq$a;

    invoke-direct {v1, p0, p1, v3}, Lcom/facebook/imagepipeline/producers/aq$a;-><init>(Lcom/facebook/imagepipeline/producers/aq;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aq$1;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 75
    return-void
.end method

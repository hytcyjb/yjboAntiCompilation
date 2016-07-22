.class public Lcom/facebook/imagepipeline/producers/l;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/l$b;,
        Lcom/facebook/imagepipeline/producers/l$a;,
        Lcom/facebook/imagepipeline/producers/l$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/e;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/facebook/imagepipeline/decoder/a;

.field private final d:Lcom/facebook/imagepipeline/decoder/b;

.field private final e:Lcom/facebook/imagepipeline/producers/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/e;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/a;Lcom/facebook/imagepipeline/decoder/b;ZZLcom/facebook/imagepipeline/producers/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/e;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/decoder/a;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            "ZZ",
            "Lcom/facebook/imagepipeline/producers/ag",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/e;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->a:Lcom/facebook/imagepipeline/memory/e;

    .line 70
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->b:Ljava/util/concurrent/Executor;

    .line 71
    invoke-static {p3}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/decoder/a;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->c:Lcom/facebook/imagepipeline/decoder/a;

    .line 72
    invoke-static {p4}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/decoder/b;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->d:Lcom/facebook/imagepipeline/decoder/b;

    .line 73
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/l;->f:Z

    .line 74
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/producers/l;->g:Z

    .line 75
    invoke-static {p7}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/ag;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->e:Lcom/facebook/imagepipeline/producers/ag;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/l;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/producers/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/l;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/l;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/l;)Lcom/facebook/imagepipeline/decoder/a;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->c:Lcom/facebook/imagepipeline/decoder/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/facebook/imagepipeline/producers/l$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$a;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/l;->e:Lcom/facebook/imagepipeline/producers/ag;

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/producers/ag;->a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 95
    return-void

    .line 87
    :cond_0
    new-instance v4, Lcom/facebook/imagepipeline/decoder/c;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l;->a:Lcom/facebook/imagepipeline/memory/e;

    invoke-direct {v4, v0}, Lcom/facebook/imagepipeline/decoder/c;-><init>(Lcom/facebook/imagepipeline/memory/e;)V

    .line 88
    new-instance v0, Lcom/facebook/imagepipeline/producers/l$b;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/l;->d:Lcom/facebook/imagepipeline/decoder/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/l$b;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;Lcom/facebook/imagepipeline/decoder/c;Lcom/facebook/imagepipeline/decoder/b;)V

    goto :goto_0
.end method

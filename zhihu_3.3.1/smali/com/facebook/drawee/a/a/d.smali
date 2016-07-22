.class public Lcom/facebook/drawee/a/a/d;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerBuilderSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/i",
        "<",
        "Lcom/facebook/drawee/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/imagepipeline/d/c;

.field private final c:Lcom/facebook/drawee/a/a/e;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/d/e;->a()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/a/a/d;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/e;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/drawee/a/a/d;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/e;Ljava/util/Set;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/d/e;Ljava/util/Set;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/imagepipeline/d/e;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/drawee/a/a/d;->a:Landroid/content/Context;

    .line 46
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/d/e;->i()Lcom/facebook/imagepipeline/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/a/a/d;->b:Lcom/facebook/imagepipeline/d/c;

    .line 47
    new-instance v0, Lcom/facebook/drawee/a/a/e;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/facebook/drawee/components/a;->a()Lcom/facebook/drawee/components/a;

    move-result-object v2

    .line 50
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/d/e;->c()Lcom/facebook/imagepipeline/animated/a/a;

    move-result-object v3

    .line 51
    invoke-static {}, Lcom/facebook/common/c/i;->b()Lcom/facebook/common/c/i;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/drawee/a/a/e;-><init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lcom/facebook/imagepipeline/animated/a/a;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/facebook/drawee/a/a/d;->c:Lcom/facebook/drawee/a/a/e;

    .line 52
    iput-object p3, p0, Lcom/facebook/drawee/a/a/d;->d:Ljava/util/Set;

    .line 53
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/a/a/c;
    .locals 5

    .prologue
    .line 57
    new-instance v0, Lcom/facebook/drawee/a/a/c;

    iget-object v1, p0, Lcom/facebook/drawee/a/a/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/drawee/a/a/d;->c:Lcom/facebook/drawee/a/a/e;

    iget-object v3, p0, Lcom/facebook/drawee/a/a/d;->b:Lcom/facebook/imagepipeline/d/c;

    iget-object v4, p0, Lcom/facebook/drawee/a/a/d;->d:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/drawee/a/a/c;-><init>(Landroid/content/Context;Lcom/facebook/drawee/a/a/e;Lcom/facebook/imagepipeline/d/c;Ljava/util/Set;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/d;->a()Lcom/facebook/drawee/a/a/c;

    move-result-object v0

    return-object v0
.end method

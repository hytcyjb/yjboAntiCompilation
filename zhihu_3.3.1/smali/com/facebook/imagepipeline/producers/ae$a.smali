.class public Lcom/facebook/imagepipeline/producers/ae$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "PostprocessedBitmapMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;",
        "Lcom/facebook/common/references/a",
        "<",
        "Lcom/facebook/imagepipeline/f/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/cache/common/a;

.field private final b:Z

.field private final c:Lcom/facebook/imagepipeline/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/cache/common/a;ZLcom/facebook/imagepipeline/c/p;)V
    .locals 0
    .parameter
    .parameter
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
            "Lcom/facebook/cache/common/a;",
            "Z",
            "Lcom/facebook/imagepipeline/c/p",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/j;)V

    .line 99
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ae$a;->a:Lcom/facebook/cache/common/a;

    .line 100
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/ae$a;->b:Z

    .line 101
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/ae$a;->c:Lcom/facebook/imagepipeline/c/p;

    .line 102
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lcom/facebook/imagepipeline/f/c;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 108
    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ae$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/ae$a;->b:Z

    if-eqz v0, :cond_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ae$a;->c:Lcom/facebook/imagepipeline/c/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ae$a;->a:Lcom/facebook/cache/common/a;

    .line 119
    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/c/p;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ae$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/j;->b(F)V

    .line 122
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ae$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    if-eqz v1, :cond_3

    move-object p1, v1

    :cond_3
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    throw v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ae$a;->a(Lcom/facebook/common/references/a;Z)V

    return-void
.end method

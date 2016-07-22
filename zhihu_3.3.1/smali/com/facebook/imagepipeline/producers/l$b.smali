.class Lcom/facebook/imagepipeline/producers/l$b;
.super Lcom/facebook/imagepipeline/producers/l$c;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/l;

.field private final c:Lcom/facebook/imagepipeline/decoder/c;

.field private final d:Lcom/facebook/imagepipeline/decoder/b;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;Lcom/facebook/imagepipeline/decoder/c;Lcom/facebook/imagepipeline/decoder/b;)V
    .locals 1
    .parameter
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
            "Lcom/facebook/imagepipeline/producers/ah;",
            "Lcom/facebook/imagepipeline/decoder/c;",
            "Lcom/facebook/imagepipeline/decoder/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$b;->a:Lcom/facebook/imagepipeline/producers/l;

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/l$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V

    .line 339
    invoke-static {p4}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/decoder/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/l$b;->c:Lcom/facebook/imagepipeline/decoder/c;

    .line 340
    invoke-static {p5}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/decoder/b;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/l$b;->d:Lcom/facebook/imagepipeline/decoder/b;

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/producers/l$b;->e:I

    .line 342
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/f/e;)I
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$b;->c:Lcom/facebook/imagepipeline/decoder/c;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/decoder/c;->a()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized a(Lcom/facebook/imagepipeline/f/e;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 346
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->a(Lcom/facebook/imagepipeline/f/e;Z)Z

    move-result v1

    .line 347
    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/facebook/imagepipeline/f/e;->e(Lcom/facebook/imagepipeline/f/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/l$b;->c:Lcom/facebook/imagepipeline/decoder/c;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/decoder/c;->a(Lcom/facebook/imagepipeline/f/e;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 351
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/l$b;->c:Lcom/facebook/imagepipeline/decoder/c;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/decoder/c;->b()I

    move-result v2

    .line 352
    iget v3, p0, Lcom/facebook/imagepipeline/producers/l$b;->e:I

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/l$b;->d:Lcom/facebook/imagepipeline/decoder/b;

    iget v4, p0, Lcom/facebook/imagepipeline/producers/l$b;->e:I

    .line 353
    invoke-interface {v3, v4}, Lcom/facebook/imagepipeline/decoder/b;->a(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 357
    iput v2, p0, Lcom/facebook/imagepipeline/producers/l$b;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v1

    .line 359
    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()Lcom/facebook/imagepipeline/f/h;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$b;->d:Lcom/facebook/imagepipeline/decoder/b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/l$b;->c:Lcom/facebook/imagepipeline/decoder/c;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/c;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/decoder/b;->b(I)Lcom/facebook/imagepipeline/f/h;

    move-result-object v0

    return-object v0
.end method

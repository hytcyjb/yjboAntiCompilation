.class public Lcom/facebook/imagepipeline/memory/s;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/r;

.field private b:Lcom/facebook/imagepipeline/memory/c;

.field private c:Lcom/facebook/imagepipeline/memory/j;

.field private d:Lcom/facebook/imagepipeline/memory/l;

.field private e:Lcom/facebook/imagepipeline/memory/w;

.field private f:Lcom/facebook/imagepipeline/memory/z;

.field private g:Lcom/facebook/imagepipeline/memory/e;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/r;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/r;

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/c;
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->b:Lcom/facebook/imagepipeline/memory/c;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/memory/c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 39
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/r;->c()Lcom/facebook/common/memory/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 40
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/r;->a()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 41
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/r;->b()Lcom/facebook/imagepipeline/memory/u;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/c;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/imagepipeline/memory/u;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->b:Lcom/facebook/imagepipeline/memory/c;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->b:Lcom/facebook/imagepipeline/memory/c;

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/memory/j;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->c:Lcom/facebook/imagepipeline/memory/j;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/facebook/imagepipeline/memory/j;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 49
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/r;->c()Lcom/facebook/common/memory/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 50
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/r;->f()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/j;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->c:Lcom/facebook/imagepipeline/memory/j;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->c:Lcom/facebook/imagepipeline/memory/j;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/r;->f()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    iget v0, v0, Lcom/facebook/imagepipeline/memory/t;->f:I

    return v0
.end method

.method public d()Lcom/facebook/imagepipeline/memory/l;
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->d:Lcom/facebook/imagepipeline/memory/l;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/facebook/imagepipeline/memory/l;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 62
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/r;->c()Lcom/facebook/common/memory/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 63
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/r;->d()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 64
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/r;->e()Lcom/facebook/imagepipeline/memory/u;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/l;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/imagepipeline/memory/u;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->d:Lcom/facebook/imagepipeline/memory/l;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->d:Lcom/facebook/imagepipeline/memory/l;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/memory/w;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->e:Lcom/facebook/imagepipeline/memory/w;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/imagepipeline/memory/n;

    .line 72
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/s;->d()Lcom/facebook/imagepipeline/memory/l;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/s;->f()Lcom/facebook/imagepipeline/memory/z;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/n;-><init>(Lcom/facebook/imagepipeline/memory/l;Lcom/facebook/imagepipeline/memory/z;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->e:Lcom/facebook/imagepipeline/memory/w;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->e:Lcom/facebook/imagepipeline/memory/w;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/memory/z;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->f:Lcom/facebook/imagepipeline/memory/z;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/facebook/imagepipeline/memory/z;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/s;->g()Lcom/facebook/imagepipeline/memory/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/z;-><init>(Lcom/facebook/imagepipeline/memory/e;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->f:Lcom/facebook/imagepipeline/memory/z;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->f:Lcom/facebook/imagepipeline/memory/z;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/memory/e;
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->g:Lcom/facebook/imagepipeline/memory/e;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/facebook/imagepipeline/memory/k;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 97
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/r;->c()Lcom/facebook/common/memory/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 98
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/r;->g()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/s;->a:Lcom/facebook/imagepipeline/memory/r;

    .line 99
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/r;->h()Lcom/facebook/imagepipeline/memory/u;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/k;-><init>(Lcom/facebook/common/memory/b;Lcom/facebook/imagepipeline/memory/t;Lcom/facebook/imagepipeline/memory/u;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->g:Lcom/facebook/imagepipeline/memory/e;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/s;->g:Lcom/facebook/imagepipeline/memory/e;

    return-object v0
.end method

.class public abstract Lcom/facebook/imagepipeline/animated/base/l;
.super Ljava/lang/Object;
.source "DelegatingAnimatedDrawableBackend.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/c;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/c;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/c;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    .line 27
    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/facebook/imagepipeline/animated/base/j;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->a()Lcom/facebook/imagepipeline/animated/base/j;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/graphics/Canvas;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/animated/base/c;->a(ILandroid/graphics/Canvas;)V

    .line 81
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->b()I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->b(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->c()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->c(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->d()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->d(I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->e()I

    move-result v0

    return v0
.end method

.method public e(I)Lcom/facebook/common/references/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->e(I)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->f()I

    move-result v0

    return v0
.end method

.method public f(I)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/c;->f(I)Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->g()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->h()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->i()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->j()I

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/l;->a:Lcom/facebook/imagepipeline/animated/base/c;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/c;->k()V

    .line 121
    return-void
.end method

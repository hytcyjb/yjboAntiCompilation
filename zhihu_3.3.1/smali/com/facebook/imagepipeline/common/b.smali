.class public Lcom/facebook/imagepipeline/common/b;
.super Ljava/lang/Object;
.source "ImageDecodeOptionsBuilder.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/imagepipeline/common/b;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/facebook/imagepipeline/common/b;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    return v0
.end method

.method public g()Lcom/facebook/imagepipeline/common/a;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/facebook/imagepipeline/common/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/common/a;-><init>(Lcom/facebook/imagepipeline/common/b;)V

    return-object v0
.end method

.class public Lcom/facebook/imagepipeline/producers/r;
.super Ljava/lang/Object;
.source "FetchState.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/ah;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/r;->a:Lcom/facebook/imagepipeline/producers/j;

    .line 31
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/r;->b:Lcom/facebook/imagepipeline/producers/ah;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/producers/r;->c:J

    .line 33
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/producers/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r;->a:Lcom/facebook/imagepipeline/producers/j;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/r;->c:J

    .line 61
    return-void
.end method

.method public b()Lcom/facebook/imagepipeline/producers/ah;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r;->b:Lcom/facebook/imagepipeline/producers/ah;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r;->b:Lcom/facebook/imagepipeline/producers/ah;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/producers/aj;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r;->b:Lcom/facebook/imagepipeline/producers/ah;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/r;->b:Lcom/facebook/imagepipeline/producers/ah;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/r;->c:J

    return-wide v0
.end method

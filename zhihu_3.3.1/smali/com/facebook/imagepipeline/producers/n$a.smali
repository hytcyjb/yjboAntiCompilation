.class Lcom/facebook/imagepipeline/producers/n$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "DiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/n;

.field private final b:Lcom/facebook/imagepipeline/c/e;

.field private final c:Lcom/facebook/cache/common/a;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;)V
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
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/cache/common/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n$a;->a:Lcom/facebook/imagepipeline/producers/n;

    .line 182
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/j;)V

    .line 183
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Lcom/facebook/imagepipeline/c/e;

    .line 184
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/cache/common/a;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/producers/n$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/n$a;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/f/e;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 189
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n$a;->b:Lcom/facebook/imagepipeline/c/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n$a;->c:Lcom/facebook/cache/common/a;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/n$a;->a:Lcom/facebook/imagepipeline/producers/n;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/n;->a(Lcom/facebook/imagepipeline/producers/n;)Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/a;Lcom/facebook/imagepipeline/f/e;Z)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/n$a;->d()Lcom/facebook/imagepipeline/producers/j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/j;->b(Ljava/lang/Object;Z)V

    .line 193
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    check-cast p1, Lcom/facebook/imagepipeline/f/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/n$a;->a(Lcom/facebook/imagepipeline/f/e;Z)V

    return-void
.end method

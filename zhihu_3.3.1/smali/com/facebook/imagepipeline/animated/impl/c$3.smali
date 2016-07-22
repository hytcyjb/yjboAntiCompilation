.class Lcom/facebook/imagepipeline/animated/impl/c$3;
.super Ljava/lang/Object;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/impl/c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/facebook/imagepipeline/animated/impl/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/impl/c;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c$3;->b:Lcom/facebook/imagepipeline/animated/impl/c;

    iput p2, p0, Lcom/facebook/imagepipeline/animated/impl/c$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c$3;->b:Lcom/facebook/imagepipeline/animated/impl/c;

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/c$3;->a:I

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/animated/impl/c;->b(Lcom/facebook/imagepipeline/animated/impl/c;I)V

    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

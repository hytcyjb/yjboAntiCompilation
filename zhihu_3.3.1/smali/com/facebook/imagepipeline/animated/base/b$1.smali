.class Lcom/facebook/imagepipeline/animated/base/b$1;
.super Ljava/lang/Object;
.source "AnimatedDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/animated/base/b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/b;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/b$1;->a:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b$1;->a:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/base/b;->a(Lcom/facebook/imagepipeline/animated/base/b;)V

    .line 105
    return-void
.end method

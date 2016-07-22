.class Lcom/facebook/imagepipeline/animated/impl/c$1;
.super Ljava/lang/Object;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/impl/c;-><init>(Lcom/facebook/common/c/g;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/common/time/b;Lcom/facebook/imagepipeline/animated/base/c;Lcom/facebook/imagepipeline/animated/base/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/animated/impl/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/impl/c;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c$1;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/common/references/a;
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
    .line 116
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c$1;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->a(Lcom/facebook/imagepipeline/animated/impl/c;I)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c$1;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/c;->a(Lcom/facebook/imagepipeline/animated/impl/c;ILandroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method

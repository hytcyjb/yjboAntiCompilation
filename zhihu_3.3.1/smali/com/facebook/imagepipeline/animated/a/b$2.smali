.class Lcom/facebook/imagepipeline/animated/a/b$2;
.super Ljava/lang/Object;
.source "AnimatedImageFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/a/b;->a(Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/facebook/imagepipeline/animated/a/b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/a/b;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/a/b$2;->b:Lcom/facebook/imagepipeline/animated/a/b;

    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/a/b$2;->a:Ljava/util/List;

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
    .line 171
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/a/b$2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    return-void
.end method

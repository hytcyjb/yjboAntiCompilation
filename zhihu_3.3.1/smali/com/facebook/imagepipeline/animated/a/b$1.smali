.class Lcom/facebook/imagepipeline/animated/a/b$1;
.super Ljava/lang/Object;
.source "AnimatedImageFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/a/b;->a(Lcom/facebook/imagepipeline/animated/base/h;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/animated/a/b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/a/b$1;->a:Lcom/facebook/imagepipeline/animated/a/b;

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
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    return-void
.end method

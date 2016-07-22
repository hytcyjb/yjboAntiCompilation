.class Lcom/facebook/imagepipeline/animated/impl/c$2;
.super Ljava/lang/Object;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Lcom/facebook/common/references/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/impl/c;-><init>(Lcom/facebook/common/c/g;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/b/a;Lcom/facebook/common/time/b;Lcom/facebook/imagepipeline/animated/base/c;Lcom/facebook/imagepipeline/animated/base/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/c",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/animated/impl/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/impl/c;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/c$2;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/c$2;->a:Lcom/facebook/imagepipeline/animated/impl/c;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/c;->a(Landroid/graphics/Bitmap;)V

    .line 123
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/c$2;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

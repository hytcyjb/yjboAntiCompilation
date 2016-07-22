.class public Lcom/facebook/imagepipeline/b/a;
.super Lcom/facebook/imagepipeline/b/e;
.source "ArtBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/c;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/c;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/imagepipeline/b/e;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/imagepipeline/b/a;->a:Lcom/facebook/imagepipeline/memory/c;

    .line 45
    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1, p2, p3}, Lcom/facebook/c/a;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/facebook/imagepipeline/b/a;->a:Lcom/facebook/imagepipeline/memory/c;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/memory/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 63
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)V

    .line 64
    iget-object v1, p0, Lcom/facebook/imagepipeline/b/a;->a:Lcom/facebook/imagepipeline/memory/c;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

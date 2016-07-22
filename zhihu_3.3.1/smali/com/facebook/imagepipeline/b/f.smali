.class public Lcom/facebook/imagepipeline/b/f;
.super Ljava/lang/Object;
.source "SimpleBitmapReleaser.java"

# interfaces
.implements Lcom/facebook/common/references/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/c",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/imagepipeline/b/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/b/f;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/imagepipeline/b/f;->a:Lcom/facebook/imagepipeline/b/f;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/facebook/imagepipeline/b/f;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/b/f;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/b/f;->a:Lcom/facebook/imagepipeline/b/f;

    .line 27
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/b/f;->a:Lcom/facebook/imagepipeline/b/f;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/b/f;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

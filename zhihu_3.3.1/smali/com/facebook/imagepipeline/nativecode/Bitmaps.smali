.class public Lcom/facebook/imagepipeline/nativecode/Bitmaps;
.super Ljava/lang/Object;
.source "Bitmaps.java"


# annotations
.annotation build Lcom/facebook/common/internal/d;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "bitmaps"

    invoke-static {v0}, Lcom/facebook/common/f/a;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p0}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    mul-int v1, p1, p2

    .line 84
    invoke-static {p3}, Lcom/facebook/c/a;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v2

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 82
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 86
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeCopyBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;II)V
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

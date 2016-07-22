.class Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;
.super Ljava/lang/Object;
.source "FinalBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/FinalBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalBitmapConfig"
.end annotation


# instance fields
.field public cachePath:Ljava/lang/String;

.field public defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

.field public diskCacheSize:I

.field public displayer:Lnet/tsz/afinal/bitmap/display/Displayer;

.field public downloader:Lnet/tsz/afinal/bitmap/download/Downloader;

.field public memCacheSize:I

.field public memCacheSizePercent:F

.field public poolSize:I

.field public recycleImmediately:Z

.field final synthetic this$0:Lnet/tsz/afinal/FinalBitmap;


# direct methods
.method public constructor <init>(Lnet/tsz/afinal/FinalBitmap;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 761
    iput-object p1, p0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->this$0:Lnet/tsz/afinal/FinalBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    const/4 v2, 0x3

    iput v2, p0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->poolSize:I

    .line 759
    iput-boolean v4, p0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->recycleImmediately:Z

    .line 762
    new-instance v2, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-direct {v2}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;-><init>()V

    iput-object v2, p0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    .line 764
    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 765
    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v2, v4}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setAnimationType(I)V

    .line 768
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 769
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 770
    .local v0, defaultWidth:I
    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v2, v0}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapHeight(I)V

    .line 771
    iget-object v2, p0, Lnet/tsz/afinal/FinalBitmap$FinalBitmapConfig;->defaultDisplayConfig:Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v2, v0}, Lnet/tsz/afinal/bitmap/core/BitmapDisplayConfig;->setBitmapWidth(I)V

    .line 773
    return-void
.end method

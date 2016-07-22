.class Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;
.super Ljava/lang/Object;
.source "DDriveImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/imageloader/DDriveImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapWithKey"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/ddrive/imageloader/DDriveImageLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/didi/ddrive/imageloader/DDriveImageLoader$BitmapWithKey;-><init>()V

    return-void
.end method

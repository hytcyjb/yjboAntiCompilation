.class Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;
.super Ljava/lang/Object;
.source "BtsImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/imageloader/BtsImageLoader;
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
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/beatles/imageloader/BtsImageLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/didi/beatles/imageloader/BtsImageLoader$BitmapWithKey;-><init>()V

    return-void
.end method

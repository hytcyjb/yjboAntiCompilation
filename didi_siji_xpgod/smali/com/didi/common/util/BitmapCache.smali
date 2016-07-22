.class public Lcom/didi/common/util/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# instance fields
.field private mCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0xa0

    .line 14
    .local v0, maxSize:I
    new-instance v1, Lcom/didi/common/util/BitmapCache$1;

    invoke-direct {v1, p0, v0}, Lcom/didi/common/util/BitmapCache$1;-><init>(Lcom/didi/common/util/BitmapCache;I)V

    iput-object v1, p0, Lcom/didi/common/util/BitmapCache;->mCache:Landroid/support/v4/util/LruCache;

    .line 20
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"

    .prologue
    .line 24
    iget-object v1, p0, Lcom/didi/common/util/BitmapCache;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 25
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/common/util/BitmapCache;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

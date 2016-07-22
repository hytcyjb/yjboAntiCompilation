.class Lcom/didi/car/model/CarSNSConfig$1;
.super Ljava/lang/Thread;
.source "CarSNSConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/model/CarSNSConfig;->loadPicture(Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/didi/car/model/CarSNSConfig;

.field final synthetic val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarSNSConfig;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/didi/car/model/CarSNSConfig$1;->this$0:Lcom/didi/car/model/CarSNSConfig;

    iput-object p2, p0, Lcom/didi/car/model/CarSNSConfig$1;->val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const-string v1, "weibo.jpg"

    invoke-static {v0, v1}, Lcom/didi/common/util/ImageUtil;->createBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarSNSConfig$1;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig$1;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig$1;->this$0:Lcom/didi/car/model/CarSNSConfig;

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig$1;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/didi/car/model/CarSNSConfig$1;->val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;

    #calls: Lcom/didi/car/model/CarSNSConfig;->postLoaded(Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    invoke-static {v0, v1, v2}, Lcom/didi/car/model/CarSNSConfig;->access$000(Lcom/didi/car/model/CarSNSConfig;Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/didi/car/model/CarSNSConfig$1$1;

    invoke-direct {v0, p0}, Lcom/didi/car/model/CarSNSConfig$1$1;-><init>(Lcom/didi/car/model/CarSNSConfig$1;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

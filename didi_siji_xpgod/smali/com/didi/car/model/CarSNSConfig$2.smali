.class Lcom/didi/car/model/CarSNSConfig$2;
.super Ljava/lang/Object;
.source "CarSNSConfig.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/model/CarSNSConfig;->loadPictureFromNet(Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
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
    .line 99
    iput-object p1, p0, Lcom/didi/car/model/CarSNSConfig$2;->this$0:Lcom/didi/car/model/CarSNSConfig;

    iput-object p2, p0, Lcom/didi/car/model/CarSNSConfig$2;->val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 104
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3
    .parameter "response"
    .parameter "isImmediate"

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/model/CarSNSConfig$2;->mBitmap:Landroid/graphics/Bitmap;

    .line 109
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig$2;->this$0:Lcom/didi/car/model/CarSNSConfig;

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig$2;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/didi/car/model/CarSNSConfig$2;->val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;

    #calls: Lcom/didi/car/model/CarSNSConfig;->postLoaded(Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    invoke-static {v0, v1, v2}, Lcom/didi/car/model/CarSNSConfig;->access$000(Lcom/didi/car/model/CarSNSConfig;Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    .line 110
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig$2;->this$0:Lcom/didi/car/model/CarSNSConfig;

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig$2;->mBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/didi/car/model/CarSNSConfig;->writePictureToFile(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/didi/car/model/CarSNSConfig;->access$200(Lcom/didi/car/model/CarSNSConfig;Landroid/graphics/Bitmap;)V

    .line 111
    return-void
.end method

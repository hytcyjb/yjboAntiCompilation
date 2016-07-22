.class Lcom/didi/common/model/SNSConfig$2;
.super Ljava/lang/Object;
.source "SNSConfig.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/model/SNSConfig;->loadPictureFromNet(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/didi/common/model/SNSConfig;

.field final synthetic val$l:Lcom/didi/common/model/SNSConfig$ImageLoadListener;


# direct methods
.method constructor <init>(Lcom/didi/common/model/SNSConfig;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/didi/common/model/SNSConfig$2;->this$0:Lcom/didi/common/model/SNSConfig;

    iput-object p2, p0, Lcom/didi/common/model/SNSConfig$2;->val$l:Lcom/didi/common/model/SNSConfig$ImageLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 119
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3
    .parameter "response"
    .parameter "isImmediate"

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/SNSConfig$2;->mBitmap:Landroid/graphics/Bitmap;

    .line 124
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig$2;->this$0:Lcom/didi/common/model/SNSConfig;

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig$2;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/didi/common/model/SNSConfig$2;->val$l:Lcom/didi/common/model/SNSConfig$ImageLoadListener;

    #calls: Lcom/didi/common/model/SNSConfig;->postLoaded(Landroid/graphics/Bitmap;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    invoke-static {v0, v1, v2}, Lcom/didi/common/model/SNSConfig;->access$000(Lcom/didi/common/model/SNSConfig;Landroid/graphics/Bitmap;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SNSConfig loadPictureFromNet url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig$2;->this$0:Lcom/didi/common/model/SNSConfig;

    iget-object v1, v1, Lcom/didi/common/model/SNSConfig;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig$2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig$2;->this$0:Lcom/didi/common/model/SNSConfig;

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig$2;->mBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/didi/common/model/SNSConfig;->writePictureToFile(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/didi/common/model/SNSConfig;->access$200(Lcom/didi/common/model/SNSConfig;Landroid/graphics/Bitmap;)V

    .line 127
    return-void
.end method

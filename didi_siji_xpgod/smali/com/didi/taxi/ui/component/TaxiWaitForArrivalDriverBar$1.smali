.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;
.super Lthread/Job;
.source "TaxiWaitForArrivalDriverBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->getDriverPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    iput-object p2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostRun()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgAvatar:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;)Lx/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    :cond_0
    return-void
.end method

.method protected run()V
    .locals 3

    .prologue
    .line 265
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/helper/ImageFetcher;->fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 271
    .local v1, radius:I
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/didi/common/util/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;->mBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

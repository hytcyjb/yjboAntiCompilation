.class Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;
.super Ljava/lang/Object;
.source "CarWaitForArrivalDriverBar.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->getDriverPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;Landroid/graphics/Bitmap;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

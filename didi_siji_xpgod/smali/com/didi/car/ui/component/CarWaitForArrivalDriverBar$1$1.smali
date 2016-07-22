.class Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1$1;
.super Ljava/lang/Object;
.source "CarWaitForArrivalDriverBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1$1;->this$1:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;

    iput-object p2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1$1;->this$1:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;

    iget-object v0, v0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;

    #getter for: Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mImgAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->access$000(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    return-void
.end method

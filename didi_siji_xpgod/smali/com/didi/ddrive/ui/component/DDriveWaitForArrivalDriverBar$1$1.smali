.class Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1$1;
.super Ljava/lang/Object;
.source "DDriveWaitForArrivalDriverBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1$1;->this$1:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1;

    iput-object p2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1$1;->this$1:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1;

    iget-object v0, v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mImgAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->access$000(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    return-void
.end method

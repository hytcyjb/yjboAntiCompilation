.class Lcom/didi/car/ui/component/CancelTripReasonView$1;
.super Ljava/lang/Object;
.source "CancelTripReasonView.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CancelTripReasonView;->setImgIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CancelTripReasonView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CancelTripReasonView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/car/ui/component/CancelTripReasonView$1;->this$0:Lcom/didi/car/ui/component/CancelTripReasonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView$1;->this$0:Lcom/didi/car/ui/component/CancelTripReasonView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CancelTripReasonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView$1;->this$0:Lcom/didi/car/ui/component/CancelTripReasonView;

    #getter for: Lcom/didi/car/ui/component/CancelTripReasonView;->icon:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CancelTripReasonView;->access$000(Lcom/didi/car/ui/component/CancelTripReasonView;)Lx/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    return-void
.end method
.class Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$1;
.super Ljava/lang/Object;
.source "DDriveCancelTripReasonView.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->setImgIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->icon:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->access$000(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)Lx/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method

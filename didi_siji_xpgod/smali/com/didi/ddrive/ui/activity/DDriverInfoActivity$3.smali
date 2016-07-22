.class Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$3;
.super Ljava/lang/Object;
.source "DDriverInfoActivity.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$3;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$3;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$3;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/frame/driverinfo/DriverInfoView;->setDriverPhoto(Landroid/graphics/Bitmap;)V

    .line 141
    return-void
.end method

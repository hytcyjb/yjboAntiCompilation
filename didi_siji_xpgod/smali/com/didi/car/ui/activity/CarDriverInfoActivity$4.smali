.class Lcom/didi/car/ui/activity/CarDriverInfoActivity$4;
.super Ljava/lang/Object;
.source "CarDriverInfoActivity.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$4;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$4;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$4;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$000(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)Lcom/didi/car/ui/component/CarDriverInfoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarDriverInfoView;->setDriverPhoto(Landroid/graphics/Bitmap;)V

    .line 135
    return-void
.end method

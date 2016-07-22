.class Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$1;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFriendInfoView.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->loadFriendIcon(Lcom/didi/taxi/model/TaxiOrderState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    iget-object v0, v0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->ivCarpoolFriendIcon:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    invoke-virtual {v0, p1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    const/4 v1, 0x2

    #setter for: Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->headImagLoadStatus:I
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->access$002(Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;I)I

    .line 106
    :cond_0
    return-void
.end method

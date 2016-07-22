.class Lcom/didi/common/ui/userinfo/UserInfoView$1;
.super Ljava/lang/Object;
.source "UserInfoView.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/UserInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoView$1;->this$0:Lcom/didi/common/ui/userinfo/UserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView$1;->this$0:Lcom/didi/common/ui/userinfo/UserInfoView;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoView;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoView;->access$000(Lcom/didi/common/ui/userinfo/UserInfoView;)Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    move-result-object v0

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageResource(I)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView$1;->this$0:Lcom/didi/common/ui/userinfo/UserInfoView;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoView;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoView;->access$000(Lcom/didi/common/ui/userinfo/UserInfoView;)Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

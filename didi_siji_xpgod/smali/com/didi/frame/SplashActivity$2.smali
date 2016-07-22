.class Lcom/didi/frame/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/SplashActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x2

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplashAcBitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 140
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    iget-boolean v1, v1, Lcom/didi/frame/SplashActivity;->isDestory:Z

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    iget-object v1, v1, Lcom/didi/frame/SplashActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v1, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    iget-object v1, v1, Lcom/didi/frame/SplashActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    iget-object v1, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    #setter for: Lcom/didi/frame/SplashActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/didi/frame/SplashActivity;->access$102(Lcom/didi/frame/SplashActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 149
    iget-object v1, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    #getter for: Lcom/didi/frame/SplashActivity;->mCoverView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/frame/SplashActivity;->access$200(Lcom/didi/frame/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    #getter for: Lcom/didi/frame/SplashActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/didi/frame/SplashActivity;->access$100(Lcom/didi/frame/SplashActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    iget-object v1, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 152
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/didi/frame/SplashActivity$2;->this$0:Lcom/didi/frame/SplashActivity;

    #getter for: Lcom/didi/frame/SplashActivity;->mCoverView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/frame/SplashActivity;->access$200(Lcom/didi/frame/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

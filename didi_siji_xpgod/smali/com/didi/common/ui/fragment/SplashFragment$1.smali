.class Lcom/didi/common/ui/fragment/SplashFragment$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SplashFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x2

    .line 55
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    iget-boolean v1, v1, Lcom/didi/common/ui/fragment/SplashFragment;->isDestory:Z

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    #setter for: Lcom/didi/common/ui/fragment/SplashFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/didi/common/ui/fragment/SplashFragment;->access$002(Lcom/didi/common/ui/fragment/SplashFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 64
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    #getter for: Lcom/didi/common/ui/fragment/SplashFragment;->mCoverView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/SplashFragment;->access$100(Lcom/didi/common/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    #getter for: Lcom/didi/common/ui/fragment/SplashFragment;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/SplashFragment;->access$000(Lcom/didi/common/ui/fragment/SplashFragment;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    invoke-virtual {v1}, Lcom/didi/common/ui/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 67
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/didi/common/ui/fragment/SplashFragment$1;->this$0:Lcom/didi/common/ui/fragment/SplashFragment;

    #getter for: Lcom/didi/common/ui/fragment/SplashFragment;->mCoverView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/SplashFragment;->access$100(Lcom/didi/common/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

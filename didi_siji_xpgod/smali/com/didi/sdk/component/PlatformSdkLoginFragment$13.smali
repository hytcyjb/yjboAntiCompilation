.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$13;
.super Ljava/util/TimerTask;
.source "PlatformSdkLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$13;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 691
    invoke-static {}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2510()I

    .line 693
    invoke-static {}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2500()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2500()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$13;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1400(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 696
    :cond_0
    invoke-static {}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2500()I

    move-result v0

    if-gtz v0, :cond_1

    .line 697
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 698
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$13;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1400(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 699
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$13;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 701
    :cond_1
    return-void
.end method

.class Lcom/didi/common/ui/fragment/CommonLoginFragment$14;
.super Ljava/util/TimerTask;
.source "CommonLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$14;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 679
    invoke-static {}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2710()I

    .line 681
    invoke-static {}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2700()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2700()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$14;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 684
    :cond_0
    invoke-static {}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2700()I

    move-result v0

    if-gtz v0, :cond_1

    .line 685
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 686
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$14;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 687
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$14;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 689
    :cond_1
    return-void
.end method

.class Lcom/didi/beatles/business/login/BtsLoginActivity$14;
.super Ljava/util/TimerTask;
.source "BtsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;->myTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$14;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 715
    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2410()I

    .line 716
    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2400()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2400()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$14;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1300(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 719
    :cond_0
    invoke-static {}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2400()I

    move-result v0

    if-gtz v0, :cond_1

    .line 720
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 721
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$14;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1300(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 722
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$14;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 724
    :cond_1
    return-void
.end method

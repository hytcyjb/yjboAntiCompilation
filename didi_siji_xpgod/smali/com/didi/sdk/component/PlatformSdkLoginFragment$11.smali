.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$11;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "PlatformSdkLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment;
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
    .line 658
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$11;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 661
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 662
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 663
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 667
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 668
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 669
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$11;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->verification()V
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    .line 670
    return-void
.end method

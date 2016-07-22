.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$10;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "CarPayWxAgentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1600(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    .line 464
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    .line 456
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->removeDialog()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1600(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    .line 457
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-virtual {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0308

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 458
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->doWxAgent()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1700(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V

    .line 459
    return-void
.end method

.class Lcom/didi/frame/PreassembleActivity$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "PreassembleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/PreassembleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/PreassembleActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/PreassembleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/didi/frame/PreassembleActivity$1;->this$0:Lcom/didi/frame/PreassembleActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->exit()V

    .line 59
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/didi/frame/PreassembleActivity$1;->this$0:Lcom/didi/frame/PreassembleActivity;

    #getter for: Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/frame/PreassembleActivity;->access$000(Lcom/didi/frame/PreassembleActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/PreassembleActivity$1;->this$0:Lcom/didi/frame/PreassembleActivity;

    #getter for: Lcom/didi/frame/PreassembleActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v2}, Lcom/didi/frame/PreassembleActivity;->access$000(Lcom/didi/frame/PreassembleActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/helper/DialogHelper;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setShowPreassign(Z)V

    .line 50
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/frame/PreassembleActivity$1;->this$0:Lcom/didi/frame/PreassembleActivity;

    const-class v2, Lcom/didi/frame/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enter_temp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/didi/frame/PreassembleActivity$1;->this$0:Lcom/didi/frame/PreassembleActivity;

    invoke-virtual {v1, v0}, Lcom/didi/frame/PreassembleActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    iget-object v1, p0, Lcom/didi/frame/PreassembleActivity$1;->this$0:Lcom/didi/frame/PreassembleActivity;

    invoke-virtual {v1}, Lcom/didi/frame/PreassembleActivity;->finish()V

    .line 54
    return-void
.end method

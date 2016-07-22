.class Lcom/didi/common/ui/webview/OldWebActivity$5$4;
.super Ljava/lang/Object;
.source "OldWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/OldWebActivity$5;->onLoginTokenValidate(Lcom/didi/common/ui/webview/WebViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

.field final synthetic val$webViewModel:Lcom/didi/common/ui/webview/WebViewModel;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/OldWebActivity$5;Lcom/didi/common/ui/webview/WebViewModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$4;->this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

    iput-object p2, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$4;->val$webViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 491
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/MainActivity;->closeDrawer()V

    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "data_model"

    iget-object v2, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$4;->val$webViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 494
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$4;->this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/didi/common/ui/component/UiHelper;->promptLoginDialog(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 495
    iget-object v1, p0, Lcom/didi/common/ui/webview/OldWebActivity$5$4;->this$1:Lcom/didi/common/ui/webview/OldWebActivity$5;

    iget-object v1, v1, Lcom/didi/common/ui/webview/OldWebActivity$5;->this$0:Lcom/didi/common/ui/webview/OldWebActivity;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/OldWebActivity;->finish()V

    .line 496
    return-void
.end method

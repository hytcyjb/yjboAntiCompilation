.class final Lcom/didi/common/ui/component/UiHelper$2;
.super Ljava/lang/Object;
.source "UiHelper.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/UiHelper;->createInvalidTokenCommonDialogListener(Lcom/didi/common/helper/DialogHelper;Lcom/didi/common/ui/fragment/SlideFragment;Landroid/os/Bundle;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/common/ui/component/UiHelper$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public submitOnly()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setToken(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTToken(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->deleteAllItem(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/didi/common/ui/component/UiHelper$2;->val$bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showLoginFragment()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/UiHelper$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/didi/frame/FragmentMgr;->showLoginFragment(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

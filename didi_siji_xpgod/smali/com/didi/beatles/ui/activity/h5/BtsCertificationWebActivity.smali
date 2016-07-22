.class public Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "BtsCertificationWebActivity.java"


# static fields
.field public static final BUNDLE_NEED_UPDATE_USER_INFO:Ljava/lang/String; = "need_update_user_info"


# instance fields
.field private mNeedUpdateUserInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->mNeedUpdateUserInfo:Z

    return p1
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, data:Landroid/content/Intent;
    const-string v1, "need_update_user_info"

    iget-boolean v2, p0, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->mNeedUpdateUserInfo:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 68
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedBundleInstance"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object v0, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackUserAuthState"

    new-instance v2, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity$1;-><init>(Lcom/didi/beatles/ui/activity/h5/BtsCertificationWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 52
    return-void
.end method

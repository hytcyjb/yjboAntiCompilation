.class public Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "BtsDriverAuthWebActivity.java"


# instance fields
.field private mNeedUpdateUserInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->mNeedUpdateUserInfo:Z

    return-void
.end method

.method static synthetic access$002(Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->mNeedUpdateUserInfo:Z

    return p1
.end method

.method public static startActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 28
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 29
    .local v1, carInfoModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getCarAuthUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 30
    const v2, 0x7f0b022d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, carInfoIntent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, data:Landroid/content/Intent;
    const-string v1, "need_update_user_info"

    iget-boolean v2, p0, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->mNeedUpdateUserInfo:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 84
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget-object v0, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackDriverAuthFinished"

    new-instance v2, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity$1;-><init>(Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 53
    sget-object v0, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackUserAuthState"

    new-instance v2, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity$2;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity$2;-><init>(Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 68
    return-void
.end method

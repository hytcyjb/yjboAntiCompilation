.class public Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "BtsProfileWebActivity.java"


# static fields
.field public static final ROLE_DRIVER:I = 0x1

.field public static final ROLE_PASSENGER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method

.method public static startProfileWebActivity(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "uid"
    .parameter "role"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->startProfileWebActivity(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 30
    return-void
.end method

.method public static startProfileWebActivity(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 4
    .parameter "context"
    .parameter "uid"
    .parameter "role"
    .parameter "share"

    .prologue
    .line 33
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPsngrId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string p1, "0"

    .line 37
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 39
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {p1, p2, p3}, Lcom/didi/beatles/net/BtsRequest;->getProfilePageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 40
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    .line 41
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startProfileWebActivity, title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 44
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget-object v0, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackEditPage"

    new-instance v2, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity$1;-><init>(Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onDestroy()V

    .line 73
    return-void
.end method

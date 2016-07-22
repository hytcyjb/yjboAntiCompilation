.class public Lcom/didi/frame/O2OWebToActivity;
.super Landroid/app/Activity;
.source "O2OWebToActivity.java"


# static fields
.field public static URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/didi/frame/O2OWebToActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/didi/frame/O2OWebToActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 31
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "o2ourl"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/didi/frame/O2OWebToActivity;->URL:Ljava/lang/String;

    .line 32
    if-eqz v1, :cond_0

    .line 33
    const-string v3, "didipasnger"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "didi_o2o_host"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Lcom/didi/frame/O2OWebToActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    sput-boolean v5, Lcom/didi/common/util/Constant;->isFromO2o:Z

    .line 57
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/didi/frame/O2OWebToActivity;->finish()V

    .line 58
    return-void

    .line 40
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/didi/frame/O2OWebToActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 42
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const-string v3, "found"

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 43
    const v3, 0x7f0b0594

    iput v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->rightTextResId:I

    .line 44
    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    .line 45
    iput-boolean v5, v2, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 46
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 47
    sget-object v3, Lcom/didi/frame/O2OWebToActivity;->URL:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/didi/frame/O2OWebToActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

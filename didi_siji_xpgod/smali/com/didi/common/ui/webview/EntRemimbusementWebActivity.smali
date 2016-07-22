.class public Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "EntRemimbusementWebActivity.java"


# static fields
.field public static final RemimbursementSuccess:Ljava/lang/String; = "ReimbursementSuccess"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->remimbursementSuccess()V

    return-void
.end method

.method private remimbursementSuccess()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ReimbursementSuccess"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->finish()V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    const-string v1, "ReimbursementSuccess"

    new-instance v2, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$1;-><init>(Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 34
    iget-object v0, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->btnShare:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->btnShare:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b042e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;->btnShare:Landroid/widget/Button;

    new-instance v1, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity$2;-><init>(Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

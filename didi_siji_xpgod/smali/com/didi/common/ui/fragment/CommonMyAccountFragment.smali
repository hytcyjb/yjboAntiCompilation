.class public Lcom/didi/common/ui/fragment/CommonMyAccountFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CommonMyAccountFragment.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private errorView:Landroid/view/View;

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private progressBar:Landroid/app/ProgressDialog;

.field private webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$1;-><init>(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webViewClient:Landroid/webkit/WebViewClient;

    .line 112
    new-instance v0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$2;-><init>(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)Lcom/didi/common/ui/webview/CommonWebViewEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->progressBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->showError()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->back()V

    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 123
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/MainActivity;->switchLeftView(I)V

    .line 124
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 69
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f0b01cf

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 71
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 72
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 73
    return-void
.end method

.method private setWebView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 52
    const v0, 0x7f080023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/webview/CommonWebViewEx;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 53
    const v0, 0x7f080024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->errorView:Landroid/view/View;

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 55
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b0308

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->progressBar:Landroid/app/ProgressDialog;

    .line 56
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 57
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 58
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 59
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 62
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/CommonWebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 64
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getMyAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->errorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 110
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->back()V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->webView:Lcom/didi/common/ui/webview/CommonWebViewEx;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 46
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->setTitleBar()V

    .line 47
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->setWebView(Landroid/view/View;)V

    .line 48
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 79
    return-void
.end method

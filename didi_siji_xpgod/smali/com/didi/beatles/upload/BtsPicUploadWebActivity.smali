.class public Lcom/didi/beatles/upload/BtsPicUploadWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "BtsPicUploadWebActivity.java"


# static fields
.field public static final DATA_PARAMS_KEY:Ljava/lang/String; = "DATA_PARAMS_KEY"

.field public static final FINAL_PIC_MSG_KEY:Ljava/lang/String; = "pic_msg_key"

.field private static final REQ_OPEN_PICUPLOAD_ACTIVITY:I = 0x64

.field public static final UPLOAD_URL_KEY:Ljava/lang/String; = "UPLOAD_URL_KEY"


# instance fields
.field private mCallBackMethod:Ljava/lang/String;

.field private mNeedUpdateUserInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->mCallBackMethod:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->mNeedUpdateUserInfo:Z

    return-void
.end method

.method static synthetic access$002(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->mNeedUpdateUserInfo:Z

    return p1
.end method

.method static synthetic access$102(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->mCallBackMethod:Ljava/lang/String;

    return-object p1
.end method

.method public static startActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 36
    .local v1, carInfoModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getCarAuthUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 37
    const v2, 0x7f0b022d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, carInfoIntent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, data:Landroid/content/Intent;
    const-string v1, "need_update_user_info"

    iget-boolean v2, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->mNeedUpdateUserInfo:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 157
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 135
    const/16 v3, 0x64

    if-ne p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 136
    const-string v3, "pic_msg_key"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"data\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, finalMsg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->getmCommonWebView()Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v2

    .line 139
    .local v2, webView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->mCallBackMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 141
    .end local v0           #finalMsg:Ljava/lang/String;
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #webView:Lcom/didi/common/ui/webview/CommonWebViewEx;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget-object v0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackDriverAuthFinished"

    new-instance v2, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$1;-><init>(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 61
    sget-object v0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackUserAuthState"

    new-instance v2, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$2;

    invoke-direct {v2, p0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$2;-><init>(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 79
    sget-object v0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackImageLiteratureReview"

    new-instance v2, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$3;

    invoke-direct {v2, p0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$3;-><init>(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 96
    sget-object v0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackImageLiteratureReviewTakeCamera"

    new-instance v2, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$4;

    invoke-direct {v2, p0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$4;-><init>(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 114
    sget-object v0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->javascriptBridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "callbackImageLiteratureReviewPhotoLibrary"

    new-instance v2, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$5;

    invoke-direct {v2, p0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$5;-><init>(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 131
    return-void
.end method

.class public Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsWeixinLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$9;,
        Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;,
        Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;,
        Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;,
        Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;
    }
.end annotation


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private mButton:Landroid/widget/Button;

.field private mRandNicknameButton:Landroid/widget/Button;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private randButtonListener:Landroid/view/View$OnClickListener;

.field private saveWeixinRoleListener:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;"
        }
    .end annotation
.end field

.field private submitListener:Landroid/view/View$OnClickListener;

.field private submitListener2:Landroid/view/View$OnClickListener;

.field tokenListener:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsWeixinToken;",
            ">;"
        }
    .end annotation
.end field

.field userInfoListener:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsWeixinUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 128
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$1;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->tokenListener:Lcom/didi/beatles/net/BtsResponseListener;

    .line 154
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$2;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->userInfoListener:Lcom/didi/beatles/net/BtsResponseListener;

    .line 234
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->randButtonListener:Landroid/view/View$OnClickListener;

    .line 258
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$4;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 268
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$5;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->submitListener2:Landroid/view/View$OnClickListener;

    .line 276
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$6;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->submitListener:Landroid/view/View$OnClickListener;

    .line 306
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$7;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->saveWeixinRoleListener:Lcom/didi/beatles/net/BtsResponseListener;

    .line 407
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->onWeixinAuthFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Lcom/didi/beatles/model/BtsWeixinUserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->onGotWeixinUserInfo(Lcom/didi/beatles/model/BtsWeixinUserInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->showToastInfo(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)Lcom/didi/beatles/net/BtsResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->saveWeixinRoleListener:Lcom/didi/beatles/net/BtsResponseListener;

    return-object v0
.end method

.method private bindView()V
    .locals 3

    .prologue
    .line 219
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mButton:Landroid/widget/Button;

    .line 220
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->submitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const-string v1, "wxd5b252a1660012b4"

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 223
    .local v0, api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    const-string v1, "wxd5b252a1660012b4"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 225
    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mButton:Landroid/widget/Button;

    const v2, 0x7f02007a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 227
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->submitListener2:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_0
    const v1, 0x7f0801b1

    invoke-virtual {p0, v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mRandNicknameButton:Landroid/widget/Button;

    .line 231
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mRandNicknameButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->randButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method private getToken(Ljava/lang/String;)V
    .locals 6
    .parameter "code"

    .prologue
    const/4 v5, 0x0

    .line 117
    const-string v0, "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code"

    .line 118
    .local v0, format:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "wxd5b252a1660012b4"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "6ce77cdc97585c8b812b9bf1b5a0966e"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 123
    const v2, 0x7f0b0125

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v5, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 125
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->tokenListener:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getWeixinToken(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 126
    return-void
.end method

.method private onGotWeixinUserInfo(Lcom/didi/beatles/model/BtsWeixinUserInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    iget-object v1, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->headUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->openId:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->nickName:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->gender:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGotWeixinUserInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->headUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    .line 206
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;

    iget-object v1, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->headUrl:Ljava/lang/String;

    new-instance v2, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;

    iget-object v3, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->openId:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->nickName:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/beatles/model/BtsWeixinUserInfo;->gender:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$MyImageLoaderListener;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Landroid/content/Context;Ljava/lang/String;Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageLoaderListener;)V

    .line 200
    .local v0, loader:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ImageDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onWeixinAuthFailed()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 187
    const-string v0, "onWeixinAuthFailed "

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "open_id"
    .parameter "nickname"
    .parameter "gender"
    .parameter "path"

    .prologue
    .line 319
    new-instance v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;-><init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3, p4, v0}, Lcom/didi/beatles/net/BtsRequest;->passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 347
    return-void
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 209
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 211
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    .line 215
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method private showToastInfo(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "msg"

    .prologue
    .line 387
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->removeLoadingDialog()V

    .line 388
    sget-object v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$9;->$SwitchMap$com$didi$beatles$business$login$BtsWeixinLoginActivity$ToastType:[I

    invoke-virtual {p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 390
    :pswitch_0
    invoke-static {p2}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :pswitch_1
    invoke-static {p2}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :pswitch_2
    invoke-static {p2}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 68
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x67

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->setTitlebar()V

    .line 82
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->bindView()V

    .line 84
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 101
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;)V
    .locals 1
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_WEIXIN_GET_CODE"
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p1, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;->result:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p1, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;->code:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getToken(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->onWeixinAuthFailed()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendWXRequest(Lcom/tencent/mm/sdk/openapi/IWXAPI;)V
    .locals 4
    .parameter "api"

    .prologue
    .line 288
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 289
    .local v0, req:Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 290
    const-string v1, "none"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 293
    invoke-interface {p1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    const-string v1, "weixin send req failed!"

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;-><init>(ZLjava/lang/String;)V

    const-string v2, "BTS_WEIXIN_GET_CODE"

    invoke-static {v1, v2}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v1, "weixin send req sucess!"

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    goto :goto_0
.end method

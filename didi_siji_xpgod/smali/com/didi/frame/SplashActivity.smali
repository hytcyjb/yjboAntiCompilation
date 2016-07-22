.class public Lcom/didi/frame/SplashActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "SplashActivity.java"


# static fields
.field private static final MSG_EXIT_APP:I = 0x2

.field private static final TIME_DELAY_LAUNCH:I = 0x7d0

.field private static final TIME_LEAST_LAUNCH:I = 0xfa0


# instance fields
.field private imgSplashLogo:Landroid/widget/ImageView;

.field isDestory:Z

.field private locationListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mAdvertisementImageListener:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCoverView:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/frame/SplashActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/SplashActivity;->isDestory:Z

    .line 69
    new-instance v0, Lcom/didi/frame/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/SplashActivity$1;-><init>(Lcom/didi/frame/SplashActivity;)V

    iput-object v0, p0, Lcom/didi/frame/SplashActivity;->locationListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 135
    new-instance v0, Lcom/didi/frame/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/SplashActivity$2;-><init>(Lcom/didi/frame/SplashActivity;)V

    iput-object v0, p0, Lcom/didi/frame/SplashActivity;->mAdvertisementImageListener:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    .line 156
    new-instance v0, Lcom/didi/frame/SplashActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/SplashActivity$3;-><init>(Lcom/didi/frame/SplashActivity;)V

    iput-object v0, p0, Lcom/didi/frame/SplashActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/SplashActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/didi/frame/SplashActivity;->initCheck()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/SplashActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/frame/SplashActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/didi/frame/SplashActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/frame/SplashActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mCoverView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/SplashActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/didi/frame/SplashActivity;->enterApp()V

    return-void
.end method

.method private checkIsFirst()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-static {p0}, Lcom/didi/common/util/Utils;->getDisplayPixels(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 236
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    .line 240
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFirst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isFirstBoot()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->isFirstBoot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/common/config/Preferences;->setFirstBoot(Z)V

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/frame/VersionIntroActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/didi/frame/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->finish()V

    .line 245
    const/4 v1, 0x1

    .line 247
    :cond_1
    return v1
.end method

.method private checkPreassembledPkg()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------checkpkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 256
    sget-boolean v3, Lcom/didi/common/util/Constant;->isComeFromExtend:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/didi/common/util/Constant;->HUAWEI_ZHIJIAN_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------checkpkg2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 259
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 260
    .local v0, enter:Z
    if-eqz v1, :cond_0

    .line 261
    const-string v3, "enter_temp"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 262
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isShowedPreassign()Z

    move-result v3

    if-nez v3, :cond_2

    .line 263
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 264
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/didi/frame/PreassembleActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/didi/frame/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 265
    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->finish()V

    .line 270
    .end local v0           #enter:Z
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private enterApp()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/didi/frame/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    invoke-static {}, Lcom/didi/common/helper/IconHelper;->preLoadIconList()V

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/frame/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, in:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/didi/frame/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->finish()V

    .line 230
    return-void
.end method

.method private getCommonSentence()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/didi/frame/SplashActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/SplashActivity$4;-><init>(Lcom/didi/frame/SplashActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    return-void
.end method

.method private initCheck()V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/frame/SplashActivity;->resetParams()V

    .line 84
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/soso/location/LocationController;->startLocation(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0}, Lcom/didi/frame/SplashActivity;->checkIsFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/didi/frame/SplashActivity;->getCommonSentence()V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->TRACE_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->NET_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 92
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    invoke-static {}, Lcom/didi/common/helper/AnnouncementHelper;->checkLocalImgState()V

    .line 95
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/common/util/Constant;->isCheck:Z

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_intro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mAdvertisementImageListener:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    invoke-static {v0}, Lcom/didi/common/helper/AdvertisementHelper;->showAdvertisement(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetParams()V
    .locals 0

    .prologue
    .line 251
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->resetOrderCityId()V

    .line 252
    return-void
.end method

.method private showLocationDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, dh:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 61
    const/4 v1, 0x0

    const-string v2, "\u6ef4\u6ef4\u6253\u8f66\u9700\u8981\u83b7\u53d6GPS\u3001\u57fa\u7ad9\u5b9a\u4f4d\u4fe1\u606f\u3001WIFI\u53ca\u6570\u636e\u7f51\u7edc\u4ee5\u65b9\u4fbf\u60a8\u53eb\u5230\u5468\u8fb9\u53f8\u673a\uff0c\u662f\u5426\u5141\u8bb8\u83b7\u53d6\u5b9a\u4f4d\u53ca\u7f51\u7edc\uff1f"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 63
    iget-object v1, p0, Lcom/didi/frame/SplashActivity;->locationListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 64
    const-string v1, "\u62d2\u7edd"

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 65
    const-string v1, "\u5141\u8bb8"

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 67
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/didiModify/modifier.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->putFilePath(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getChangeIPFlag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {v0}, Lcom/didi/beatles/utils/BtsHttpFileUtils;->read(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/SplashActivity;->checkPreassembledPkg()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->finish()V

    .line 133
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/didi/frame/SplashActivity;->requestWindowFeature(I)Z

    .line 119
    const v1, 0x7f0300f5

    invoke-virtual {p0, v1}, Lcom/didi/frame/SplashActivity;->setContentView(I)V

    .line 120
    const v1, 0x7f080563

    invoke-virtual {p0, v1}, Lcom/didi/frame/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/SplashActivity;->mCoverView:Landroid/widget/ImageView;

    .line 121
    const v1, 0x7f080562

    invoke-virtual {p0, v1}, Lcom/didi/frame/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/SplashActivity;->imgSplashLogo:Landroid/widget/ImageView;

    .line 123
    sget-boolean v1, Lcom/didi/common/util/Constant;->isComeFromExtend:Z

    if-eqz v1, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/didi/frame/SplashActivity;->initCheck()V

    goto :goto_0

    .line 126
    :cond_2
    sget-boolean v1, Lcom/didi/common/util/Constant;->isPreRom:Z

    if-eqz v1, :cond_3

    .line 127
    invoke-direct {p0, p0}, Lcom/didi/frame/SplashActivity;->showLocationDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/didi/frame/SplashActivity;->initCheck()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 220
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    .line 221
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onStart()V

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_intro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mAdvertisementImageListener:Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;

    invoke-static {v0}, Lcom/didi/common/helper/AdvertisementHelper;->showAdvertisement(Lcom/didi/common/helper/AdvertisementHelper$AdvertisementImageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onStop()V

    .line 208
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->imgSplashLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/SplashActivity;->isDestory:Z

    .line 212
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/didi/frame/SplashActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    :cond_0
    return-void
.end method

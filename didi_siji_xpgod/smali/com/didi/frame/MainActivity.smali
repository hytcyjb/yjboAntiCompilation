.class public Lcom/didi/frame/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/MainActivity$CallFragmentListener;
    }
.end annotation


# static fields
.field public static final ACTION_BOOK_ORDER_HINT_DIALOG:Ljava/lang/String; = "hint_type_dialog"

.field public static final ACTION_BOOK_ORDER_HINT_HISTORY:Ljava/lang/String; = "hint_type_history"

.field private static final EXTRA_DATA:Ljava/lang/String; = "extra_data"

.field public static final INTENT_NOTIFICATION:Ljava/lang/String; = "notification_data"

.field private static callFragmentListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/MainActivity$CallFragmentListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static hasCalledSaveInstance:Z

.field public static isFromHtml:Z

.field private static isPaused:Z

.field public static isShowNotify:Z

.field private static isStopped:Z

.field private static sActivityRef:Lcom/didi/frame/MainActivity;

.field public static testLat:Ljava/lang/String;

.field public static testLng:Ljava/lang/String;


# instance fields
.field private checkUpdateJob:Lthread/Job;

.field private isCreate:Z

.field private locationListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

.field mHandler:Landroid/os/Handler;

.field private mHintDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mHomeKeyReceiver:Lcom/didi/common/helper/HomeKeyHelper$HomeKeyReceiver;

.field private mIMUnreadTotalChangeLis:Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;

.field private mMenuFragment:Lcom/didi/common/ui/fragment/MenuFragment;

.field private mNetReceiver:Lcom/didi/common/receiver/NetReceiver;

.field private mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

.field private mViewDrawLeft:Landroid/view/View;

.field private updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    sput-boolean v0, Lcom/didi/frame/MainActivity;->isPaused:Z

    .line 153
    sput-boolean v0, Lcom/didi/frame/MainActivity;->isStopped:Z

    .line 154
    sput-boolean v0, Lcom/didi/frame/MainActivity;->hasCalledSaveInstance:Z

    .line 155
    sput-boolean v0, Lcom/didi/frame/MainActivity;->isFromHtml:Z

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/frame/MainActivity;->callFragmentListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 183
    new-instance v0, Lcom/didi/frame/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$1;-><init>(Lcom/didi/frame/MainActivity;)V

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->locationListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 299
    new-instance v0, Lcom/didi/frame/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$4;-><init>(Lcom/didi/frame/MainActivity;)V

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    .line 519
    new-instance v0, Lcom/didi/frame/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$6;-><init>(Lcom/didi/frame/MainActivity;)V

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mHandler:Landroid/os/Handler;

    .line 812
    new-instance v0, Lcom/didi/frame/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$9;-><init>(Lcom/didi/frame/MainActivity;)V

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mHintDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 1018
    new-instance v0, Lcom/didi/frame/MainActivity$14;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$14;-><init>(Lcom/didi/frame/MainActivity;)V

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mIMUnreadTotalChangeLis:Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;

    .line 1049
    new-instance v0, Lcom/didi/frame/MainActivity$15;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$15;-><init>(Lcom/didi/frame/MainActivity;)V

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/MainActivity;Lcom/didi/common/model/ExternalData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/didi/frame/MainActivity;->redirectToConfirmFragment(Lcom/didi/common/model/ExternalData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->uploadTraceLog()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/frame/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->refreshIMUnread()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/frame/MainActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/frame/MainActivity;)Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    return-object v0
.end method

.method private checkPreassembledPkg()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1248
    sget-object v3, Lcom/didi/common/util/Constant;->HUAWEI_CHANNEL:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1249
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1250
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1251
    .local v0, enter:Z
    if-eqz v1, :cond_0

    .line 1252
    const-string v3, "enter_temp"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1253
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isShowedPreassign()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1254
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1255
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/didi/frame/PreassembleActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1256
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->finish()V

    .line 1261
    .end local v0           #enter:Z
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkSendVoucherSupportRequest()V
    .locals 2

    .prologue
    .line 884
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, token:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 886
    invoke-static {}, Lcom/didi/common/helper/VoucherHelper;->getVoucherRedPointSupportFromServer()V

    .line 888
    :cond_0
    return-void
.end method

.method private checkStatus()V
    .locals 3

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/didi/frame/MainActivity;->isCreate:Z

    if-eqz v0, :cond_0

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/MainActivity;->isCreate:Z

    .line 955
    new-instance v0, Lcom/didi/frame/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$11;-><init>(Lcom/didi/frame/MainActivity;)V

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 965
    :goto_0
    return-void

    .line 963
    :cond_0
    invoke-static {}, Lcom/didi/common/util/LocUtil;->getInstance()Lcom/didi/common/util/LocUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/util/LocUtil;->checkNetStatus()V

    goto :goto_0
.end method

.method private createLogDirs()V
    .locals 2

    .prologue
    .line 458
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

    .line 459
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

    .line 460
    invoke-static {}, Lcom/didi/common/util/LogUtil;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->DEBUG_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 463
    :cond_0
    return-void
.end method

.method private deleAll(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 528
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method public static getActivity()Lcom/didi/frame/MainActivity;
    .locals 1

    .prologue
    .line 1141
    sget-object v0, Lcom/didi/frame/MainActivity;->sActivityRef:Lcom/didi/frame/MainActivity;

    return-object v0
.end method

.method private getExternalIntent(Landroid/content/Intent;)Z
    .locals 12
    .parameter "intent"

    .prologue
    const/16 v11, 0x3e9

    const/4 v6, 0x1

    .line 630
    const-string v7, "externaldata"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 631
    const-string v7, "externaldata"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/ExternalData;

    .line 632
    .local v0, externalData:Lcom/didi/common/model/ExternalData;
    if-eqz v0, :cond_4

    iget v7, v0, Lcom/didi/common/model/ExternalData;->orderType:I

    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 633
    iget-object v7, v0, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/didi/common/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 634
    .local v3, size:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---extend--data---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/didi/common/model/ExternalData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---extend--data---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/didi/common/model/ExternalData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 636
    const-wide/16 v7, 0x800

    cmp-long v7, v3, v7

    if-gtz v7, :cond_0

    .line 637
    const-string v7, "\u53eb\u8f66\u5931\u8d25!\n\u97f3\u9891\u6587\u4ef6\u4e0d\u5b8c\u6574\uff0c\u8bf7\u9009\u62e9\u6587\u672c\u53eb\u8f66\n"

    invoke-static {v7}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 638
    iget-object v7, v0, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/didi/frame/MainActivity;->deleAll(Ljava/lang/String;)V

    .line 670
    .end local v0           #externalData:Lcom/didi/common/model/ExternalData;
    .end local v3           #size:J
    :goto_0
    return v6

    .line 641
    .restart local v0       #externalData:Lcom/didi/common/model/ExternalData;
    .restart local v3       #size:J
    :cond_0
    const-wide/16 v7, 0x6c00

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    .line 642
    const-string v7, "\u53eb\u8f66\u5931\u8d25!\n\u97f3\u9891\u6587\u4ef6\u8fc7\u5927\uff0c\u8bf7\u9009\u62e9\u6587\u672c\u53eb\u8f66\n"

    invoke-static {v7}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 643
    iget-object v7, v0, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/didi/frame/MainActivity;->deleAll(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_1
    iget-wide v7, v0, Lcom/didi/common/model/ExternalData;->voiceTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-wide v7, v0, Lcom/didi/common/model/ExternalData;->voiceTime:J

    const-wide/16 v9, 0xc

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 647
    :cond_2
    const-wide/16 v7, 0xa

    iput-wide v7, v0, Lcom/didi/common/model/ExternalData;->voiceTime:J

    .line 649
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "record.amr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 650
    .local v5, voicePath:Ljava/lang/String;
    iget-object v7, v0, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/didi/common/util/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 651
    .local v1, isOk:Z
    if-eqz v1, :cond_4

    .line 652
    iget-object v7, v0, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/didi/frame/MainActivity;->deleAll(Ljava/lang/String;)V

    .line 656
    .end local v1           #isOk:Z
    .end local v3           #size:J
    .end local v5           #voicePath:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/didi/common/util/Utils;->isValidCall()Z

    move-result v7

    if-nez v7, :cond_5

    .line 657
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-------------------huawei isValidCall:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/didi/common/util/Utils;->isValidCall()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 658
    const-string v7, "\u8bf7\u7ed3\u675f\u5f53\u524d\u8ba2\u5355\uff01"

    invoke-static {v7}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 659
    iget-object v7, v0, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/didi/frame/MainActivity;->deleAll(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-------------------huawei externalData:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/didi/common/model/ExternalData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 663
    iget-object v7, p0, Lcom/didi/frame/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 664
    .local v2, msg:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    iput v11, v2, Landroid/os/Message;->what:I

    .line 666
    iget-object v7, p0, Lcom/didi/frame/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object v7, p0, Lcom/didi/frame/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x5dc

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 670
    .end local v0           #externalData:Lcom/didi/common/model/ExternalData;
    .end local v2           #msg:Landroid/os/Message;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private getPushMsg(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    .line 828
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 830
    .local v0, bundle:Landroid/os/Bundle;
    const-string v10, "notification_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 831
    const-string v10, "notification_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/didi/beatles/notification/Redirect;

    .line 832
    .local v6, redirectTarget:Lcom/didi/beatles/notification/Redirect;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BtsGetui="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 833
    invoke-static {p0, v6}, Lcom/didi/beatles/notification/BtsNotificationUtils;->processExtraData(Landroid/content/Context;Lcom/didi/beatles/notification/Redirect;)V

    .line 873
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v6           #redirectTarget:Lcom/didi/beatles/notification/Redirect;
    :cond_0
    :goto_0
    return-void

    .line 835
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "push_title"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 836
    .local v8, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "push_content"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, content:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 839
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "push_redirectjsonobject"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 840
    .local v7, strRedirect:Ljava/lang/String;
    invoke-static {v7}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 842
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 843
    .local v5, jsonRedirect:Lorg/json/JSONObject;
    new-instance v1, Lcom/didi/common/notification/CommonRedirectModel;

    invoke-direct {v1, v5}, Lcom/didi/common/notification/CommonRedirectModel;-><init>(Lorg/json/JSONObject;)V

    .line 844
    .local v1, commonRedirectModel:Lcom/didi/common/notification/CommonRedirectModel;
    iget v10, v1, Lcom/didi/common/notification/CommonRedirectModel;->linkType:I

    if-nez v10, :cond_2

    .line 845
    invoke-direct {p0, v8, v2}, Lcom/didi/frame/MainActivity;->showPushMessageDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    .end local v1           #commonRedirectModel:Lcom/didi/common/notification/CommonRedirectModel;
    .end local v5           #jsonRedirect:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 864
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 846
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v1       #commonRedirectModel:Lcom/didi/common/notification/CommonRedirectModel;
    .restart local v5       #jsonRedirect:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget v10, v1, Lcom/didi/common/notification/CommonRedirectModel;->linkType:I

    if-ne v10, v12, :cond_3

    .line 847
    new-instance v9, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v9}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 848
    .local v9, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v10, v1, Lcom/didi/common/notification/CommonRedirectModel;->mWebRedirect:Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;

    iget-object v10, v10, Lcom/didi/common/notification/CommonRedirectModel$WebRedirect;->url:Ljava/lang/String;

    iput-object v10, v9, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 850
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v4, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 851
    .local v4, intentWebActivity:Landroid/content/Intent;
    const-string v10, "data_model"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 852
    invoke-virtual {p0, v4}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 853
    .end local v4           #intentWebActivity:Landroid/content/Intent;
    .end local v9           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_3
    iget v10, v1, Lcom/didi/common/notification/CommonRedirectModel;->linkType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 855
    iget-object v10, v1, Lcom/didi/common/notification/CommonRedirectModel;->mNativeRedirect:Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;

    iget v10, v10, Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;->type:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 856
    iget-object v10, v1, Lcom/didi/common/notification/CommonRedirectModel;->mNativeRedirect:Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;

    iget v10, v10, Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;->type:I

    if-ne v12, v10, :cond_0

    .line 859
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/didi/common/helper/LocationHelper;->setOnPushOpenCar(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 868
    .end local v1           #commonRedirectModel:Lcom/didi/common/notification/CommonRedirectModel;
    .end local v5           #jsonRedirect:Lorg/json/JSONObject;
    :cond_4
    invoke-direct {p0, v8, v2}, Lcom/didi/frame/MainActivity;->showPushMessageDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasCalledSaveInstance()Z
    .locals 1

    .prologue
    .line 1184
    invoke-static {}, Lcom/didi/frame/MainActivity;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    const/4 v0, 0x1

    .line 1186
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/didi/frame/MainActivity;->hasCalledSaveInstance:Z

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/didi/taxi/price/TaxiPriceAdapter;->getInstance()Lcom/didi/taxi/price/TaxiPriceAdapter;

    .line 312
    invoke-static {}, Lcom/didi/taxi/wait/TaxiWaitAdapter;->getInstance()Lcom/didi/taxi/wait/TaxiWaitAdapter;

    .line 313
    invoke-static {}, Lcom/didi/car/price/CarPriceAdapter;->getInstance()Lcom/didi/car/price/CarPriceAdapter;

    .line 314
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelAdapter;->getInstance()Lcom/didi/frame/carmodel/CarModelAdapter;

    .line 315
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 316
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->initPush()V

    .line 317
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->registerLoginListener()V

    .line 318
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->registerIMNotificationMessageListener()V

    .line 319
    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mIMUnreadTotalChangeLis:Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;

    invoke-static {v1}, Lcom/didi/im/helper/IMPushHelper;->registerIMUnreadTotalChangeListener(Lcom/didi/im/helper/IMPushHelper$IMUnreadTotalChangeListener;)V

    .line 320
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->startUUIDWatching()V

    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    new-instance v1, Lcom/didi/common/receiver/NetReceiver;

    invoke-direct {v1}, Lcom/didi/common/receiver/NetReceiver;-><init>()V

    iput-object v1, p0, Lcom/didi/frame/MainActivity;->mNetReceiver:Lcom/didi/common/receiver/NetReceiver;

    .line 326
    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mNetReceiver:Lcom/didi/common/receiver/NetReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    :try_start_0
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->checkSendVoucherSupportRequest()V

    .line 329
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->checkIMUnread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->resetInstance()V

    .line 333
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/didi/frame/recovery/RecoveryHelper;->init(Landroid/content/Context;)V

    .line 335
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->loadUserInfo()V

    .line 336
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->initIgxin()V

    .line 337
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->initMiPayload()V

    .line 338
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->createLogDirs()V

    .line 340
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->startAppWatcher()V

    .line 342
    invoke-static {}, Lcom/didi/ddrive/managers/DDriveAlertManager;->getInstance()Lcom/didi/ddrive/managers/DDriveAlertManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/didi/ddrive/managers/DDriveAlertManager;->register(Landroid/content/Context;)V

    .line 345
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->initTraceSdk()V

    .line 346
    return-void

    .line 330
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 198
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/soso/location/LocationController;->startLocation(Landroid/content/Context;)V

    .line 199
    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->init(Landroid/content/Context;)V

    .line 200
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 201
    invoke-static {v2}, Lcom/tendcloud/tenddata/TCAgent;->setReportUncaughtExceptions(Z)V

    .line 202
    invoke-static {}, Lcom/didi/common/crash/CrashHandler;->getInstance()Lcom/didi/common/crash/CrashHandler;

    .line 203
    sput-object p0, Lcom/didi/frame/MainActivity;->sActivityRef:Lcom/didi/frame/MainActivity;

    .line 204
    iput-boolean v2, p0, Lcom/didi/frame/MainActivity;->isCreate:Z

    .line 206
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->showFragments()V

    .line 207
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->initMenu()V

    .line 208
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->setLocationView()V

    .line 209
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/didi/frame/MainActivity;->updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    invoke-static {p0, v0, v1, v2}, Lcom/didi/common/download/UpdateHelper;->update(Landroid/app/Activity;ZLcom/didi/common/download/UpdateHelper$UpdatedListener;Z)Lthread/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->checkUpdateJob:Lthread/Job;

    .line 210
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->urlDebug()V

    .line 211
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 212
    sget-object v0, Lcom/didi/common/util/Constant;->TD_CPA_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->init()Lcom/didi/frame/business/redirector/RedirectEngine;

    .line 214
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->init()V

    .line 215
    invoke-static {}, Lcom/didi/beatles/push/BtsPushController;->regiseterBtsOrderStatusPush()V

    .line 222
    return-void
.end method

.method private initIgxin()V
    .locals 6

    .prologue
    .line 469
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v2

    .line 470
    .local v2, pushManager:Lcom/igexin/sdk/PushManager;
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    .line 471
    new-instance v1, Lcom/igexin/sdk/Tag;

    invoke-direct {v1}, Lcom/igexin/sdk/Tag;-><init>()V

    .line 472
    .local v1, mTag:Lcom/igexin/sdk/Tag;
    const-string v3, "tag_nold_compatible"

    invoke-virtual {v1, v3}, Lcom/igexin/sdk/Tag;->setName(Ljava/lang/String;)V

    .line 473
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/igexin/sdk/Tag;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, p0, v3}, Lcom/igexin/sdk/PushManager;->setTag(Landroid/content/Context;[Lcom/igexin/sdk/Tag;)I

    move-result v0

    .line 474
    .local v0, iSetTag:I
    const-string v3, "mainactivitysettag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settag result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private initMenu()V
    .locals 2

    .prologue
    .line 272
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/didi/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    .line 273
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    new-instance v1, Lcom/didi/frame/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/didi/frame/MainActivity$3;-><init>(Lcom/didi/frame/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->setDrawerLayoutListener(Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;)V

    .line 290
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/didi/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;

    .line 291
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "mentFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/MenuFragment;

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mMenuFragment:Lcom/didi/common/ui/fragment/MenuFragment;

    .line 292
    return-void
.end method

.method private initMiPayload()V
    .locals 4

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .line 354
    .local v0, message:Lcom/xiaomi/mipush/sdk/MiPushMessage;
    if-nez v0, :cond_1

    .line 364
    .end local v0           #message:Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :cond_0
    :goto_0
    return-void

    .line 356
    .restart local v0       #message:Lcom/xiaomi/mipush/sdk/MiPushMessage;
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/beatles/notification/Redirect;->payloadToRedirect(Ljava/lang/String;)Lcom/didi/beatles/notification/Redirect;

    move-result-object v1

    .line 357
    .local v1, redirect:Lcom/didi/beatles/notification/Redirect;
    if-eqz v1, :cond_0

    .line 358
    const/4 v2, 0x2

    iput v2, v1, Lcom/didi/beatles/notification/Redirect;->pushType:I

    .line 359
    invoke-static {p0, v1}, Lcom/didi/beatles/notification/BtsNotificationUtils;->processExtraData(Landroid/content/Context;Lcom/didi/beatles/notification/Redirect;)V

    goto :goto_0
.end method

.method private initTraceSdk()V
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->startTraceService(Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method public static isInvalid()Z
    .locals 2

    .prologue
    .line 1165
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    .line 1166
    .local v0, activity:Lcom/didi/frame/MainActivity;
    if-nez v0, :cond_0

    .line 1167
    const/4 v1, 0x1

    .line 1168
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->isFinishing()Z

    move-result v1

    goto :goto_0
.end method

.method public static isPaused()Z
    .locals 1

    .prologue
    .line 1172
    invoke-static {}, Lcom/didi/frame/MainActivity;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    const/4 v0, 0x1

    .line 1174
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/didi/frame/MainActivity;->isPaused:Z

    goto :goto_0
.end method

.method public static isStopped()Z
    .locals 1

    .prologue
    .line 1178
    invoke-static {}, Lcom/didi/frame/MainActivity;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    const/4 v0, 0x1

    .line 1180
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/didi/frame/MainActivity;->isStopped:Z

    goto :goto_0
.end method

.method private onHintDialogIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 776
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    .line 777
    .local v1, fragmentMgr:Lcom/didi/frame/FragmentMgr;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v6

    .line 778
    .local v6, sendable:Lcom/didi/frame/Sendable;
    const/4 v0, 0x0

    .line 780
    .local v0, commAttr:Lcom/didi/common/model/CommonAttributes;
    const-string v8, "order_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 781
    .local v5, poid:Ljava/lang/String;
    const/4 v4, 0x0

    .line 783
    .local v4, oid:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 784
    invoke-interface {v6}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 787
    :cond_0
    if-eqz v0, :cond_1

    .line 788
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v4

    .line 791
    :cond_1
    if-nez v4, :cond_3

    move v3, v7

    .line 792
    .local v3, isInOrder:Z
    :goto_0
    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isCarWaitForArrivalFragment()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isTaxiWaitForArrivalFragment()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    const/4 v2, 0x1

    .line 794
    .local v2, isInArrival:Z
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 799
    :goto_2
    return-void

    .line 791
    .end local v2           #isInArrival:Z
    .end local v3           #isInOrder:Z
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .restart local v3       #isInOrder:Z
    :cond_4
    move v2, v7

    .line 792
    goto :goto_1

    .line 798
    .restart local v2       #isInArrival:Z
    :cond_5
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->showBookOrderHintDialog()V

    goto :goto_2
.end method

.method private onHintHistoryIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 772
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showMyOrdersFragment()V

    .line 773
    return-void
.end method

.method private parseCommonMarketingIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 722
    const-string v1, "common_marketing"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 723
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 725
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/didi/frame/MainActivity;->isFromHtml:Z

    .line 726
    new-instance v1, Lcom/didi/frame/MainActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/didi/frame/MainActivity$8;-><init>(Lcom/didi/frame/MainActivity;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private parseH5Intent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 374
    if-nez p1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v5, "extra_data"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 379
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 383
    const-string v5, "productid"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, id:Ljava/lang/String;
    const-string v5, "259"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, path:Ljava/lang/String;
    const-string v5, "/beatles_homepage"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 397
    const-string v5, "/beatles_driver_orderdetail"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 398
    const-string v5, "orderid"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, orderId:Ljava/lang/String;
    const-string v5, "routeid"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, routeId:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {p0, v5, v1, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->startActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v1           #orderId:Ljava/lang/String;
    .end local v3           #routeId:Ljava/lang/String;
    :cond_2
    const-string v5, "/beatles_passenger_orderdetail"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 408
    const-string v5, "orderid"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .restart local v1       #orderId:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    .end local v1           #orderId:Ljava/lang/String;
    :cond_3
    const-string v5, "/beatles_verifydriver"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 425
    const-string v5, "/beatles_hongbao"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 434
    const-string v5, "/didi_mall"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method private redirectToConfirmFragment(Lcom/didi/common/model/ExternalData;)V
    .locals 5
    .parameter "externalData"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 535
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->isHomeShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 538
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCreateOrderStyle()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 539
    const-string v1, "\u8be5\u57ce\u5e02\u672a\u5f00\u901a\u8bed\u97f3\u53eb\u8f66\u4e1a\u52a1\uff0c\u8bf7\u9009\u62e9\u6587\u672c\u53eb\u8f66"

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 540
    iget-object v1, p1, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/frame/MainActivity;->deleAll(Ljava/lang/String;)V

    .line 565
    :goto_0
    return-void

    .line 544
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 545
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 547
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isTaxiRealtimeFragment()Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 549
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 551
    :cond_2
    if-eqz p1, :cond_5

    iget v1, p1, Lcom/didi/common/model/ExternalData;->orderType:I

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/didi/common/model/ExternalData;->voicePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p1, Lcom/didi/common/model/ExternalData;->orderType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget v1, p1, Lcom/didi/common/model/ExternalData;->orderType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 553
    :cond_4
    const v1, 0x7f0b04b8

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 557
    :goto_1
    new-instance v1, Lcom/didi/frame/MainActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/didi/frame/MainActivity$7;-><init>(Lcom/didi/frame/MainActivity;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x5dc

    invoke-static {v1, v2, v3}, Lutil/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 555
    :cond_5
    const v1, 0x7f0b03e7

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1
.end method

.method private refreshIMUnread()V
    .locals 5

    .prologue
    .line 1028
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    .line 1029
    .local v2, pref:Lcom/didi/common/config/Preferences;
    if-eqz v2, :cond_0

    .line 1030
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/didi/common/config/Preferences;->setIMUnreadFlag(Z)V

    .line 1033
    :cond_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    .line 1034
    .local v0, fragMgr:Lcom/didi/frame/FragmentMgr;
    const/4 v1, 0x0

    .line 1036
    .local v1, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v0, :cond_1

    .line 1037
    const-class v3, Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v0, v3}, Lcom/didi/frame/FragmentMgr;->getFragment(Ljava/lang/Class;)Lcom/didi/common/ui/fragment/SlideFragment;

    .line 1040
    :cond_1
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/didi/common/ui/fragment/MenuFragment;

    if-eqz v3, :cond_2

    .line 1041
    check-cast v1, Lcom/didi/common/ui/fragment/MenuFragment;

    .end local v1           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    invoke-virtual {v1}, Lcom/didi/common/ui/fragment/MenuFragment;->checkIMUnread()V

    .line 1044
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1045
    iget-object v3, p0, Lcom/didi/frame/MainActivity;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    const v4, 0x7f020171

    invoke-static {v3, v4}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 1047
    :cond_3
    return-void
.end method

.method private saveLastLocation()V
    .locals 2

    .prologue
    .line 969
    const-string v0, "latlng= onDestroy"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->saveCurrentPoint()V

    .line 971
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    new-instance v1, Lcom/didi/frame/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/didi/frame/MainActivity$12;-><init>(Lcom/didi/frame/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 977
    return-void
.end method

.method private setLocationView()V
    .locals 2

    .prologue
    .line 295
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/didi/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/soso/location/view/LocationView;

    .line 296
    .local v0, location:Lcom/didi/soso/location/view/LocationView;
    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setLocationView(Lcom/didi/soso/location/view/LocationView;)V

    .line 297
    return-void
.end method

.method public static setTitleBar(Landroid/view/View$OnClickListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "resId"

    .prologue
    .line 1212
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1214
    :cond_0
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->showDefaultTitleIcon()V

    .line 1215
    invoke-static {}, Lcom/didi/frame/MainActivity;->setTitleRight()V

    .line 1216
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private static setTitleRight()V
    .locals 3

    .prologue
    .line 1220
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1221
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/frame/FragmentMgr;->peekFragment(I)Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 1222
    .local v0, peek:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    if-nez v1, :cond_0

    .line 1225
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 1227
    :cond_0
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/titlebar/TitleBar;->hideBtnRight()V

    .line 1229
    :cond_1
    return-void
.end method

.method private showBookOrderHintDialog()V
    .locals 3

    .prologue
    .line 802
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 803
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b01f6

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b01f5

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 806
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0288

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b021e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mHintDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 809
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 810
    return-void
.end method

.method private showFragments()V
    .locals 3

    .prologue
    .line 254
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->reset()V

    .line 255
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showSwitcherFragment()V

    .line 256
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showTitleBarFragment()V

    .line 257
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showMapFragment()V

    .line 258
    new-instance v0, Lcom/didi/frame/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$2;-><init>(Lcom/didi/frame/MainActivity;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method

.method private showLocationDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 173
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, dh:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 175
    const/4 v1, 0x0

    const-string v2, "\u6ef4\u6ef4\u6253\u8f66\u9700\u8981\u83b7\u53d6GPS\u3001\u57fa\u7ad9\u5b9a\u4f4d\u4fe1\u606f\u3001WIFI\u53ca\u6570\u636e\u7f51\u7edc\u4ee5\u65b9\u4fbf\u60a8\u53eb\u5230\u5468\u8fb9\u53f8\u673a\uff0c\u662f\u5426\u5141\u8bb8\u83b7\u53d6\u5b9a\u4f4d\u53ca\u7f51\u7edc\uff1f"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 177
    iget-object v1, p0, Lcom/didi/frame/MainActivity;->locationListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 178
    const-string v1, "\u62d2\u7edd"

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 179
    const-string v1, "\u5141\u8bb8"

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 181
    return-void
.end method

.method private showPushMessageDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "content"

    .prologue
    .line 876
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 877
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 880
    return-void
.end method

.method public static startActivityFromH5(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/frame/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    const-string v1, "extra_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private startAppWatcher()V
    .locals 4

    .prologue
    .line 443
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getAppWatcherDelayTime()I

    move-result v0

    .line 445
    .local v0, delayMillis:I
    new-instance v1, Lcom/didi/frame/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/didi/frame/MainActivity$5;-><init>(Lcom/didi/frame/MainActivity;)V

    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    return-void
.end method

.method private uploadTraceLog()V
    .locals 6

    .prologue
    .line 980
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->TRACE_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "traceLog.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, logPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->TRACE_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "traceLog.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/common/util/FileUtil;->zipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, zipName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/didi/common/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 986
    new-instance v2, Lcom/didi/frame/MainActivity$13;

    invoke-direct {v2, p0}, Lcom/didi/frame/MainActivity$13;-><init>(Lcom/didi/frame/MainActivity;)V

    invoke-static {v0, v2}, Lcom/didi/common/net/CommonRequest;->sendTracelog(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private urlDebug()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x6

    .line 485
    invoke-static {}, Lcom/didi/common/util/LogUtil;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getDidiPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/FileUtil;->getUrlFromTxt(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, urlStrings:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 517
    .end local v0           #urlStrings:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 491
    .restart local v0       #urlStrings:[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/common/net/PassPortRequest;->BASE_PASSPORT_URL:Ljava/lang/String;

    .line 492
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    .line 493
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/taxi/net/TaxiRequest;->BASE_URL:Ljava/lang/String;

    .line 494
    const/4 v1, 0x3

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/taxi/net/TaxiRequest;->BASE_PAY_URL:Ljava/lang/String;

    .line 495
    const/4 v1, 0x4

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/car/net/CarRequest;->BASE_URL:Ljava/lang/String;

    .line 496
    const/4 v1, 0x5

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/car/net/CarRequest;->BASE_PAY_URL:Ljava/lang/String;

    .line 497
    array-length v1, v0

    if-le v1, v4, :cond_2

    .line 498
    aget-object v1, v0, v4

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/frame/MainActivity;->testLng:Ljava/lang/String;

    .line 499
    const/4 v1, 0x7

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/frame/MainActivity;->testLat:Ljava/lang/String;

    .line 502
    :cond_2
    array-length v1, v0

    if-lt v1, v5, :cond_3

    .line 503
    const/16 v1, 0x9

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/common/util/Constant;->MY_ACCOUNT_WEB_URL:Ljava/lang/String;

    .line 504
    aget-object v1, v0, v5

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/common/util/Constant;->MY_MALL_WEB_URL_RELEASE:Ljava/lang/String;

    .line 506
    :cond_3
    array-length v1, v0

    if-lt v1, v6, :cond_4

    .line 507
    const/16 v1, 0xb

    aget-object v1, v0, v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/common/util/Constant;->FOUND_TEST_URL:Ljava/lang/String;

    .line 509
    :cond_4
    array-length v1, v0

    if-lt v1, v7, :cond_5

    .line 510
    aget-object v1, v0, v6

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/common/util/Constant;->PUSH_TEST_URL:Ljava/lang/String;

    .line 512
    :cond_5
    array-length v1, v0

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 513
    aget-object v1, v0, v7

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/common/util/Constant;->PUSH_TEST_PORT:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public addCallFragmentListener(Lcom/didi/frame/MainActivity$CallFragmentListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCarAvailabelListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/didi/frame/MainActivity;->callFragmentListeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkIMUnread()V
    .locals 2

    .prologue
    .line 892
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    const v1, 0x7f020171

    invoke-static {v0, v1}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 895
    :cond_0
    return-void
.end method

.method public closeDrawer()V
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1090
    return-void
.end method

.method public hideMenu()V
    .locals 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1209
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    invoke-virtual {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isDragging()Z

    move-result v0

    .line 1096
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyCarAvailabelChange(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 593
    sget-object v3, Lcom/didi/frame/MainActivity;->callFragmentListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 596
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/frame/MainActivity$CallFragmentListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 598
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/MainActivity$CallFragmentListener;>;"
    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/MainActivity$CallFragmentListener;

    .line 601
    .local v1, listener:Lcom/didi/frame/MainActivity$CallFragmentListener;
    if-eqz v1, :cond_0

    .line 603
    const-string v3, "notifyCarAvailabelChange : "

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 604
    invoke-interface {v1, p1}, Lcom/didi/frame/MainActivity$CallFragmentListener;->onRedirect(Landroid/os/Bundle;)V

    goto :goto_0

    .line 606
    .end local v1           #listener:Lcom/didi/frame/MainActivity$CallFragmentListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/MainActivity$CallFragmentListener;>;"
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1132
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1133
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1121
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 1127
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->checkExit()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/frame/MainActivity;->requestWindowFeature(I)Z

    .line 239
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/didi/frame/MainActivity;->setContentView(I)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferences.getInstance().isSmoothOpen() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isSmoothOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isSmoothOpen()Z

    move-result v0

    invoke-static {v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->setMoveAnimationEnable(Z)V

    .line 245
    sget-boolean v0, Lcom/didi/common/util/Constant;->isPreRom:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/didi/common/util/Constant;->isComeFromExtend:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/didi/common/util/Constant;->isCheck:Z

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0, p0}, Lcom/didi/frame/MainActivity;->showLocationDialog(Landroid/content/Context;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->initData()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 996
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 997
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 998
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotifyMgr;->getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;->unregisterBTSPushOrderChangeListener()V

    .line 999
    invoke-static {}, Lcom/didi/beatles/notification/BtsNotifyMgr;->getInstance()Lcom/didi/beatles/notification/BtsNotifyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyMgr;->unregisterBTSPushNewOrderListener()V

    .line 1000
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->stopUUIDWatching()V

    .line 1001
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->saveLastLocation()V

    .line 1002
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->unregisterReceiver()V

    .line 1003
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/service/DaemonService;->stop(Landroid/content/Context;)V

    .line 1004
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->destory()V

    .line 1006
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/DidiApp;->releaseImageFetcher()V

    .line 1007
    invoke-static {}, Lcom/didi/common/notification/CommonNotification;->cancelNotification()V

    .line 1009
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/async/task/ActivityController;->isClear()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->exit()V

    .line 1014
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/managers/AbsManager;->releaseAll()V

    .line 1015
    invoke-static {}, Lcom/didi/ddrive/managers/DDriveAlertManager;->getInstance()Lcom/didi/ddrive/managers/DDriveAlertManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DDriveAlertManager;->unregister()V

    .line 1016
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1146
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/didi/frame/FragmentMgr;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    const/4 v0, 0x1

    .line 1148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 675
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------------huawei intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 677
    if-nez p1, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    invoke-virtual {p0}, Lcom/didi/frame/MainActivity;->hideMenu()V

    .line 681
    const-string v1, "webToActivity"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    const-string v1, "webToActivity"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-eq v1, v2, :cond_0

    .line 688
    invoke-static {}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getInstance()Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->ismIsCheckWeixin()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getInstance()Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getBtsOrderParams()Lcom/didi/beatles/model/order/BtsOrderParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 690
    invoke-static {}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getInstance()Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/common/utils/BtsSaveInstanceStateUtil;->getBtsOrderParams()Lcom/didi/beatles/model/order/BtsOrderParams;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-static {p0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;->startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/order/BtsOrderParams;I)V

    goto :goto_0

    .line 695
    :cond_2
    invoke-direct {p0, p1}, Lcom/didi/frame/MainActivity;->getExternalIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    invoke-direct {p0, p1}, Lcom/didi/frame/MainActivity;->parseCommonMarketingIntent(Landroid/content/Intent;)V

    .line 701
    invoke-direct {p0, p1}, Lcom/didi/frame/MainActivity;->parseH5Intent(Landroid/content/Intent;)V

    .line 703
    const-string v1, "from_intro"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, action:Ljava/lang/String;
    const-string v1, "hint_type_dialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    invoke-direct {p0, p1}, Lcom/didi/frame/MainActivity;->onHintDialogIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 712
    :cond_3
    const-string v1, "hint_type_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 713
    invoke-direct {p0, p1}, Lcom/didi/frame/MainActivity;->onHintHistoryIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 717
    :cond_4
    invoke-direct {p0, p1}, Lcom/didi/frame/MainActivity;->getPushMsg(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 899
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 900
    invoke-static {}, Lcom/didi/frame/log/helper/HomeBackAppHelper;->start()V

    .line 901
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/frame/MainActivity;->isPaused:Z

    .line 902
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 903
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 904
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->checkUpdateJob:Lthread/Job;

    if-nez v0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->checkUpdateJob:Lthread/Job;

    invoke-virtual {v0}, Lthread/Job;->cancel()V

    .line 907
    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->saveLog()V

    .line 908
    invoke-static {}, Lcom/didi/common/util/LogUtil;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    .line 911
    :cond_1
    new-instance v0, Lcom/didi/frame/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/didi/frame/MainActivity$10;-><init>(Lcom/didi/frame/MainActivity;)V

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity$10;->start()V

    .line 919
    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->onPause(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1159
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/frame/MainActivity;->hasCalledSaveInstance:Z

    .line 1161
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 1162
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 937
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 938
    sput-boolean v1, Lcom/didi/frame/MainActivity;->isPaused:Z

    .line 939
    sput-boolean v1, Lcom/didi/frame/MainActivity;->hasCalledSaveInstance:Z

    .line 940
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 941
    invoke-static {v1}, Lcom/didi/common/util/Utils;->Superscript(I)V

    .line 942
    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->onResume(Landroid/app/Activity;)V

    .line 943
    invoke-direct {p0}, Lcom/didi/frame/MainActivity;->checkStatus()V

    .line 944
    invoke-static {}, Lcom/didi/frame/common/helper/HomeBackHelper;->stopHomeAlarm()V

    .line 945
    invoke-static {p0}, Lcom/didi/common/service/DaemonService;->stop(Landroid/content/Context;)V

    .line 946
    const-string v0, "phome_resume"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 1153
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/frame/MainActivity;->hasCalledSaveInstance:Z

    .line 1155
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 924
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 925
    sput-boolean v1, Lcom/didi/frame/MainActivity;->isStopped:Z

    .line 926
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/didi/common/helper/GThirdTokenManager;->refreshGThirdToken(ZLcom/didi/common/listener/ThirdTokenListener;)V

    .line 927
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 931
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 932
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/frame/MainActivity;->isStopped:Z

    .line 933
    return-void
.end method

.method public pushEvent(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 0
    .parameter "redirect"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "order_status"
    .end annotation

    .prologue
    .line 610
    invoke-static {p0, p1}, Lcom/didi/beatles/notification/BtsNotificationUtils;->showPushNotice(Landroid/content/Context;Ljava/lang/Object;)V

    .line 611
    return-void
.end method

.method public removeCallFragmentListener(Lcom/didi/frame/MainActivity$CallFragmentListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 587
    if-nez p1, :cond_0

    .line 590
    :goto_0
    return-void

    .line 589
    :cond_0
    sget-object v0, Lcom/didi/frame/MainActivity;->callFragmentListeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUserLogo()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1101
    invoke-static {}, Lcom/didi/common/helper/VoucherHelper;->getVoucherRedPointFromNative()I

    move-result v0

    .line 1102
    .local v0, flagRedPoint:I
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v4

    .line 1103
    .local v4, hasUnread:Z
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getMessageHasNew()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->isNoticationMessage()Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v5

    .line 1104
    .local v3, hasMessageRedPoi:Z
    :goto_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->isInviteRedPoint()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->isInviteSwitch()Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 1105
    .local v2, hasInviteRedPoi:Z
    :goto_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->isMenuGameRedPoint()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->isShowMenuBiz()Z

    move-result v7

    if-nez v7, :cond_3

    move v1, v5

    .line 1106
    .local v1, gameHasNew:Z
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---MainActivity Menu flagRedPoint:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inviteredpoint:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gameHasNew:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hasunread:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1108
    if-eq v0, v5, :cond_0

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-eqz v1, :cond_4

    .line 1111
    :cond_0
    const-string v5, "---MainActivity Menu RedPoint"

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1112
    iget-object v5, p0, Lcom/didi/frame/MainActivity;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    const v6, 0x7f020171

    invoke-static {v5, v6}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 1117
    :goto_3
    return-void

    .end local v1           #gameHasNew:Z
    .end local v2           #hasInviteRedPoi:Z
    .end local v3           #hasMessageRedPoi:Z
    :cond_1
    move v3, v6

    .line 1103
    goto :goto_0

    .restart local v3       #hasMessageRedPoi:Z
    :cond_2
    move v2, v6

    .line 1104
    goto :goto_1

    .restart local v2       #hasInviteRedPoi:Z
    :cond_3
    move v1, v6

    .line 1105
    goto :goto_2

    .line 1114
    .restart local v1       #gameHasNew:Z
    :cond_4
    iget-object v5, p0, Lcom/didi/frame/MainActivity;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    const v6, 0x7f020172

    invoke-static {v5, v6}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    goto :goto_3
.end method

.method public showMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1191
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    const-string v0, "o_home_menu_bt_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 1198
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->removePoupView()V

    .line 1200
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/MainActivity;->switchLeftView(I)V

    goto :goto_0
.end method

.method public switchLeftView(I)V
    .locals 2
    .parameter "from"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    new-instance v0, Lcom/didi/frame/MainActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/MainActivity$16;-><init>(Lcom/didi/frame/MainActivity;I)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    iget-object v1, p0, Lcom/didi/frame/MainActivity;->mViewDrawLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1080
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mMenuFragment:Lcom/didi/common/ui/fragment/MenuFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mMenuFragment:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mMenuFragment:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->resetViews()V

    .line 1082
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mDrawerLayout:Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;

    invoke-virtual {v0}, Lcom/didi/common/ui/slidingmenu/DDDrawerLayout;->postInvalidate()V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mNetReceiver:Lcom/didi/common/receiver/NetReceiver;

    if-eqz v0, :cond_0

    .line 1234
    :try_start_0
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mNetReceiver:Lcom/didi/common/receiver/NetReceiver;

    invoke-virtual {p0, v0}, Lcom/didi/frame/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1239
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mHomeKeyReceiver:Lcom/didi/common/helper/HomeKeyHelper$HomeKeyReceiver;

    if-eqz v0, :cond_1

    .line 1241
    :try_start_1
    iget-object v0, p0, Lcom/didi/frame/MainActivity;->mHomeKeyReceiver:Lcom/didi/common/helper/HomeKeyHelper$HomeKeyReceiver;

    invoke-virtual {p0, v0}, Lcom/didi/frame/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1245
    :cond_1
    :goto_1
    return-void

    .line 1242
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1235
    :catch_1
    move-exception v0

    goto :goto_0
.end method

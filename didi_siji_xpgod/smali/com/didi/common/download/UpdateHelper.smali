.class public Lcom/didi/common/download/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;,
        Lcom/didi/common/download/UpdateHelper$UpdatedListener;
    }
.end annotation


# static fields
.field private static final END:I = 0x2

.field private static final ERROR:I = -0x1

.field private static final INIT:I = 0x0

.field private static final START:I = 0x1

.field private static TOTAL_SIZE:I

.field private static instance:Lcom/didi/common/download/UpdateHelper;

.field private static isAuto:Z

.field private static isShow:Z

.field private static updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;


# instance fields
.field private dialogUpdateListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field downdload:Lcom/didi/common/download/DownloadManager;

.field private downloadListener:Lcom/didi/common/download/DownloadManager$DownloadListener;

.field handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private isForce:Z

.field private mActivity:Landroid/app/Activity;

.field private myDialog:Lcom/didi/common/helper/DialogHelper;

.field private oldApk:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private update:Lcom/didi/common/model/CommonUpdateConfig;

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    sput v1, Lcom/didi/common/download/UpdateHelper;->TOTAL_SIZE:I

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/common/download/UpdateHelper;->isShow:Z

    .line 148
    sput-boolean v1, Lcom/didi/common/download/UpdateHelper;->isAuto:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;

    .line 44
    iput-object v2, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    .line 45
    iput-object v2, p0, Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;

    .line 46
    iput-object v2, p0, Lcom/didi/common/download/UpdateHelper;->downdload:Lcom/didi/common/download/DownloadManager;

    .line 53
    iput-object v2, p0, Lcom/didi/common/download/UpdateHelper;->oldApk:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "didi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/download/UpdateHelper;->path:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/didi/common/download/UpdateHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/common/download/UpdateHelper$1;-><init>(Lcom/didi/common/download/UpdateHelper;)V

    iput-object v0, p0, Lcom/didi/common/download/UpdateHelper;->handler:Landroid/os/Handler;

    .line 223
    iput-object v2, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    .line 261
    iput-object v2, p0, Lcom/didi/common/download/UpdateHelper;->urlString:Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/download/UpdateHelper;->isForce:Z

    .line 263
    new-instance v0, Lcom/didi/common/download/UpdateHelper$2;

    invoke-direct {v0, p0}, Lcom/didi/common/download/UpdateHelper$2;-><init>(Lcom/didi/common/download/UpdateHelper;)V

    iput-object v0, p0, Lcom/didi/common/download/UpdateHelper;->dialogUpdateListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 301
    new-instance v0, Lcom/didi/common/download/UpdateHelper$3;

    invoke-direct {v0, p0}, Lcom/didi/common/download/UpdateHelper$3;-><init>(Lcom/didi/common/download/UpdateHelper;)V

    iput-object v0, p0, Lcom/didi/common/download/UpdateHelper;->downloadListener:Lcom/didi/common/download/DownloadManager$DownloadListener;

    .line 132
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/download/UpdateHelper;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/common/download/UpdateHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/didi/common/download/UpdateHelper;->isForce:Z

    return v0
.end method

.method static synthetic access$102(Lcom/didi/common/download/UpdateHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/common/download/UpdateHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Lcom/didi/common/download/UpdateHelper$UpdatedListener;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/didi/common/download/UpdateHelper;->updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->oldApk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/didi/common/download/UpdateHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper;->oldApk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/didi/common/download/UpdateHelper;Lcom/didi/common/model/CommonUpdateConfig;)Lcom/didi/common/model/CommonUpdateConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    return-object p1
.end method

.method static synthetic access$700(Lcom/didi/common/download/UpdateHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/didi/common/download/UpdateHelper;->tackleResult()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/download/DownloadManager$DownloadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->downloadListener:Lcom/didi/common/download/DownloadManager$DownloadListener;

    return-object v0
.end method

.method private doUpdate()Lthread/Job;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/didi/common/download/UpdateHelper;->showUpdateChecking()V

    .line 176
    new-instance v0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;

    invoke-direct {v0, p0}, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;-><init>(Lcom/didi/common/download/UpdateHelper;)V

    invoke-virtual {v0}, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->start()Lthread/Job;

    move-result-object v0

    return-object v0
.end method

.method public static doUpdateFromH5(Landroid/app/Activity;Lcom/didi/common/download/UpdateHelper$UpdatedListener;)Lthread/Job;
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    const/4 v0, 0x1

    .line 167
    sput-boolean v0, Lcom/didi/common/download/UpdateHelper;->isShow:Z

    .line 168
    sput-object p1, Lcom/didi/common/download/UpdateHelper;->updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    .line 169
    sput-boolean v0, Lcom/didi/common/download/UpdateHelper;->isAuto:Z

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/download/UpdateHelper;->instance:Lcom/didi/common/download/UpdateHelper;

    .line 171
    invoke-static {p0}, Lcom/didi/common/download/UpdateHelper;->getInstance(Landroid/app/Activity;)Lcom/didi/common/download/UpdateHelper;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/common/download/UpdateHelper;->doUpdate()Lthread/Job;

    move-result-object v0

    return-object v0
.end method

.method private getConfigVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    iget-object v0, v0, Lcom/didi/common/model/CommonUpdateConfig;->version:Ljava/lang/String;

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getInstance(Landroid/app/Activity;)Lcom/didi/common/download/UpdateHelper;
    .locals 1
    .parameter "activity"

    .prologue
    .line 142
    sget-object v0, Lcom/didi/common/download/UpdateHelper;->instance:Lcom/didi/common/download/UpdateHelper;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/didi/common/download/UpdateHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/download/UpdateHelper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/didi/common/download/UpdateHelper;->instance:Lcom/didi/common/download/UpdateHelper;

    .line 144
    :cond_0
    sget-object v0, Lcom/didi/common/download/UpdateHelper;->instance:Lcom/didi/common/download/UpdateHelper;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/didi/common/download/UpdateHelper;->instance:Lcom/didi/common/download/UpdateHelper;

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/didi/common/download/UpdateHelper;->instance:Lcom/didi/common/download/UpdateHelper;

    invoke-direct {v0}, Lcom/didi/common/download/UpdateHelper;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/download/UpdateHelper;->instance:Lcom/didi/common/download/UpdateHelper;

    .line 342
    return-void
.end method

.method private tackleResult()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonUpdateConfig;->needUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    sget-boolean v0, Lcom/didi/common/download/UpdateHelper;->isAuto:Z

    if-nez v0, :cond_0

    .line 240
    const v0, 0x7f0b01e1

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    iget-object v0, v0, Lcom/didi/common/model/CommonUpdateConfig;->updateUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/common/download/UpdateHelper;->urlString:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper;->urlString:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 246
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    iget-boolean v0, v0, Lcom/didi/common/model/CommonUpdateConfig;->isForce:Z

    iput-boolean v0, p0, Lcom/didi/common/download/UpdateHelper;->isForce:Z

    .line 247
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->urlString:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    .line 251
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    iget-object v2, v2, Lcom/didi/common/model/CommonUpdateConfig;->updateMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 253
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    iget-object v1, v1, Lcom/didi/common/model/CommonUpdateConfig;->updateConfirm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper;->update:Lcom/didi/common/model/CommonUpdateConfig;

    iget-object v1, v1, Lcom/didi/common/model/CommonUpdateConfig;->updateIgnore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper;->dialogUpdateListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 256
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method public static update(Landroid/app/Activity;ZLcom/didi/common/download/UpdateHelper$UpdatedListener;Z)Lthread/Job;
    .locals 1
    .parameter "activity"
    .parameter "type"
    .parameter "listener"
    .parameter "auto"

    .prologue
    .line 160
    sput-boolean p1, Lcom/didi/common/download/UpdateHelper;->isShow:Z

    .line 161
    sput-object p2, Lcom/didi/common/download/UpdateHelper;->updatedListener:Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    .line 162
    sput-boolean p3, Lcom/didi/common/download/UpdateHelper;->isAuto:Z

    .line 163
    invoke-static {p0}, Lcom/didi/common/download/UpdateHelper;->getInstance(Landroid/app/Activity;)Lcom/didi/common/download/UpdateHelper;

    move-result-object v0

    invoke-direct {v0}, Lcom/didi/common/download/UpdateHelper;->doUpdate()Lthread/Job;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public showUpdateChecking()V
    .locals 4

    .prologue
    .line 136
    sget-boolean v0, Lcom/didi/common/download/UpdateHelper;->isShow:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b057d

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 139
    :cond_0
    return-void
.end method

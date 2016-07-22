.class public Lcom/didi/frame/recovery/RecoveryHelper;
.super Ljava/lang/Object;
.source "RecoveryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/recovery/RecoveryHelper$5;
    }
.end annotation


# static fields
.field private static final RECOVERY_CHECK:I = 0x65

.field private static final RECOVERY_START:I = 0x66

.field private static mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;


# instance fields
.field private isAlreadyShowRecovery:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSupportedBusiness:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/didi/frame/business/Business;",
            "Lcom/didi/frame/recovery/RecoveryBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private myDialog:Lcom/didi/common/helper/DialogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mSupportedBusiness:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->isAlreadyShowRecovery:Z

    .line 57
    new-instance v0, Lcom/didi/frame/recovery/RecoveryHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryHelper$1;-><init>(Lcom/didi/frame/recovery/RecoveryHelper;)V

    iput-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000()Lcom/didi/frame/recovery/RecoveryHelper;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/recovery/RecoveryHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/frame/recovery/RecoveryHelper;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mSupportedBusiness:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkRecoveryBusiness()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mSupportedBusiness:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "recovery business is empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method private getDialogListener(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    .locals 1
    .parameter "recoveryBusiness"
    .parameter "config"

    .prologue
    .line 121
    new-instance v0, Lcom/didi/frame/recovery/RecoveryHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/frame/recovery/RecoveryHelper$2;-><init>(Lcom/didi/frame/recovery/RecoveryHelper;Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)V

    return-object v0
.end method

.method public static getInstance()Lcom/didi/frame/recovery/RecoveryHelper;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/didi/frame/recovery/RecoveryHelper;

    invoke-direct {v0}, Lcom/didi/frame/recovery/RecoveryHelper;-><init>()V

    sput-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    .line 172
    :cond_0
    sget-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    return-object v0
.end method

.method public static resetInstance()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lcom/didi/frame/recovery/RecoveryHelper;

    invoke-direct {v0}, Lcom/didi/frame/recovery/RecoveryHelper;-><init>()V

    sput-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs addRecoveryBusiness([Lcom/didi/frame/recovery/RecoveryBusiness;)V
    .locals 6
    .parameter "recoveryBusinesses"

    .prologue
    .line 181
    move-object v0, p1

    .local v0, arr$:[Lcom/didi/frame/recovery/RecoveryBusiness;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 182
    .local v3, recoveryBusiness1:Lcom/didi/frame/recovery/RecoveryBusiness;
    if-eqz v3, :cond_0

    .line 183
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mSupportedBusiness:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/didi/frame/recovery/RecoveryBusiness;->getmBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v3           #recoveryBusiness1:Lcom/didi/frame/recovery/RecoveryBusiness;
    :cond_1
    return-void
.end method

.method public doRecovery()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecoveryBusIsAlready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->isAlreadyShowRecovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->isAlreadyShowRecovery:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isEmptyToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v0, Lcom/didi/frame/recovery/RecoveryHelper$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryHelper$3;-><init>(Lcom/didi/frame/recovery/RecoveryHelper;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->doRecoveryCheck(Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public getRecoveryBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/recovery/RecoveryBusiness;
    .locals 3
    .parameter "bus"

    .prologue
    const/4 v1, 0x0

    .line 192
    if-nez p1, :cond_1

    move-object v0, v1

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mSupportedBusiness:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/recovery/RecoveryBusiness;

    .line 195
    .local v0, recoveryBusiness:Lcom/didi/frame/recovery/RecoveryBusiness;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 196
    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;

    .line 202
    sget-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    new-array v1, v4, [Lcom/didi/frame/recovery/RecoveryBusiness;

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/recovery/RecoveryBusinessCreator;->createRecoveryBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/recovery/RecoveryBusiness;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/didi/frame/recovery/RecoveryHelper;->addRecoveryBusiness([Lcom/didi/frame/recovery/RecoveryBusiness;)V

    .line 203
    sget-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    new-array v1, v4, [Lcom/didi/frame/recovery/RecoveryBusiness;

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/recovery/RecoveryBusinessCreator;->createRecoveryBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/recovery/RecoveryBusiness;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/didi/frame/recovery/RecoveryHelper;->addRecoveryBusiness([Lcom/didi/frame/recovery/RecoveryBusiness;)V

    .line 204
    sget-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    new-array v1, v4, [Lcom/didi/frame/recovery/RecoveryBusiness;

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/recovery/RecoveryBusinessCreator;->createRecoveryBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/recovery/RecoveryBusiness;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/didi/frame/recovery/RecoveryHelper;->addRecoveryBusiness([Lcom/didi/frame/recovery/RecoveryBusiness;)V

    .line 205
    sget-object v0, Lcom/didi/frame/recovery/RecoveryHelper;->mRecoveryHelper:Lcom/didi/frame/recovery/RecoveryHelper;

    new-array v1, v4, [Lcom/didi/frame/recovery/RecoveryBusiness;

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/recovery/RecoveryBusinessCreator;->createRecoveryBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/recovery/RecoveryBusiness;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/didi/frame/recovery/RecoveryHelper;->addRecoveryBusiness([Lcom/didi/frame/recovery/RecoveryBusiness;)V

    .line 206
    return-void
.end method

.method public recoveryCheck(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 6
    .parameter "config"

    .prologue
    .line 247
    iget-object v2, p1, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 248
    .local v2, oid:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecoveryBusIsAlready="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/didi/frame/recovery/RecoveryHelper;->isAlreadyShowRecovery:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/FragmentMgr;->isCarWaitForArrivalFragment()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/FragmentMgr;->isTaxiWaitForArrivalFragment()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/FragmentMgr;->isDDriveWaitForArrivalFragment()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 254
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    :cond_1
    invoke-static {}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->getInstance()Lcom/didi/ddrive/managers/OrderRecoveryManager;

    move-result-object v4

    new-instance v5, Lcom/didi/frame/recovery/RecoveryHelper$4;

    invoke-direct {v5, p0}, Lcom/didi/frame/recovery/RecoveryHelper$4;-><init>(Lcom/didi/frame/recovery/RecoveryHelper;)V

    invoke-virtual {v4, v5}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->queryLastOrder(Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V

    .line 319
    :cond_2
    :goto_0
    return-void

    .line 305
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecoveryBusIsAlready="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/didi/frame/recovery/RecoveryHelper;->isAlreadyShowRecovery:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 306
    iget-object v1, p1, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    .line 307
    .local v1, business:Lcom/didi/frame/business/Business;
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mSupportedBusiness:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/frame/recovery/RecoveryBusiness;

    .line 308
    .local v3, recoveryBusiness:Lcom/didi/frame/recovery/RecoveryBusiness;
    if-nez v3, :cond_4

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recovery: check unkown business: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 314
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_5

    instance-of v4, v0, Lcom/didi/frame/MainActivity;

    if-eqz v4, :cond_5

    .line 315
    check-cast v0, Lcom/didi/frame/MainActivity;

    .end local v0           #act:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->hideMenu()V

    .line 318
    :cond_5
    invoke-virtual {p0, v3, p1}, Lcom/didi/frame/recovery/RecoveryHelper;->showConfirmDialog(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)V

    goto :goto_0
.end method

.method public showConfirmDialog(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)V
    .locals 6
    .parameter "recoveryBusiness"
    .parameter "config"

    .prologue
    const v5, 0x7f0b04b4

    const v2, 0x7f0b04b1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecoveryBusIsAlready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->isAlreadyShowRecovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecoveryBusmyDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    .line 87
    iget v0, p2, Lcom/didi/common/model/RecoveryConfig;->type:I

    if-ne v0, v4, :cond_2

    .line 88
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    iget-object v1, p2, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b04b5

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 95
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->CRASH:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 97
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 98
    const-string v0, "order_recover_waitreplay_popup"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    :goto_2
    iput-boolean v4, p0, Lcom/didi/frame/recovery/RecoveryHelper;->isAlreadyShowRecovery:Z

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecoveryBusIsAlready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->isAlreadyShowRecovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-direct {p0, p1, p2}, Lcom/didi/frame/recovery/RecoveryHelper;->getDialogListener(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 117
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto/16 :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b04b3

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/didi/common/model/RecoveryConfig;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_2
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    iget-object v1, p2, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_3

    .line 101
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_3
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 107
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->CRASH:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 110
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 111
    const-string v0, "order_recover_waitincar_popup"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/didi/common/model/RecoveryConfig;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public startRecovery()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/didi/frame/recovery/RecoveryHelper;->doRecovery()V

    .line 210
    return-void
.end method

.method public startRecoveryDelayed(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    const/16 v1, 0x65

    .line 213
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    invoke-direct {p0}, Lcom/didi/frame/recovery/RecoveryHelper;->checkRecoveryBusiness()V

    .line 215
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 216
    return-void
.end method

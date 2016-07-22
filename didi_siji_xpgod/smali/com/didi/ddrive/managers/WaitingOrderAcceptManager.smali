.class public Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;
.super Ljava/lang/Object;
.source "WaitingOrderAcceptManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaitingOrderAcceptManager"


# instance fields
.field private mAcceptedDrivers:I

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mOrder:Lcom/didi/ddrive/model/DDriveOrder;

.field private mPushedNumber:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mAcceptedDrivers:I

    .line 33
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v0, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    .line 34
    iput-object p1, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mAcceptedDrivers:I

    return v0
.end method

.method static synthetic access$002(Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mAcceptedDrivers:I

    return p1
.end method


# virtual methods
.method public getAcceptedDriverCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mAcceptedDrivers:I

    return v0
.end method

.method public queryAcceptedDriverCount()V
    .locals 5

    .prologue
    .line 38
    new-instance v1, Lcom/didi/ddrive/net/http/request/AcceptedDriverCountRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/AcceptedDriverCountRequest;-><init>()V

    .line 39
    .local v1, request:Lcom/didi/ddrive/net/http/request/AcceptedDriverCountRequest;
    iget-object v2, p0, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v2, v2, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/request/AcceptedDriverCountRequest;->oid:J

    .line 40
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/request/AcceptedDriverCountRequest;->pid:J

    .line 41
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 42
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v2, "WaitingOrderAcceptManager"

    new-instance v3, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager$1;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager$1;-><init>(Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/AcceptedDriverCountResponse;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 58
    return-void
.end method

.method public showNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "title"

    .prologue
    .line 65
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/didi/common/util/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/didi/common/util/Utils;->isAppTopFront(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const v0, 0x7f0b01e2

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

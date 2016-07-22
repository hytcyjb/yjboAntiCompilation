.class public Lcom/didi/o2o/model/WebBusinessProcessor;
.super Ljava/lang/Object;
.source "WebBusinessProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/o2o/model/WebBusinessProcessor$2;
    }
.end annotation


# static fields
.field public static final CMD_O2O_BUSINESS_MODE:Ljava/lang/String; = "o2o_business_mode"

.field private static sInstance:Lcom/didi/o2o/model/WebBusinessProcessor;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static getInstance()Lcom/didi/o2o/model/WebBusinessProcessor;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/didi/o2o/model/WebBusinessProcessor;->sInstance:Lcom/didi/o2o/model/WebBusinessProcessor;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/didi/o2o/model/WebBusinessProcessor;->sInstance:Lcom/didi/o2o/model/WebBusinessProcessor;

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-class v1, Lcom/didi/o2o/model/WebBusinessProcessor;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/didi/o2o/model/WebBusinessProcessor;->sInstance:Lcom/didi/o2o/model/WebBusinessProcessor;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/didi/o2o/model/WebBusinessProcessor;

    invoke-direct {v0}, Lcom/didi/o2o/model/WebBusinessProcessor;-><init>()V

    sput-object v0, Lcom/didi/o2o/model/WebBusinessProcessor;->sInstance:Lcom/didi/o2o/model/WebBusinessProcessor;

    .line 44
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget-object v0, Lcom/didi/o2o/model/WebBusinessProcessor;->sInstance:Lcom/didi/o2o/model/WebBusinessProcessor;

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setCurrentOrderBusinessFromWeb(Lcom/didi/frame/business/Business;Lcom/didi/o2o/model/AddressExt;)V
    .locals 3
    .parameter "business"
    .parameter "addrext"

    .prologue
    .line 90
    new-instance v0, Lcom/didi/o2o/model/WebBusinessProcessor$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/didi/o2o/model/WebBusinessProcessor$1;-><init>(Lcom/didi/o2o/model/WebBusinessProcessor;Lcom/didi/o2o/model/AddressExt;Lcom/didi/frame/business/Business;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    invoke-virtual {p0}, Lcom/didi/o2o/model/WebBusinessProcessor;->finishActivity()V

    .line 145
    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/didi/o2o/model/WebBusinessProcessor;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/didi/common/ui/webview/WebActivity;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/didi/o2o/model/WebBusinessProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/didi/common/ui/webview/WebActivity;

    invoke-virtual {v0}, Lcom/didi/common/ui/webview/WebActivity;->finish()V

    .line 154
    :cond_0
    return-void
.end method

.method public processBusiness(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 62
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/didi/frame/MainActivity;->switchLeftView(I)V

    .line 69
    invoke-static {p1}, Lcom/didi/o2o/model/AddressExt;->createFromJson(Lorg/json/JSONObject;)Lcom/didi/o2o/model/AddressExt;

    move-result-object v0

    .line 74
    .local v0, addressExt:Lcom/didi/o2o/model/AddressExt;
    invoke-virtual {v0}, Lcom/didi/o2o/model/AddressExt;->getBusinessByCurrentType()Lcom/didi/frame/business/Business;

    move-result-object v1

    .line 75
    .local v1, business:Lcom/didi/frame/business/Business;
    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 81
    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->checkBusiness(Lcom/didi/frame/business/Business;)V

    .line 85
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/didi/o2o/model/WebBusinessProcessor;->setCurrentOrderBusinessFromWeb(Lcom/didi/frame/business/Business;Lcom/didi/o2o/model/AddressExt;)V

    goto :goto_0
.end method

.method public setCurrentWebContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/didi/o2o/model/WebBusinessProcessor;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.class public Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;
.super Landroid/app/Activity;
.source "TaxiEndedOrderActivity.java"

# interfaces
.implements Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;


# static fields
.field private static final IM_SESSION_CREATING:I = 0x1

.field private static final IM_SESSION_DB_ERROR:I = 0x3

.field private static final IM_SESSION_DRIVER_VERSION_ERROR:I = 0x3f1

.field private static final IM_SESSION_SUCCESS:I = 0x2


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private compListener:Landroid/view/View$OnClickListener;

.field private mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

.field mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mIMSessionState:I

.field private mOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mIMSessionState:I

    .line 140
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$1;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->compListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$2;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 376
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$7;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->back()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)Lcom/didi/frame/endorder/EndedOrderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->onPushIMUnreadReceived(I)V

    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->finish()V

    .line 167
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->overridePendingTransition(II)V

    .line 168
    return-void
.end method

.method private createIMSessionById()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$3;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$3;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V

    invoke-static {v0, v1}, Lcom/didi/im/net/IMRequest;->getTaxiOrderSSID(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 196
    return-void
.end method

.method private createIMSessionInDB(Lcom/didi/im/model/IMSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, sid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getUID()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, uid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v0

    .line 251
    .local v0, oldSession:Lcom/didi/im/model/IMSession;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, v2}, Lcom/didi/im/model/IMSession;->setUID(Ljava/lang/String;)V

    .line 254
    invoke-static {v0, v1}, Lcom/didi/im/db/IMDBDataHelper;->updateImSessionBySId(Lcom/didi/im/model/IMSession;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0}, Lcom/didi/im/model/IMSession;->getUnreadCnt()I

    move-result v3

    .line 257
    .local v3, unread:I
    iget-object v4, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v4, v3}, Lcom/didi/frame/endorder/EndedOrderView;->setIMUnRead(I)V

    .line 263
    .end local v3           #unread:I
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/didi/im/db/IMDBDataHelper;->insertSession(Lcom/didi/im/model/IMSession;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)I

    goto :goto_0
.end method

.method private createIMUserInDB(Lcom/didi/im/model/IMSession;Ljava/util/List;)V
    .locals 6
    .parameter "session"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/im/model/IMSession;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/im/model/IMUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p2, users:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMUser;>;"
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, sid:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 303
    :cond_0
    return-void

    .line 291
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/im/model/IMUser;

    .line 293
    .local v4, user:Lcom/didi/im/model/IMUser;
    invoke-virtual {v4}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, uid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImUserByID(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;

    move-result-object v1

    .line 295
    .local v1, oldUser:Lcom/didi/im/model/IMUser;
    invoke-virtual {v4, v2}, Lcom/didi/im/model/IMUser;->setSID(Ljava/lang/String;)V

    .line 297
    if-nez v1, :cond_2

    .line 298
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/didi/im/db/IMDBDataHelper;->insertUser(Lcom/didi/im/model/IMUser;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)I

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {v1}, Lcom/didi/im/db/IMDBDataHelper;->updateIMUser(Lcom/didi/im/model/IMUser;)I

    goto :goto_0
.end method

.method private getIMSessionUserList(Lcom/didi/im/model/IMSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$4;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;Lcom/didi/im/model/IMSession;)V

    invoke-static {v0, v1}, Lcom/didi/im/net/IMRequest;->getSessUsrList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 273
    return-void
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1
    .parameter "rid"

    .prologue
    .line 387
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->createIMSessionById()V

    .line 128
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getImSwitch()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndedOrderView;->invisibleIMView()V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 93
    .local v0, taxi:Lcom/didi/taxi/model/TaxiOrder;
    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 98
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->setDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 99
    invoke-static {p0}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->setDriverBarLisenter(Lcom/didi/frame/endorder/EndedOrderView$EndedOrderViewListener;)V

    .line 102
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateMark()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 104
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getNoneed()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 105
    const v1, 0x7f02017d

    invoke-static {v1}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->setIcon(I)V

    .line 109
    :goto_1
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    const v1, 0x7f020181

    invoke-static {v1}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->setIcon(I)V

    goto :goto_1

    .line 113
    :cond_3
    const v1, 0x7f02017f

    invoke-static {v1}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->setIcon(I)V

    .line 114
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getComplaintContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getComplaintContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->setReason(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPushIMUnreadReceived(I)V
    .locals 1
    .parameter "unreadCount"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/endorder/EndedOrderView;->setIMUnRead(I)V

    .line 343
    return-void
.end method

.method private refreshIMUnreadInThread()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V

    invoke-virtual {v0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$5;->start()Lthread/Job;

    .line 325
    return-void
.end method

.method private registerPushIMUnreadListener()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$6;-><init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V

    invoke-static {v0}, Lcom/didi/im/helper/IMPushHelper;->registerIMUnreadCountChangeListener(Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;)V

    .line 335
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b0574

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 135
    invoke-static {}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 136
    invoke-static {}, Lcom/didi/frame/endorder/EndedOrderViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b026e

    iget-object v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->compListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method private showDriverIMLowVersionDialog()V
    .locals 3

    .prologue
    .line 368
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 369
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b056c

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b056b

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 373
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 374
    return-void
.end method

.method private unregisterPushIMUnreadListener()V
    .locals 0

    .prologue
    .line 338
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->unregisterIMUnreadCountChangeListener()V

    .line 339
    return-void
.end method

.method private updateIMDB(Lcom/didi/im/model/IMSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 231
    :try_start_0
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->createIMSessionInDB(Lcom/didi/im/model/IMSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/taxi/model/TaxiOrder;->setSid(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->getIMSessionUserList(Lcom/didi/im/model/IMSession;)V

    .line 243
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setSid(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x3

    iput v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mIMSessionState:I

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->back()V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 74
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->overridePendingTransition(II)V

    .line 75
    new-instance v0, Lcom/didi/frame/endorder/EndedOrderView;

    invoke-direct {v0, p0}, Lcom/didi/frame/endorder/EndedOrderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

    .line 76
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->setTitleBar()V

    .line 78
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 79
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->initData()V

    .line 80
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->init()V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 88
    return-void
.end method

.method public onDriverBarIMClicked()V
    .locals 4

    .prologue
    .line 348
    iget v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mIMSessionState:I

    const/16 v3, 0x3f1

    if-ne v2, v3, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->showDriverIMLowVersionDialog()V

    .line 363
    :goto_0
    return-void

    .line 353
    :cond_0
    iget v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mIMSessionState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 354
    const v2, 0x7f0b039b

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 355
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->createIMSessionById()V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getSid()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, sid:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onIMSessionIdCreated(Lcom/didi/im/model/IMOrderSIDHistory;)V
    .locals 6
    .parameter "orderSidHistory"

    .prologue
    const/16 v5, 0x3f1

    .line 199
    invoke-virtual {p1}, Lcom/didi/im/model/IMOrderSIDHistory;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 227
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/didi/im/model/IMOrderSIDHistory;->getSidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 204
    .local v1, orderSids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMOrderSID;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 205
    :cond_1
    iput v5, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mIMSessionState:I

    goto :goto_0

    .line 209
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/model/IMOrderSID;

    .line 210
    .local v0, orderSid:Lcom/didi/im/model/IMOrderSID;
    const/4 v3, 0x0

    .line 212
    .local v3, sid:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0}, Lcom/didi/im/model/IMOrderSID;->getSid()Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_3
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 217
    new-instance v2, Lcom/didi/im/model/IMSession;

    invoke-direct {v2}, Lcom/didi/im/model/IMSession;-><init>()V

    .line 218
    .local v2, session:Lcom/didi/im/model/IMSession;
    invoke-virtual {v2, v3}, Lcom/didi/im/model/IMSession;->setSID(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/didi/im/model/IMOrderSIDHistory;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/didi/im/model/IMSession;->setUID(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->updateIMDB(Lcom/didi/im/model/IMSession;)V

    .line 222
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {p1}, Lcom/didi/im/model/IMOrderSIDHistory;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/common/config/Preferences;->setPsngrId(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v2           #session:Lcom/didi/im/model/IMSession;
    :cond_4
    iput v5, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mIMSessionState:I

    goto :goto_0
.end method

.method protected onIMSessionUserListGot(Lcom/didi/im/model/IMSession;Lcom/didi/im/model/IMUserList;)V
    .locals 1
    .parameter "session"
    .parameter "users"

    .prologue
    .line 276
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mIMSessionState:I

    .line 277
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->mControllerView:Lcom/didi/frame/endorder/EndedOrderView;

    invoke-virtual {v0}, Lcom/didi/frame/endorder/EndedOrderView;->enableIMView()V

    .line 279
    invoke-virtual {p2}, Lcom/didi/im/model/IMUserList;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p2}, Lcom/didi/im/model/IMUserList;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->createIMUserInDB(Lcom/didi/im/model/IMSession;Ljava/util/List;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 180
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 182
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->unregisterPushIMUnreadListener()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->registerPushIMUnreadListener()V

    .line 175
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->refreshIMUnreadInThread()V

    .line 176
    return-void
.end method

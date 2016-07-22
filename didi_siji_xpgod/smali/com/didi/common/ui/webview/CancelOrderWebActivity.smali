.class public Lcom/didi/common/ui/webview/CancelOrderWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "CancelOrderWebActivity.java"


# instance fields
.field private bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

.field private onlytextListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private reCallListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private reSend:Z

.field private reasonCode:Ljava/lang/String;

.field private taxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reasonCode:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reSend:Z

    .line 377
    new-instance v0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$9;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->onlytextListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 446
    new-instance v0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$12;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$12;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    iput-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reCallListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->checkPmOrGpsSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/webview/CancelOrderWebActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->getResult(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reSend:Z

    return v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->showRecallDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->skipPage()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->performOpenSetting()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/common/ui/webview/CancelOrderWebActivity;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->onOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/common/ui/webview/CancelOrderWebActivity;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reSendOrder()V

    return-void
.end method

.method private addJavaScriptInterfaces()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "getCurrentPosition"

    new-instance v2, Lcom/didi/common/ui/webview/CancelOrderWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$1;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 101
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "popPositionSettingGuide"

    new-instance v2, Lcom/didi/common/ui/webview/CancelOrderWebActivity$2;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$2;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 111
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "cancelOrderSuccess"

    new-instance v2, Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$3;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 134
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "cancelOrderFailForHasCanceled"

    new-instance v2, Lcom/didi/common/ui/webview/CancelOrderWebActivity$4;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$4;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 148
    return-void
.end method

.method private checkPmOrGpsSettings()V
    .locals 3

    .prologue
    .line 211
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLocationlimitStatus()V

    .line 212
    new-instance v0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$5;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    return-void
.end method

.method private checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 309
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->check()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reSendOrder()V

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 313
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createBookingOrder()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reasonCode:Ljava/lang/String;

    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/common/ui/webview/CancelOrderWebActivity$7;

    invoke-direct {v3, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$7;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->createBookingOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 306
    return-void
.end method

.method private createRealtimeOrder()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reasonCode:Ljava/lang/String;

    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;

    invoke-direct {v3, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$6;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->createRealtimeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 282
    return-void
.end method

.method private getResult(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    :try_start_0
    const-string v1, "reasonCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reasonCode:Ljava/lang/String;

    .line 154
    const-string v1, "reSend"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reSend:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initDatas()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 78
    return-void
.end method

.method private onOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 319
    if-eqz p1, :cond_0

    .line 320
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/taxi/model/TaxiOrder;->replaceEmptyErrorMessage(I)V

    .line 321
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    :goto_0
    return-void

    .line 324
    :cond_1
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrder;->errno:I

    const/16 v1, 0x7d8

    if-ne v0, v1, :cond_2

    .line 325
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrder;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->showOnlyTextDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    sput v2, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 330
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->showErrorDialog()V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput v2, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 336
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, v2}, Lcom/didi/taxi/model/TaxiOrder;->setTimeout(Z)V

    .line 337
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_4

    .line 338
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/taxi/model/TaxiOrder;->setTransportTime(J)V

    .line 340
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->finish()V

    .line 343
    new-instance v0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$8;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->show()V

    .line 351
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    goto :goto_0
.end method

.method private openGpsSetting()V
    .locals 3

    .prologue
    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, gpsIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private openWebInstruct()V
    .locals 3

    .prologue
    .line 235
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 236
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 237
    const v2, 0x7f0b03e3

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 239
    const-string v2, "http://pay.xiaojukeji.com/share/didi_guide.html"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method private performOpenSetting()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->isLocateLimit()Z

    move-result v0

    .line 224
    .local v0, limit:Z
    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->openWebInstruct()V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->openGpsSetting()V

    goto :goto_0
.end method

.method private reSendOrder()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xdbba0

    .line 177
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->needStop:Z

    .line 179
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->createRealtimeOrder()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 185
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 186
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->createBookingOrder()V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 194
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 195
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->createRealtimeOrder()V

    goto/16 :goto_0
.end method

.method private showErrorDialog()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b035d

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 373
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 374
    return-void
.end method

.method private showOnlyTextDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 358
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 361
    iget-object v1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->onlytextListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 362
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 363
    const v1, 0x7f0b0523

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 365
    return-void
.end method

.method private showRecallDialog()V
    .locals 3

    .prologue
    .line 163
    const-string v1, "choose_didi_again"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    const v2, 0x7f0b04ad

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 168
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 169
    const v1, 0x7f0b0425

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 170
    const v1, 0x7f0b0421

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->reCallListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 172
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 173
    return-void
.end method

.method private skipPage()V
    .locals 3

    .prologue
    .line 406
    const-string v0, "NoNeed= skipPage"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->needStop:Z

    .line 408
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->endBusinessMap()V

    .line 409
    new-instance v0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$10;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$10;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 418
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenBeatles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;I)V

    .line 421
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->isDriveSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    .line 426
    :goto_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getOpenActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    .line 429
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isTopicOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    .line 434
    :goto_1
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->finish()V

    .line 435
    new-instance v0, Lcom/didi/common/ui/webview/CancelOrderWebActivity$11;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity$11;-><init>(Lcom/didi/common/ui/webview/CancelOrderWebActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void

    .line 424
    :cond_2
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 432
    :cond_3
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    .line 66
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->initDatas()V

    .line 67
    invoke-direct {p0}, Lcom/didi/common/ui/webview/CancelOrderWebActivity;->addJavaScriptInterfaces()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/didi/common/ui/webview/WebActivity;->onDestroy()V

    .line 73
    return-void
.end method

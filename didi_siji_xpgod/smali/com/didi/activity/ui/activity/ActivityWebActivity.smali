.class public Lcom/didi/activity/ui/activity/ActivityWebActivity;
.super Lcom/didi/common/ui/webview/WebActivity;
.source "ActivityWebActivity.java"

# interfaces
.implements Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;


# instance fields
.field private bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

.field private commonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

.field private mIndex:Lcom/didi/activity/business/index/ActivityIndex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/didi/common/ui/webview/WebActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/activity/ui/activity/ActivityWebActivity;)Lcom/didi/activity/business/index/ActivityIndex;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->mIndex:Lcom/didi/activity/business/index/ActivityIndex;

    return-object v0
.end method

.method private notifyJsAddress(ILcom/didi/common/model/Address;)V
    .locals 5
    .parameter "address_type"
    .parameter "address"

    .prologue
    .line 219
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 221
    .local v1, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "address_type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v2, "address"

    invoke-virtual {p2}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v2, "displayname"

    invoke-virtual {p2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v2, "lat"

    iget-object v3, p2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v2, "lng"

    iget-object v3, p2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->commonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->commonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:udacheReunionFestival.selectPOICallBackHandler("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerMethod()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "create_order"

    new-instance v2, Lcom/didi/activity/ui/activity/ActivityWebActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/activity/ui/activity/ActivityWebActivity$1;-><init>(Lcom/didi/activity/ui/activity/ActivityWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 67
    iget-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "selectCity"

    new-instance v2, Lcom/didi/activity/ui/activity/ActivityWebActivity$2;

    invoke-direct {v2, p0}, Lcom/didi/activity/ui/activity/ActivityWebActivity$2;-><init>(Lcom/didi/activity/ui/activity/ActivityWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 81
    iget-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "select_address"

    new-instance v2, Lcom/didi/activity/ui/activity/ActivityWebActivity$3;

    invoke-direct {v2, p0}, Lcom/didi/activity/ui/activity/ActivityWebActivity$3;-><init>(Lcom/didi/activity/ui/activity/ActivityWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 101
    iget-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    const-string v1, "create_order"

    new-instance v2, Lcom/didi/activity/ui/activity/ActivityWebActivity$4;

    invoke-direct {v2, p0}, Lcom/didi/activity/ui/activity/ActivityWebActivity$4;-><init>(Lcom/didi/activity/ui/activity/ActivityWebActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/webview/JavascriptBridge;->addFunction(Ljava/lang/String;Lcom/didi/common/ui/webview/JavascriptBridge$Function;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected checkOrderAndSend()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->getCurrentBusinessIndex()Lcom/didi/frame/business/redirector/Index;

    move-result-object v1

    .line 116
    .local v1, index:Lcom/didi/frame/business/redirector/Index;
    instance-of v2, v1, Lcom/didi/activity/business/index/ActivityIndex;

    if-eqz v2, :cond_0

    .line 117
    check-cast v1, Lcom/didi/activity/business/index/ActivityIndex;

    .end local v1           #index:Lcom/didi/frame/business/redirector/Index;
    iput-object v1, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->mIndex:Lcom/didi/activity/business/index/ActivityIndex;

    .line 118
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v2

    invoke-interface {v2}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-object v0, v2, Lcom/didi/common/model/CommonAttributes;->business:Lcom/didi/frame/business/Business;

    .line 119
    .local v0, business:Lcom/didi/frame/business/Business;
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v0, :cond_1

    .line 120
    iget-object v2, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->mIndex:Lcom/didi/activity/business/index/ActivityIndex;

    const-class v3, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {v2, v4, v3}, Lcom/didi/activity/business/index/ActivityIndex;->addFragmentClass(ILjava/lang/Class;)V

    .line 121
    invoke-static {}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->getInstance()Lcom/didi/activity/ui/fragment/SendOrderHelper;

    move-result-object v2

    invoke-virtual {v2, p0, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiOrder(Landroid/app/Activity;Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;)V

    .line 129
    .end local v0           #business:Lcom/didi/frame/business/Business;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0       #business:Lcom/didi/frame/business/Business;
    :cond_1
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v2, v0, :cond_0

    .line 123
    iget-object v2, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->mIndex:Lcom/didi/activity/business/index/ActivityIndex;

    const-class v3, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {v2, v4, v3}, Lcom/didi/activity/business/index/ActivityIndex;->addFragmentClass(ILjava/lang/Class;)V

    .line 125
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v2, v4}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;I)V

    .line 126
    invoke-static {}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->getInstance()Lcom/didi/activity/ui/fragment/SendOrderHelper;

    move-result-object v2

    invoke-virtual {v2, p0, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendCarOrder(Landroid/app/Activity;Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/webview/WebActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 208
    :pswitch_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v4

    .line 209
    .local v4, startAddress:Lcom/didi/common/model/Address;
    invoke-direct {p0, v6, v4}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->notifyJsAddress(ILcom/didi/common/model/Address;)V

    goto :goto_0

    .line 195
    .end local v4           #startAddress:Lcom/didi/common/model/Address;
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "city_select_result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, cityString:[Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v3, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "c_id"

    array-length v5, v0

    if-le v5, v7, :cond_2

    const/4 v5, 0x1

    aget-object v5, v0, v5

    :goto_1
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v6, "c_name"

    array-length v5, v0

    if-lez v5, :cond_3

    const/4 v5, 0x0

    aget-object v5, v0, v5

    :goto_2
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_3
    iget-object v5, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->commonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    if-eqz v5, :cond_0

    .line 204
    iget-object v5, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->commonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "javascript:udacheReunionFestival.selectCityCallBackHandler("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/didi/common/ui/webview/CommonWebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    :try_start_1
    const-string v5, ""

    goto :goto_1

    .line 199
    :cond_3
    const-string v5, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 212
    .end local v0           #cityString:[Ljava/lang/String;
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #object:Lorg/json/JSONObject;
    :pswitch_3
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    .line 213
    .local v2, endAddress:Lcom/didi/common/model/Address;
    invoke-direct {p0, v7, v2}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->notifyJsAddress(ILcom/didi/common/model/Address;)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/didi/common/ui/webview/WebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->getJavascriptBridge()Lcom/didi/common/ui/webview/JavascriptBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->bridge:Lcom/didi/common/ui/webview/JavascriptBridge;

    .line 51
    invoke-virtual {p0}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->getmCommonWebView()Lcom/didi/common/ui/webview/CommonWebViewEx;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->commonWebViewEx:Lcom/didi/common/ui/webview/CommonWebViewEx;

    .line 52
    invoke-direct {p0}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->registerMethod()V

    .line 53
    return-void
.end method

.method public onCreateOrderFail()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onCreateOrderSuccess()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 135
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v3

    .line 136
    .local v3, startAddress:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 137
    .local v0, currentAddress:Lcom/didi/common/model/Address;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget-object v2, v4, Lcom/didi/common/model/CommonAttributes;->business:Lcom/didi/frame/business/Business;

    .line 150
    .local v2, originalBus:Lcom/didi/frame/business/Business;
    sget-object v4, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 151
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/helper/LocationHelper;->setOrderCityId(Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->mIndex:Lcom/didi/activity/business/index/ActivityIndex;

    invoke-virtual {v4}, Lcom/didi/activity/business/index/ActivityIndex;->resetIndex()V

    .line 154
    sget-object v4, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v4, v2, :cond_3

    .line 155
    iget-object v4, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->mIndex:Lcom/didi/activity/business/index/ActivityIndex;

    const-class v5, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {v4, v6, v5}, Lcom/didi/activity/business/index/ActivityIndex;->addFragmentClass(ILjava/lang/Class;)V

    .line 160
    :cond_1
    :goto_1
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 161
    new-instance v4, Lcom/didi/activity/ui/activity/ActivityWebActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/didi/activity/ui/activity/ActivityWebActivity$5;-><init>(Lcom/didi/activity/ui/activity/ActivityWebActivity;Lcom/didi/frame/business/Business;)V

    const-wide/16 v5, 0x64

    invoke-static {v4, v5, v6}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "act_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 181
    return-void

    .line 140
    .end local v2           #originalBus:Lcom/didi/frame/business/Business;
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget-object v1, v4, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 141
    .local v1, orderType:Lcom/didi/frame/business/OrderType;
    sget-object v4, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v1, v4, :cond_0

    .line 142
    invoke-static {v6}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 143
    invoke-static {v3}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 144
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/didi/frame/Sendable;->setUseDepart(Z)V

    .line 145
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    goto :goto_0

    .line 156
    .end local v1           #orderType:Lcom/didi/frame/business/OrderType;
    .restart local v2       #originalBus:Lcom/didi/frame/business/Business;
    :cond_3
    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v4, v2, :cond_1

    .line 157
    iget-object v4, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity;->mIndex:Lcom/didi/activity/business/index/ActivityIndex;

    const-class v5, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {v4, v6, v5}, Lcom/didi/activity/business/index/ActivityIndex;->addFragmentClass(ILjava/lang/Class;)V

    goto :goto_1
.end method

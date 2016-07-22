.class public Lcom/didi/beatles/ui/component/BtsPassengerProfileView;
.super Landroid/widget/RelativeLayout;
.source "BtsPassengerProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btsPassengerProfileAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

.field private btsPassengerProfileDaCheng:Landroid/widget/TextView;

.field private btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

.field private btsPassengerProfileLayout:Landroid/widget/RelativeLayout;

.field private btsPassengerProfileName:Landroid/widget/TextView;

.field private btsPassengerProfilePhone:Landroid/widget/ImageView;

.field private btsPassengerProfileTag:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private isImCanUse:Z

.field private isPhoneCanUse:Z

.field private isVerify:Landroid/widget/ImageView;

.field listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private order:Lcom/didi/beatles/model/order/BtsOrderDriver;

.field private sex:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 295
    new-instance v0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView$1;-><init>(Lcom/didi/beatles/ui/component/BtsPassengerProfileView;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 64
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->context:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    new-instance v0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView$1;-><init>(Lcom/didi/beatles/ui/component/BtsPassengerProfileView;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 83
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->context:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 295
    new-instance v0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView$1;-><init>(Lcom/didi/beatles/ui/component/BtsPassengerProfileView;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 74
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->context:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 249
    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    .line 250
    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->sex:Landroid/widget/ImageView;

    .line 251
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isVerify:Landroid/widget/ImageView;

    .line 252
    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileName:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 254
    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileDaCheng:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileTag:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfilePhone:Landroid/widget/ImageView;

    .line 257
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/RedTipTextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    .line 258
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileLayout:Landroid/widget/RelativeLayout;

    .line 259
    return-void
.end method


# virtual methods
.method public getBtsPassengerProfilePhone()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfilePhone:Landroid/widget/ImageView;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->initLayout()V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 263
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 290
    :sswitch_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->passenger_id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->startProfileWebActivity(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 267
    :sswitch_1
    iget-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isPhoneCanUse:Z

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->call_disabled_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->call_disabled_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    const-string v0, "pbpphone_ck"

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[passengerid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->passenger_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][im_session_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->session_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->phone_num:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->actionCall(Ljava/lang/String;)V

    .line 275
    const-string v0, "12"

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v4, v0, v1, v6}, Lcom/didi/beatles/net/BtsRequest;->getApm(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 278
    :sswitch_2
    iget-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isImCanUse:Z

    if-nez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->im_disabled_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->im_disabled_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :cond_3
    const-string v0, "pbpim_ck"

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[passengerid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->passenger_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][im_session_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->session_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v5}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->session_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->nick_name:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/im/BtsConversationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "11"

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v4, v0, v1, v6}, Lcom/didi/beatles/net/BtsRequest;->getApm(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto/16 :goto_0

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x7f0800e3 -> :sswitch_0
        0x7f080159 -> :sswitch_2
        0x7f08015e -> :sswitch_1
    .end sparse-switch
.end method

.method public setIMClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setPassengerData(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 6
    .parameter "order"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    .line 116
    if-eqz p1, :cond_4

    .line 117
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->header_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    const v2, 0x7f020071

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->nick_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_1
    iget v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->gender:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->sub_title1:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileTag:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileDaCheng:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileDaCheng:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->sub_title2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileTag:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileTag:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->sub_title1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_3
    iget-boolean v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_call:Z

    if-eqz v0, :cond_6

    .line 150
    iput-boolean v4, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isPhoneCanUse:Z

    .line 151
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfilePhone:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 157
    :goto_2
    iget-boolean v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_im:Z

    if-eqz v0, :cond_7

    .line 159
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setBackgroundResource(I)V

    .line 160
    iput-boolean v4, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isImCanUse:Z

    .line 166
    :goto_3
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->isHasSessionUnread(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v4}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 171
    :goto_4
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isVerify:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    const-string v0, "2"

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->car_auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isVerify:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :cond_4
    :goto_5
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileTag:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 154
    :cond_6
    iput-boolean v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isPhoneCanUse:Z

    .line 155
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfilePhone:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setBackgroundResource(I)V

    .line 164
    iput-boolean v3, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isImCanUse:Z

    goto :goto_3

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    goto :goto_4

    .line 175
    :cond_9
    const-string v0, "2"

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isVerify:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 178
    :cond_a
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->isVerify:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPassengerData(Lcom/didi/beatles/model/order/BtsOrderDriver;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "order"
    .parameter "listener"

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 99
    move-object p2, p0

    .line 100
    :cond_0
    if-eqz p1, :cond_3

    .line 101
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    .line 102
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->setPassengerData(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    .line 103
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfilePhone:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfilePhone:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, p2}, Lcom/didi/beatles/ui/component/RedTipTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_3
    return-void
.end method

.method public setPassengerProfileClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setPhoneClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfilePhone:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfilePhone:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_0
    return-void
.end method

.method public updateMessageStatus(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->btsPassengerProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    goto :goto_0
.end method

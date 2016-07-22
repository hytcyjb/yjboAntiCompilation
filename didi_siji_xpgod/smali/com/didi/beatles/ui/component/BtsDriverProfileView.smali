.class public Lcom/didi/beatles/ui/component/BtsDriverProfileView;
.super Landroid/widget/RelativeLayout;
.source "BtsDriverProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btsDriverCarInfo:Landroid/widget/TextView;

.field private btsDriverProfileAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

.field private btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

.field private btsDriverProfileJiecheng:Landroid/widget/TextView;

.field private btsDriverProfileLayout:Landroid/widget/RelativeLayout;

.field private btsDriverProfileName:Landroid/widget/TextView;

.field private btsDriverProfilePhone:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private isImCanUse:Z

.field private isPhoneCanUse:Z

.field private isVerify:Landroid/widget/ImageView;

.field private order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

.field private sex:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->context:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->context:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->context:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
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

    .line 267
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 217
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    .line 218
    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->sex:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isVerify:Landroid/widget/ImageView;

    .line 220
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileName:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 222
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverCarInfo:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileJiecheng:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfilePhone:Landroid/widget/ImageView;

    .line 225
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/RedTipTextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    .line 226
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileLayout:Landroid/widget/RelativeLayout;

    .line 227
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->initLayout()V

    .line 84
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 231
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    iget-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isPhoneCanUse:Z

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->call_disabled_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->call_disabled_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_2
    const-string v0, "pbdphone_ck"

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[driverid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->driver_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][im_session_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->phone_num:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->actionCall(Ljava/lang/String;)V

    .line 243
    const-string v0, "12"

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v4, v0, v1, v6}, Lcom/didi/beatles/net/BtsRequest;->getApm(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isImCanUse:Z

    if-nez v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->im_disabled_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->im_disabled_msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_3
    const-string v0, "pbdim_ck"

    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[driverid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->driver_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][im_session_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v5}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 254
    const-string v0, "11"

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v4, v0, v1, v6}, Lcom/didi/beatles/net/BtsRequest;->getApm(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 255
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->nick_name:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/im/BtsConversationActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->driver_id:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/didi/beatles/ui/activity/h5/BtsProfileWebActivity;->startProfileWebActivity(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x7f080102
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDriverData(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 6
    .parameter "order"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .line 113
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->head_img_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    const v2, 0x7f020071

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 119
    :cond_0
    iget v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->gender:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->nick_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverCarInfo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->sub_title1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileJiecheng:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->sub_title2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-boolean v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->can_call:Z

    if-eqz v0, :cond_2

    .line 137
    iput-boolean v4, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isPhoneCanUse:Z

    .line 138
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfilePhone:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 144
    :goto_1
    iget-boolean v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->can_im:Z

    if-eqz v0, :cond_3

    .line 146
    iput-boolean v4, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isImCanUse:Z

    .line 147
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setBackgroundResource(I)V

    .line 153
    :goto_2
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->isHasSessionUnread(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v4}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 158
    :goto_3
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isVerify:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    const-string v0, "2"

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->car_auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isVerify:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    :cond_1
    :goto_4
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->sex:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->sex:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 141
    :cond_2
    iput-boolean v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isPhoneCanUse:Z

    .line 142
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfilePhone:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 150
    :cond_3
    iput-boolean v3, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isImCanUse:Z

    .line 151
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    goto :goto_3

    .line 162
    :cond_5
    const-string v0, "2"

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->auth_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isVerify:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->isVerify:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDriverData(Lcom/didi/beatles/model/order/BtsOrderPassenger;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "order"
    .parameter "listener"

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    move-object p2, p0

    .line 98
    :cond_0
    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->setDriverData(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 100
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfilePhone:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfilePhone:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, p2}, Lcom/didi/beatles/ui/component/RedTipTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_3
    return-void
.end method

.method public setDriverProfileClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setIMClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    invoke-virtual {v0, p1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_0
    return-void
.end method

.method public setPhoneClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfilePhone:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfilePhone:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_0
    return-void
.end method

.method public updateMessageStatus(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->btsDriverProfileIM:Lcom/didi/beatles/ui/component/RedTipTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/RedTipTextView;->setVisibility(I)V

    goto :goto_0
.end method

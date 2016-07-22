.class public Lcom/didi/car/model/CarShareCouponInfo;
.super Lcom/didi/common/model/BaseObject;
.source "CarShareCouponInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public displayCoupon:I

.field public donateContent:Ljava/lang/String;

.field public donateLogoUrl:Ljava/lang/String;

.field public donateTitle:Ljava/lang/String;

.field public isDonate:I

.field public isOpenWeibo:Z

.field public layerImageUrl:Ljava/lang/String;

.field public open:I

.field public pinkButtonLater:Ljava/lang/String;

.field public pinkButtonSend:Ljava/lang/String;

.field public pinkContent:Ljava/lang/String;

.field public pinkFriendContent:Ljava/lang/String;

.field public pinkFriendLogo:Ljava/lang/String;

.field public pinkFriendTitle:Ljava/lang/String;

.field public pinkLogoUrl:Ljava/lang/String;

.field public pinkOpen:I

.field public pinkPop:I

.field public pinkPopTime:I

.field public pinkShareUrl:Ljava/lang/String;

.field public pinkTitle:Ljava/lang/String;

.field public pinkUrl:Ljava/lang/String;

.field public pinkWxContent:Ljava/lang/String;

.field public pinkWxLogo:Ljava/lang/String;

.field public pinkWxTitle:Ljava/lang/String;

.field public popLayerTime:I

.field public shareBtnLater:Ljava/lang/String;

.field public shareBtnSend:Ljava/lang/String;

.field public shareText:Ljava/lang/String;

.field public shareTitle:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public type:I

.field public weiboContent:Ljava/lang/String;

.field public weiboLogo:Ljava/lang/String;

.field public weiboTitle:Ljava/lang/String;

.field public weiboUrl:Ljava/lang/String;

.field public wxFriendLogo:Ljava/lang/String;

.field public wxFriendText:Ljava/lang/String;

.field public wxFriendTitle:Ljava/lang/String;

.field public wxShareLogo:Ljava/lang/String;

.field public wxShareText:Ljava/lang/String;

.field public wxShareTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->isOpenWeibo:Z

    return-void
.end method


# virtual methods
.method public getDonateContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->donateContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDonateLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->donateLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDonateTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->donateTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLayerImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->layerImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->open:I

    return v0
.end method

.method public getPinkFriendContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPinkFriendLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getPinkFriendTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPinkLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinkShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinkWxContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPinkWxLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getPinkWxTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    return v0
.end method

.method public getWxFriendLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getWxFriendText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendText:Ljava/lang/String;

    return-object v0
.end method

.method public getWxFriendTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWxShareLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getWxShareText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareText:Ljava/lang/String;

    return-object v0
.end method

.method public getWxShareTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareTitle:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    const/16 v5, 0x8c

    const/4 v4, 0x1

    .line 104
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    .line 105
    iget v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v4, v2, :cond_2

    .line 106
    const-string v2, "pink_open"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkOpen:I

    .line 107
    const-string v2, "pink_title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkTitle:Ljava/lang/String;

    .line 108
    const-string v2, "pink_content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkContent:Ljava/lang/String;

    .line 109
    const-string v2, "pink_logo_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkLogoUrl:Ljava/lang/String;

    .line 110
    const-string v2, "pink_pop"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkPop:I

    .line 111
    const-string v2, "pink_pop_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkPopTime:I

    .line 112
    const-string v2, "pink_button_send"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkButtonSend:Ljava/lang/String;

    .line 113
    const-string v2, "pink_button_later"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkButtonLater:Ljava/lang/String;

    .line 114
    const-string v2, "pink_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkUrl:Ljava/lang/String;

    .line 116
    const-string v2, "pink_wx_title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxTitle:Ljava/lang/String;

    .line 117
    const-string v2, "pink_wx_content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxContent:Ljava/lang/String;

    .line 118
    const-string v2, "pink_wx_logo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxLogo:Ljava/lang/String;

    .line 120
    const-string v2, "pink_friend_title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendTitle:Ljava/lang/String;

    .line 121
    const-string v2, "pink_friend_content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendContent:Ljava/lang/String;

    .line 122
    const-string v2, "pink_friend_logo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendLogo:Ljava/lang/String;

    .line 124
    const-string v2, "pink_share_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->pinkShareUrl:Ljava/lang/String;

    .line 149
    :cond_0
    :goto_0
    const-string v2, "is_donate"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->isDonate:I

    .line 150
    const-string v2, "donate_title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->donateTitle:Ljava/lang/String;

    .line 151
    const-string v2, "donate_content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->donateContent:Ljava/lang/String;

    .line 152
    const-string v2, "donate_logo_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->donateLogoUrl:Ljava/lang/String;

    .line 154
    const-string v2, "platform"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    const-string v2, "platform"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
    .local v0, platformObj:Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    const-string v2, "weibo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    const-string v2, "weibo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 158
    .local v1, sinaObj:Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 159
    iput-boolean v4, p0, Lcom/didi/car/model/CarShareCouponInfo;->isOpenWeibo:Z

    .line 160
    const-string v2, "share_title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboTitle:Ljava/lang/String;

    .line 161
    const-string v2, "share_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboContent:Ljava/lang/String;

    .line 162
    const-string v2, "share_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboUrl:Ljava/lang/String;

    .line 163
    const-string v2, "share_logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboLogo:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 165
    iget-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboContent:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboContent:Ljava/lang/String;

    .line 170
    .end local v0           #platformObj:Lorg/json/JSONObject;
    .end local v1           #sinaObj:Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 126
    :cond_2
    const/4 v2, 0x2

    iget v3, p0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v2, v3, :cond_0

    .line 127
    const-string v2, "open"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->open:I

    .line 128
    const-string v2, "share_title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareTitle:Ljava/lang/String;

    .line 129
    const-string v2, "share_text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareText:Ljava/lang/String;

    .line 131
    const-string v2, "share_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareUrl:Ljava/lang/String;

    .line 132
    const-string v2, "share_button_send"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareBtnSend:Ljava/lang/String;

    .line 133
    const-string v2, "share_button_later"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareBtnLater:Ljava/lang/String;

    .line 135
    const-string v2, "pop_layer_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->popLayerTime:I

    .line 136
    const-string v2, "layer_image_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->layerImageUrl:Ljava/lang/String;

    .line 138
    const-string v2, "wx_share_title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareTitle:Ljava/lang/String;

    .line 139
    const-string v2, "wx_share_text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareText:Ljava/lang/String;

    .line 140
    const-string v2, "wx_share_logo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareLogo:Ljava/lang/String;

    .line 142
    const-string v2, "wx_friend_title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendTitle:Ljava/lang/String;

    .line 143
    const-string v2, "wx_friend_text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendText:Ljava/lang/String;

    .line 144
    const-string v2, "wx_friend_logo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendLogo:Ljava/lang/String;

    .line 146
    const-string v2, "display_coupon_logo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarShareCouponInfo;->displayCoupon:I

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareCouponInfo [open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->open:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareBtnSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareBtnSend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareBtnLater="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->shareBtnLater:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", popLayerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->popLayerTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layerImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->layerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxShareTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxShareText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxShareLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxFriendTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxFriendText"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxFriendLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weiboTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weiboContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weiboUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weiboLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarShareCouponInfo;->weiboLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

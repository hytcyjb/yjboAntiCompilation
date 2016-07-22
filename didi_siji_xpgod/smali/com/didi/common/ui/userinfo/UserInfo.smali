.class public Lcom/didi/common/ui/userinfo/UserInfo;
.super Lcom/didi/common/model/BaseObject;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/userinfo/UserInfo$Age;,
        Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    }
.end annotation


# instance fields
.field private age:Lcom/didi/common/ui/userinfo/UserInfo$Age;

.field private authState:Ljava/lang/String;

.field private auth_desc:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private carInfo:Ljava/lang/String;

.field private crop:Ljava/lang/String;

.field private employ:Ljava/lang/String;

.field private gender:I

.field private level:I

.field private levelIcon:Ljava/lang/String;

.field private levelName:Ljava/lang/String;

.field private levelUrl:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

.field private userNickname:Ljava/lang/String;

.field private walletUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->level:I

    return-void
.end method

.method private invert(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nickName"

    .prologue
    const/16 v1, 0xa

    .line 439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 442
    .end local p1
    :cond_0
    return-object p1
.end method

.method private save(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, js:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setUserInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1           #js:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public generateAge(Ljava/lang/String;)Lcom/didi/common/ui/userinfo/UserInfo$Age;
    .locals 4
    .parameter "ageStr"

    .prologue
    const/4 v3, 0x1

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, age:Lcom/didi/common/ui/userinfo/UserInfo$Age;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, ageSplite:[Ljava/lang/String;
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfo$Age;

    .end local v0           #age:Lcom/didi/common/ui/userinfo/UserInfo$Age;
    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/UserInfo$Age;-><init>()V

    .line 412
    .restart local v0       #age:Lcom/didi/common/ui/userinfo/UserInfo$Age;
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 413
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/didi/common/ui/userinfo/UserInfo$Age;->id:I

    .line 414
    aget-object v2, v1, v3

    iput-object v2, v0, Lcom/didi/common/ui/userinfo/UserInfo$Age;->ageContent:Ljava/lang/String;

    .line 417
    .end local v1           #ageSplite:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public generateTrade(Ljava/lang/String;)Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    .locals 4
    .parameter "tradeStr"

    .prologue
    const/4 v3, 0x1

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, tradeSplite:[Ljava/lang/String;
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    .end local v0           #trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/UserInfo$Trade;-><init>()V

    .line 399
    .restart local v0       #trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 400
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/didi/beatles/utils/BtsParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    .line 401
    aget-object v2, v1, v3

    iput-object v2, v0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    .line 404
    .end local v1           #tradeSplite:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getAge()Lcom/didi/common/ui/userinfo/UserInfo$Age;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->age:Lcom/didi/common/ui/userinfo/UserInfo$Age;

    return-object v0
.end method

.method public getAuthState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->authState:Ljava/lang/String;

    return-object v0
.end method

.method public getAuth_desc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->auth_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCarInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->carInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCrop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->crop:Ljava/lang/String;

    return-object v0
.end method

.method public getEmploy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->employ:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->gender:I

    return v0
.end method

.method public getGenderStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    iget v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->gender:I

    if-nez v0, :cond_0

    .line 295
    const-string v0, ""

    .line 297
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->gender:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "\u7537"

    goto :goto_0

    :cond_1
    const-string v0, "\u5973"

    goto :goto_0
.end method

.method public getGenderType(Ljava/lang/String;)I
    .locals 1
    .parameter "genderStr"

    .prologue
    .line 309
    const-string v0, "\u7537"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->level:I

    return v0
.end method

.method public getLevelIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTrade()Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    return-object v0
.end method

.method public getUserNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->userNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->walletUrl:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 135
    const-string v0, "avatar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->avatar:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->avatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "head_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->avatar:Ljava/lang/String;

    .line 139
    :cond_0
    const-string v0, "nick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfo;->invert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->nickname:Ljava/lang/String;

    .line 140
    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfo;->invert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->userNickname:Ljava/lang/String;

    .line 141
    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->level:I

    .line 142
    const-string v0, "levelName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelName:Ljava/lang/String;

    .line 143
    const-string v0, "levelIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelIcon:Ljava/lang/String;

    .line 144
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->pid:Ljava/lang/String;

    .line 145
    const-string v0, "userLevelURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelUrl:Ljava/lang/String;

    .line 146
    const-string v0, "userWalletURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->walletUrl:Ljava/lang/String;

    .line 147
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->phone:Ljava/lang/String;

    .line 148
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->gender:I

    .line 149
    const-string v0, "sign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->sign:Ljava/lang/String;

    .line 150
    const-string v0, "age"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfo;->generateAge(Ljava/lang/String;)Lcom/didi/common/ui/userinfo/UserInfo$Age;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->age:Lcom/didi/common/ui/userinfo/UserInfo$Age;

    .line 151
    const-string v0, "trade"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfo;->generateTrade(Ljava/lang/String;)Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    .line 152
    const-string v0, "corp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->crop:Ljava/lang/String;

    .line 153
    const-string v0, "employ"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->employ:Ljava/lang/String;

    .line 154
    const-string v0, "auth_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->authState:Ljava/lang/String;

    .line 155
    const-string v0, "auth_desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->auth_desc:Ljava/lang/String;

    .line 156
    const-string v0, "carinfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->carInfo:Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfo;->save(Lorg/json/JSONObject;)V

    .line 159
    return-void
.end method

.method public setAge(Lcom/didi/common/ui/userinfo/UserInfo$Age;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->age:Lcom/didi/common/ui/userinfo/UserInfo$Age;

    .line 331
    return-void
.end method

.method public setAuthState(Ljava/lang/String;)V
    .locals 0
    .parameter "authState"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->authState:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setAuth_desc(Ljava/lang/String;)V
    .locals 0
    .parameter "auth_desc"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->auth_desc:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->avatar:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setCarInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "carInfo"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->carInfo:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setCrop(Ljava/lang/String;)V
    .locals 0
    .parameter "crop"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->crop:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setEmploy(Ljava/lang/String;)V
    .locals 0
    .parameter "employ"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->employ:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 301
    iput p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->gender:I

    .line 302
    return-void
.end method

.method public setGenderStr(Ljava/lang/String;)V
    .locals 1
    .parameter "genderStr"

    .prologue
    .line 305
    const-string v0, "\u7537"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->gender:I

    .line 306
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 212
    iput p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->level:I

    .line 213
    return-void
.end method

.method public setLevelIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "levelIcon"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelIcon:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0
    .parameter "levelName"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelName:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setLevelUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "levelUrl"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->levelUrl:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1
    .parameter "nickname"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfo;->invert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfo;->nickname:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->phone:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->pid:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .parameter "sign"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->sign:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setTrade(Lcom/didi/common/ui/userinfo/UserInfo$Trade;)V
    .locals 0
    .parameter "trade"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    .line 343
    return-void
.end method

.method public setUserNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "userNickname"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->userNickname:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setWalletUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "walletUrl"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfo;->walletUrl:Ljava/lang/String;

    .line 273
    return-void
.end method

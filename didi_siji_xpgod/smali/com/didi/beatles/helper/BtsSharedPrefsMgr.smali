.class public Lcom/didi/beatles/helper/BtsSharedPrefsMgr;
.super Ljava/lang/Object;
.source "BtsSharedPrefsMgr.java"


# static fields
.field private static final KEY_DRIVER_OP_VERSION:Ljava/lang/String; = "key_driver_op_version"

.field private static final KEY_PASSENGER_OP_VERSION:Ljava/lang/String; = "key_passenger_op_version"

.field private static final key_last_from:Ljava/lang/String; = "key_last_from"

.field private static final key_last_to:Ljava/lang/String; = "key_last_to"

.field private static final key_token:Ljava/lang/String; = "key_token"

.field private static final key_user_icon:Ljava/lang/String; = "key_user_icon"

.field private static final key_user_name:Ljava/lang/String; = "key_user_name"

.field private static final key_user_role:Ljava/lang/String; = "key_user_role"

.field private static sEditor:Landroid/content/SharedPreferences$Editor; = null

.field private static sInstance:Lcom/didi/beatles/helper/BtsSharedPrefsMgr; = null

.field private static final sSharedPrefFileName:Ljava/lang/String; = "bts_sharedPref_file"

.field private static sSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const-string v1, "bts_sharedPref_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    .line 40
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    .line 41
    return-void
.end method

.method private apply()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/didi/beatles/helper/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sInstance:Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    invoke-direct {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;-><init>()V

    sput-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sInstance:Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    .line 35
    :cond_0
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sInstance:Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    return-object v0
.end method


# virtual methods
.method public getBeatlesConfigArray()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "beatles_config"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBtsCityId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "bts_city_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBtsGuideImageUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "beatles_guide_img_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBtsRemarkLabel()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    sget-object v1, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "bts_remark"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 191
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBtsSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "bts_sessionid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangeIPFlag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "change_ip_flag"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "bts_city_config_tmp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationLink()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "creation_link"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTxt()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "creation_text"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriverOpVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_driver_op_version"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "file_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastFrom()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_last_from"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastTo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_last_to"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassengerOpVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_passenger_op_version"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAdRedPoint(II)Z
    .locals 6
    .parameter "role"
    .parameter "version"

    .prologue
    const/4 v5, 0x1

    .line 282
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "Show_Ad_Red_Point"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_user_icon"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "bts_userinfo_tmp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_user_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserRole()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "bts_userrole_tmp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserRoleType()I
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_user_role"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBeatlesOnLine()Z
    .locals 3

    .prologue
    .line 272
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "beatles_online"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstUse()Z
    .locals 3

    .prologue
    .line 207
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "bts_first_use"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFristAddRoute()Z
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "add_route_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOpenBeatles()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public isOpenDriverTask()Z
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "bts_drivertask_open"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putChangeIPFlag(Ljava/lang/String;)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 286
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "change_ip_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 288
    return-void
.end method

.method public putFilePath(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 295
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "file_path"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 297
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 226
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setPassengerOpVersion(Ljava/lang/String;)V

    .line 227
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setDriverOpVersion(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setBeatlesConfigArray(Ljava/lang/String;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 147
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "beatles_config"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 149
    return-void
.end method

.method public setBtsGuideImageUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 216
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "beatles_guide_img_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    return-void
.end method

.method public setBtsRemarkLabel(Ljava/lang/String;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 181
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bts_remark"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 183
    return-void
.end method

.method public setBtsSessionId(Ljava/lang/String;)V
    .locals 2
    .parameter "sid"

    .prologue
    .line 156
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bts_sessionid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 158
    return-void
.end method

.method public setCityConfig(Ljava/lang/String;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 250
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bts_city_config_tmp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 252
    return-void
.end method

.method public setCreationLink(Ljava/lang/String;)V
    .locals 2
    .parameter "creationLink"

    .prologue
    .line 173
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "creation_link"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 175
    return-void
.end method

.method public setCreationTxt(Ljava/lang/String;)V
    .locals 2
    .parameter "creation"

    .prologue
    .line 165
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "creation_text"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 167
    return-void
.end method

.method public setDriverOpVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "ver"

    .prologue
    .line 133
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_driver_op_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 135
    return-void
.end method

.method public setFirstUse(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 202
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bts_first_use"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 204
    return-void
.end method

.method public setFristAddRouteFlag(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 197
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "add_route_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 199
    return-void
.end method

.method public setLastFrom(Ljava/lang/String;)V
    .locals 2
    .parameter "lastFrom"

    .prologue
    .line 103
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_last_from"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 105
    return-void
.end method

.method public setLastTo(Ljava/lang/String;)V
    .locals 2
    .parameter "lastTo"

    .prologue
    .line 112
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_last_to"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 114
    return-void
.end method

.method public setOpenDriverTask(Z)V
    .locals 2
    .parameter "isOpen"

    .prologue
    .line 259
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bts_drivertask_open"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 261
    return-void
.end method

.method public setPassengerOpVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "ver"

    .prologue
    .line 120
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_passenger_op_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 122
    return-void
.end method

.method public setShowAdRedPoint(IIZ)V
    .locals 5
    .parameter "role"
    .parameter "version"
    .parameter "value"

    .prologue
    .line 277
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Show_Ad_Red_Point"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 279
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 55
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 57
    return-void
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "iconUrl"

    .prologue
    .line 69
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_user_icon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 71
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "tmp"

    .prologue
    .line 231
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bts_userinfo_tmp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 233
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 78
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_user_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 80
    return-void
.end method

.method public setUserRole(Ljava/lang/String;)V
    .locals 2
    .parameter "tmp"

    .prologue
    .line 240
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bts_userrole_tmp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 242
    return-void
.end method

.method public setUserRoleType(I)V
    .locals 2
    .parameter "roleType"

    .prologue
    .line 87
    new-instance v0, Lcom/didi/beatles/model/event/BtsChangeRoleEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsChangeRoleEvent;-><init>()V

    const-string v1, "BTS_CHANGE_ROLE_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->sEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_user_role"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-direct {p0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->apply()V

    .line 92
    return-void
.end method

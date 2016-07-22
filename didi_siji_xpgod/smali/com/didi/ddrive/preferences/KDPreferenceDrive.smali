.class public Lcom/didi/ddrive/preferences/KDPreferenceDrive;
.super Lcom/didi/ddrive/preferences/SpringSharedPreference;
.source "KDPreferenceDrive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    }
.end annotation


# static fields
.field public static final KEY_DRIVE_CITY_ID:Ljava/lang/String; = "drive_city_id"

.field public static final KEY_DRIVE_CITY_NAME:Ljava/lang/String; = "drive_city_name"

.field public static final KEY_DRIVE_COMMENT_TAGS:Ljava/lang/String; = "drive_comment_tags"

.field public static final KEY_DRIVE_ENABLE:Ljava/lang/String; = "drive_enable"

.field public static final KEY_DRIVE_ORDER_CREATE_TIME:Ljava/lang/String; = "drive_order_create_time"

.field private static final KEY_DRIVE_SETTINGS:Ljava/lang/String; = "setting"

.field private static final KEY_DRIVE_WARMUP_CONFIG:Ljava/lang/String; = "drive_warm_up_config"

.field private static final KEY_DRIVE_WARMUP_ENABLE:Ljava/lang/String; = "drive_warmup_enable"

.field public static final KEY_HIDE_DRIVE_COUNT:Ljava/lang/String; = "drive_count_hide"

.field private static final KEY_PAY_CHANNEL:Ljava/lang/String; = "pay_channel"

.field public static final KEY_USER_INFO:Ljava/lang/String; = "user"

.field private static final TAG:Ljava/lang/String; = "KDPreferenceDrive"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/didi/ddrive/preferences/SpringSharedPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getBizSwitch()I
    .locals 4

    .prologue
    .line 88
    const-string v1, "drive_enable"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, bizSwitch:I
    const-string v1, "KDPreferenceDrive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get switch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v0
.end method

.method public getCityId()I
    .locals 2

    .prologue
    .line 127
    const-string v0, "drive_city_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    const-string v0, "drive_city_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentTags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const-string v0, "drive_comment_tags"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriveCountHideFlag()I
    .locals 4

    .prologue
    .line 109
    const-string v1, "drive_count_hide"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, hideDriveCount:I
    const-string v1, "KDPreferenceDrive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide drive count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v0
.end method

.method public getOrderCreateTime()Lcom/didi/ddrive/model/OrderCreateTime;
    .locals 3

    .prologue
    .line 69
    const-string v1, "drive_order_create_time"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, orderCreateTime:Ljava/lang/String;
    const-class v1, Lcom/didi/ddrive/model/OrderCreateTime;

    invoke-static {v0, v1}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/OrderCreateTime;

    return-object v1
.end method

.method public getPayChannel()I
    .locals 2

    .prologue
    .line 165
    const-string v0, "pay_channel"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSettings()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    const-string v0, "setting"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    .locals 4

    .prologue
    .line 58
    const-string v2, "user"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, userStr:Ljava/lang/String;
    const-class v2, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    invoke-static {v1, v2}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    .line 60
    .local v0, user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    return-object v0
.end method

.method public getWarmUpSwitch()I
    .locals 4

    .prologue
    .line 99
    const-string v1, "drive_warmup_enable"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, bizSwitch:I
    const-string v1, "KDPreferenceDrive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get warm up switch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v0
.end method

.method public getWarmupConfigString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    const-string v0, "drive_warm_up_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideDriveCount(I)V
    .locals 1
    .parameter "hide"

    .prologue
    .line 105
    const-string v0, "drive_count_hide"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putInt(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method public saveOrderCreateTime(Lcom/didi/ddrive/model/OrderCreateTime;)V
    .locals 2
    .parameter "orderCreateTime"

    .prologue
    .line 64
    invoke-static {p1}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, createTime:Ljava/lang/String;
    const-string v1, "drive_order_create_time"

    invoke-virtual {p0, v1, v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public savePayChannel(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 161
    const-string v0, "pay_channel"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putInt(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method public saveSettings(Ljava/lang/String;)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 169
    const-string v0, "setting"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public saveUser(Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 53
    invoke-static {p1}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, userStr:Ljava/lang/String;
    const-string v1, "user"

    invoke-virtual {p0, v1, v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public setCityId(I)V
    .locals 1
    .parameter "cityId"

    .prologue
    .line 120
    const-string v0, "drive_city_id"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putInt(Ljava/lang/String;I)V

    .line 121
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 1
    .parameter "cityName"

    .prologue
    .line 136
    const-string v0, "drive_city_name"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setCommentTags(Ljava/lang/String;)V
    .locals 1
    .parameter "commentTags"

    .prologue
    .line 150
    const-string v0, "drive_comment_tags"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setDriveEnable(I)V
    .locals 3
    .parameter "bizSwitch"

    .prologue
    .line 80
    const-string v0, "KDPreferenceDrive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save switch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "drive_enable"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putInt(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public setWarmupConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "warmupConfig"

    .prologue
    .line 177
    const-string v0, "drive_warm_up_config"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setWarmupSwtich(I)V
    .locals 3
    .parameter "warmupSwitch"

    .prologue
    .line 94
    const-string v0, "drive_warmup_enable"

    invoke-virtual {p0, v0, p1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v0, "KDPreferenceDrive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get warm up switch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

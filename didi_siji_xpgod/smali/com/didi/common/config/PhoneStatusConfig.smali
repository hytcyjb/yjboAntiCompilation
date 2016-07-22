.class public Lcom/didi/common/config/PhoneStatusConfig;
.super Ljava/lang/Object;
.source "PhoneStatusConfig.java"


# static fields
.field private static instance:Lcom/didi/common/config/PhoneStatusConfig;

.field public static mLogout:Z


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/config/PhoneStatusConfig;->instance:Lcom/didi/common/config/PhoneStatusConfig;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/config/PhoneStatusConfig;->mLogout:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const-string v1, "phone_status_config"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/base/DidiApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/config/PhoneStatusConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    iget-object v0, p0, Lcom/didi/common/config/PhoneStatusConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/config/PhoneStatusConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/didi/common/config/PhoneStatusConfig;
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/didi/common/config/PhoneStatusConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/config/PhoneStatusConfig;->instance:Lcom/didi/common/config/PhoneStatusConfig;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/didi/common/config/PhoneStatusConfig;

    invoke-direct {v0}, Lcom/didi/common/config/PhoneStatusConfig;-><init>()V

    sput-object v0, Lcom/didi/common/config/PhoneStatusConfig;->instance:Lcom/didi/common/config/PhoneStatusConfig;

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/didi/common/config/PhoneStatusConfig;->instance:Lcom/didi/common/config/PhoneStatusConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/didi/common/config/PhoneStatusConfig;->instance:Lcom/didi/common/config/PhoneStatusConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPhoneBingWeiboStatus(Ljava/lang/String;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/config/PhoneStatusConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setPhoneBingWeiboStatus(Ljava/lang/String;Z)V
    .locals 1
    .parameter "phone"
    .parameter "bing"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/common/config/PhoneStatusConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object v0, p0, Lcom/didi/common/config/PhoneStatusConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

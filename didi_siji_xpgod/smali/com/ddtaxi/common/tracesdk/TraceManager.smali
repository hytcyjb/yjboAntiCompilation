.class public Lcom/ddtaxi/common/tracesdk/TraceManager;
.super Ljava/lang/Object;


# static fields
.field private static final DATA_COUNT_THRESHOLD_DEFAULT:I = 0x3e8

.field public static final LEVEL_HIGHT:I = 0x1

.field public static final LEVEL_LOW:I = 0x2

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "trace_sdk_pref"

.field private static volatile mInstance:Lcom/ddtaxi/common/tracesdk/TraceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCountThreshold:I

.field private mExtraLocService:Lcom/ddtaxi/common/tracesdk/bd;

.field private volatile mIsRunning:Z

.field private mLevel:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mIsRunning:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mLevel:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mDataCountThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;
    .locals 2

    sget-object v0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mInstance:Lcom/ddtaxi/common/tracesdk/TraceManager;

    if-nez v0, :cond_0

    const-class v1, Lcom/ddtaxi/common/tracesdk/TraceManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/ddtaxi/common/tracesdk/TraceManager;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/TraceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mInstance:Lcom/ddtaxi/common/tracesdk/TraceManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mInstance:Lcom/ddtaxi/common/tracesdk/TraceManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDataCountThreshold()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mDataCountThreshold:I

    return v0
.end method

.method getEarliestInsertTime()J
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "trace_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "earliest_insert_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraLocService()Lcom/ddtaxi/common/tracesdk/bd;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mExtraLocService:Lcom/ddtaxi/common/tracesdk/bd;

    return-object v0
.end method

.method getIMEI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method getIMSI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method getLastUploadFailTs()J
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "trace_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_upload_fail_ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mLevel:I

    return v0
.end method

.method getMobilePhone()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+86"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method getPakcageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSystemVerion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method getTotalSucsFailTimes()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "trace_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "total_sucs_fail_times"

    const-string v2, "0-0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "trace_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVersionCode()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getPakcageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method getVersionName()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getPakcageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasExtraLocService()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mExtraLocService:Lcom/ddtaxi/common/tracesdk/bd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mIsRunning:Z

    return v0
.end method

.method public setDataCountThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mDataCountThreshold:I

    return-void
.end method

.method setEarliestInsertTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "trace_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "earliest_insert_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setExtraLocService(Lcom/ddtaxi/common/tracesdk/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mExtraLocService:Lcom/ddtaxi/common/tracesdk/bd;

    return-void
.end method

.method setLastUploadFailTs(J)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "trace_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_upload_fail_ts"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mLevel:I

    return-void
.end method

.method setTotalSucsFailTimes(JJ)V
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "trace_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "total_sucs_fail_times"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setUID(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-string v1, "trace_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id"

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public startTrace()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mIsRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mIsRunning:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/ddtaxi/common/tracesdk/TraceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cmd_action"

    const v2, -0x22ffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public stopTrace()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mIsRunning:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/ddtaxi/common/tracesdk/TraceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cmd_action"

    const v2, -0x22fffffe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/TraceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

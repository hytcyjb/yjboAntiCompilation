.class public Lcom/didi/common/config/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# static fields
.field private static instance:Lcom/didi/common/config/Preferences;

.field public static mLogout:Z


# instance fields
.field private mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

.field private mPref:Lcom/didi/common/config/preference/PreferenceProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/config/Preferences;->instance:Lcom/didi/common/config/Preferences;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/config/Preferences;->mLogout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    .line 41
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceProxy;->getEditor()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/didi/common/config/Preferences;
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/didi/common/config/Preferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/config/Preferences;->instance:Lcom/didi/common/config/Preferences;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/didi/common/config/Preferences;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/config/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/common/config/Preferences;->instance:Lcom/didi/common/config/Preferences;

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/didi/common/config/Preferences;->instance:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/didi/common/config/Preferences;->instance:Lcom/didi/common/config/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2268
    invoke-virtual {p0}, Lcom/didi/common/config/Preferences;->reset()V

    .line 2269
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->clear()V

    .line 2270
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    if-eqz v0, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2275
    :cond_0
    return-void
.end method

.method public getActivityIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "activity_icon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()I
    .locals 3

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "activity_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getActivityString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "activity_name"

    const-string v2, "\u63a5\u9001\u673a"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertisementVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "coverinfo_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnnouncementVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 910
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "announcement_version"

    const-string v2, "3999944283"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "app_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppWatchStartTimesInDay()I
    .locals 3

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "appwatcher_start_times_in_day"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppWatchStartTimesInWeek()I
    .locals 3

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "appwatcher_start_times_in_week"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppWatcherDelayTime()I
    .locals 3

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "appwatcher_delaytime"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppWatcherListenFlag()Z
    .locals 3

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "appwatcher_listenflag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAppWatcherMaxRunTimesInDay()I
    .locals 3

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "appwatcher_maxruntimes_inday"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppWatcherMaxRunTimesInWeek()I
    .locals 3

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "appwatcher_maxruntimes_inweek"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getArrayCarBadComment()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 806
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v2, "car_bad_complaint"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 810
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getArrayCarCancelTripIconOption()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 883
    iget-object v2, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v3, "car_cancel_trip_icon_options"

    invoke-virtual {v2, v3, v1}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getArrayCarCancelTripTextOption()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 867
    iget-object v2, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v3, "car_cancel_trip_text_options"

    invoke-virtual {v2, v3, v1}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getArrayCarComplaintType()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-object v2, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v3, "car_complaint"

    invoke-virtual {v2, v3, v1}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    :goto_0
    return-object v1

    .line 777
    :cond_0
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getArrayCarGoodComment()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 790
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v2, "car_good_complaint"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 794
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBizFootBarShowTips()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarTaxiTip"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBizFootBarShowType()I
    .locals 3

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarTaxiTipType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBizGameH5Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarTaxiUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBizGameIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarTaxiTipIcon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBizShow4FootBar()Z
    .locals 3

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarTaxiType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCarAnnouncementCount()I
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_announcement_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCarAnnouncementEndTime()J
    .locals 3

    .prologue
    .line 954
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_announcement_end_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCarAnnouncementStartTime()J
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_announcement_start_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCarAnnouncementVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_announcement_version"

    const-string v2, "2353299186"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarAnnouncementWebUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_announcement_web_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarAutoPop()Z
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_auto_pop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCarBadCmtTips()Ljava/lang/String;
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_bad_comment_tips"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarCancelTripBookingTip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_cancel_trip_booking_tip"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarCancelTripRealtimeTip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 845
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_cancel_trip_realtime_tip"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarConfigOrderStatus()I
    .locals 3

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "p_order_get_req"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCarConfigPayResult()I
    .locals 3

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "p_pay_status_req"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCarConfigVersion()I
    .locals 3

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_config_version_int"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCarFirstGrabbedShowTip()Z
    .locals 3

    .prologue
    .line 899
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_first_grab_show_tip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCarHasAutoPopAnnouncement()Z
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_has_auto_pop_announcement"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCarLabels()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 633
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v2, "str_car_labels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 637
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCarOrderStatusSwitch()I
    .locals 3

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "p_get_order_status_spare_open"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCityListVersion()I
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "city_list_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getClientIdString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "cid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommonConfigVersion1()J
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "common_config_ver_1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCommonVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "common_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyAddr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "company_1_addr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyLatitude()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "company_1_lat"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyLongitude()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "company_1_lon"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "company_1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateOrderStyle()I
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "create_order_style"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentCity()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "current_city"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCityId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 369
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v2, "city_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, cityId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_0
    return-object v0
.end method

.method public getDDriveAnnouncementCount()I
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ddrive_announcement_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDDriveAnnouncementEndTime()J
    .locals 3

    .prologue
    .line 976
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ddrive_announcement_end_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDDriveAnnouncementStartTime()J
    .locals 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ddrive_announcement_start_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDDriveAnnouncementVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ddrive_announcement_version"

    const-string v2, "2353299186"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDDriveAnnouncementWebUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ddrive_announcement_web_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDDriveAutoPop()Z
    .locals 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ddrive_auto_pop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDDriveHasAutoPopAnnouncement()Z
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ddrive_has_auto_pop_announcement"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDiDiUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "didi_uuid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEgretGamePluginVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "egret_plugin_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEstimatePriceUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "estimate_price_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlierAnnouncementCount()I
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_announcement_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFlierAnnouncementEndTime()J
    .locals 3

    .prologue
    .line 998
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_announcement_end_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlierAnnouncementStartTime()J
    .locals 3

    .prologue
    .line 987
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_announcement_start_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlierAnnouncementVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_announcement_version"

    const-string v2, "2353299186"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlierAnnouncementWebUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_announcement_web_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlierAutoPop()Z
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_auto_pop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFlierHasAutoPopAnnouncement()Z
    .locals 3

    .prologue
    .line 676
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_has_auto_pop_announcement"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFlierMsg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlierName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarFoodIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarFoodIcon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarFoodTip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarFoodTip"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarFoodTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarFoodTitle"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarFoodUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarFoodUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarGameIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarGameIcon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarGameTip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarGameTip"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarGameTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarGameTitle"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarGameUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarGameUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarOldFoodTip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarOldFoodTip"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootbarOldGameTip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "footbarOldGameTip"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFoundConfigVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_conf_version"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFoundMenuConfigIsLoaded()Z
    .locals 3

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_menu_config_isloaded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFoundMenuH5Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_h5_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFoundMenuTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFoundVersion()I
    .locals 3

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGameFootBarShowTips()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_footbar_showtips"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameFootBarShowType()I
    .locals 3

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_footbar_showtype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGameH5Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_h5url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_icon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameMenuText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_menu_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_version"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuide()I
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "show_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHomeAddr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "home_1_addr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeLatitude()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "home_1_lat"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeLongitude()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "home_1_lon"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "home_1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeNotice()I
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "homenotice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIMInputState()I
    .locals 3

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "im_input_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIMUnreadFlag()Z
    .locals 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "im_unread_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInviteItemVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "invite_item_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInviteSwitchTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "invite_switch_title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInviteSwitchUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "invite_switch_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsNewFound()Z
    .locals 3

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "isShowFootBarTaxi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLatitudeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "lat"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayaGamePluginVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "laya_plugin_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitudeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "lng"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuBizFoodTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_submenu_one_title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuBizFoodUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_submenu_one_h5url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuBizGameIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_submenu_two_icon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuBizGameTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_submenu_two_title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuBizGameUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_submenu_two_h5url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuGameInfoShow()Z
    .locals 3

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_show_gameinfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMenuGameShowType()I
    .locals 3

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_show_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMenuShowGame()Z
    .locals 3

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "menu_show_game"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMessageHasNew()Z
    .locals 3

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "message_has_new"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMiPushRegId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "regid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyLat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "my_lat"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyLng()Ljava/lang/String;
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "my_lng"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenActivity()Z
    .locals 3

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "open_activity_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOrderCount()I
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "order_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOrderDelConfirm()Z
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "order_del_confirm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "phone"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtectShow()I
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "protect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPsngrId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "psngr_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "publicize"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushReConnConfigResult()Z
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "p_push_reconnect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getQqShareOpen()Z
    .locals 3

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "qq_share_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getQueryCarOrderStatus()I
    .locals 3

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "p_get_order_status_spare"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQzoneShareOpen()Z
    .locals 3

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "qzone_share_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRecentAppStartDay()I
    .locals 3

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "appwatcher_start_day"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRecentAppStartWeek()I
    .locals 3

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "appwatcher_start_week"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRootDomain()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1317
    iget-object v6, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v7, "root_domain"

    invoke-virtual {v6, v7, v5}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, s:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 1335
    :cond_0
    :goto_0
    return-object v4

    .line 1324
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 1327
    .local v4, strings:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1328
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1331
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #strings:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1332
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v5

    .line 1335
    goto :goto_0
.end method

.method public getServicePhone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "service_phone"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowFootBarFood()Z
    .locals 3

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "isShowFootBarFood"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowFootBarGame()Z
    .locals 3

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "isShowFootBarGame"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowWxAgentFlag()J
    .locals 3

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "car_wxagent_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmoothGoingFreguency()I
    .locals 3

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "smooth_going_frequency"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSmoothHomeFreguency()I
    .locals 3

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "smooth_home_frequency"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSoundsSwtich()Z
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "switch_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSwitcherPannel()I
    .locals 3

    .prologue
    .line 742
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "channel_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ttoken"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTokenLastTime()J
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "ttoken_last_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTabMemory()I
    .locals 3

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "default_tab_memory"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTaxiAnnouncementCount()I
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "taxi_announcement_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTaxiAnnouncementEndTime()J
    .locals 3

    .prologue
    .line 932
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "taxi_announcement_end_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTaxiAnnouncementStartTime()J
    .locals 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "taxi_announcement_start_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTaxiAnnouncementVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "taxi_announcement_version"

    const-string v2, "2353299186"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxiAnnouncementWebUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "taxi_announcement_web_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaxiAutoPop()Z
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "taxi_auto_pop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTaxiHasAutoPopAnnouncement()Z
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "taxi_has_auto_pop_announcement"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTaxiLabels()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 601
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v2, "str_taxi_labels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 605
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTaxiPreLabels()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 617
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v2, "str_taxi_pre_labels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 621
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThirdDomain()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1346
    iget-object v6, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v7, "third_domain"

    invoke-virtual {v6, v7, v5}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1347
    .local v3, s:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 1364
    :cond_0
    :goto_0
    return-object v4

    .line 1353
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 1355
    .local v4, strings:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1356
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1359
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #strings:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1360
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v5

    .line 1364
    goto :goto_0
.end method

.method public getTimeOffset()J
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "time_offset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicButtonText1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "buttonText1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicButtonText2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "buttonText2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicButtonUrl1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "buttonUrl1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicButtonUrl2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "buttonUrl2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicHomeUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "home_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicIconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "icon_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "topic_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceLogSegid()J
    .locals 3

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "tracelog_seqid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateLogTime()J
    .locals 3

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "update_log_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "service_url"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualStatus()I
    .locals 3

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "virtual_status"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVoucherPointFlag()I
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "vocher_point"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWaitingTipsUpdateTime()J
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "waiting_tips_update_time"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWanLiuEndtime()J
    .locals 4

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "wanliu_chris_end_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWanLiuStarttime()J
    .locals 4

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "wanliu_chris_start_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeiboShareOpen()Z
    .locals 3

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "weibo_share_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasCarPoolGuidShown()Z
    .locals 3

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "hasCarPoolGuideShown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasWaitIntroShown()Z
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "has_wait_intro_shown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAction()Z
    .locals 3

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "user_action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEmptyToken()Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFirstBoot()Z
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "isFirstBoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstClickVoice()Z
    .locals 4

    .prologue
    .line 2437
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v2, "isFirstClickVoice"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2439
    .local v0, isFirstClickVoice:Z
    return v0
.end method

.method public isFirstLoadDepartNotication()Z
    .locals 3

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "isFirstLoadDepartNotication"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstUseCarPool()Z
    .locals 3

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "isFirstUseCarPool"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFlierAbility()Z
    .locals 3

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "bill_ability"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFlierInvoiceSwitch()Z
    .locals 3

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "fast_car_invoice_switch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFlierOpen()Z
    .locals 3

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "flier_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGameShow4FootBar()Z
    .locals 3

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_show_footbar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInviteRedPoint()Z
    .locals 3

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "invite_red_point"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInviteSwitch()Z
    .locals 3

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "invite_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMenuGameRedPoint()Z
    .locals 3

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_show_redpoint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMenuGameShow()Z
    .locals 3

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "game_show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNewFoundUrl()Z
    .locals 3

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "is_new_found_url"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNewServerManageMent()Z
    .locals 3

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "server_management"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNoticationMessage()Z
    .locals 3

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "notify_center_is_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFootBarFood(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "isShowFootBarFood"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2073
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2074
    return-void
.end method

.method public isShowFootBarGame(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "isShowFootBarGame"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2127
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2128
    return-void
.end method

.method public isShowMenuBiz()Z
    .locals 3

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_menu_isshow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowMenuBizFood()Z
    .locals 3

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_submenu_one_isshow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowMenuBizGame()Z
    .locals 3

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "found_submenu_two_isshow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowShare()Z
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "show_share"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowedPreassign()Z
    .locals 3

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "show_preassign"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmoothOpen()Z
    .locals 3

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "driver_smooth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTopicOpen()Z
    .locals 3

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "topic_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2233
    invoke-virtual {p0, v3}, Lcom/didi/common/config/Preferences;->setUnFinishSign(I)V

    .line 2234
    invoke-virtual {p0, v2}, Lcom/didi/common/config/Preferences;->setToken(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {p0, v2}, Lcom/didi/common/config/Preferences;->setTToken(Ljava/lang/String;)V

    .line 2236
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->deleteAllItem(Landroid/content/Context;)V

    .line 2237
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/common/config/Preferences;->setCreateOrderTimes(J)V

    .line 2238
    invoke-virtual {p0, v2}, Lcom/didi/common/config/Preferences;->setHomeAddr(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p0, v2}, Lcom/didi/common/config/Preferences;->setHomeName(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {p0, v2}, Lcom/didi/common/config/Preferences;->setCompanyAddr(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p0, v2}, Lcom/didi/common/config/Preferences;->setCompanyName(Ljava/lang/String;)V

    .line 2242
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/didi/common/config/Preferences;->setHomeLatitude(Ljava/lang/String;)V

    .line 2243
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/didi/common/config/Preferences;->setHomeLongitude(Ljava/lang/String;)V

    .line 2244
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/didi/common/config/Preferences;->setCompanyLatitude(Ljava/lang/String;)V

    .line 2245
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/didi/common/config/Preferences;->setCompanyLongitude(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {p0, v4}, Lcom/didi/common/config/Preferences;->setHomeCityId(I)V

    .line 2247
    invoke-virtual {p0, v4}, Lcom/didi/common/config/Preferences;->setCompanyCityId(I)V

    .line 2248
    invoke-virtual {p0, v3}, Lcom/didi/common/config/Preferences;->setOrderCount(I)V

    .line 2249
    invoke-virtual {p0, v3}, Lcom/didi/common/config/Preferences;->setBadOrderCount(I)V

    .line 2250
    invoke-virtual {p0, v5}, Lcom/didi/common/config/Preferences;->setVirtualStatus(I)V

    .line 2251
    invoke-virtual {p0, v2}, Lcom/didi/common/config/Preferences;->setPsngrId(Ljava/lang/String;)V

    .line 2256
    invoke-virtual {p0, v5}, Lcom/didi/common/config/Preferences;->setVoucherPointFlag(I)V

    .line 2259
    invoke-virtual {p0, v3}, Lcom/didi/common/config/Preferences;->setFoundMenuConfigIsLoaded(Z)V

    .line 2261
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setUserInfo(Ljava/lang/String;)V

    .line 2262
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setUserRole(Ljava/lang/String;)V

    .line 2263
    invoke-static {v2}, Lcom/didi/beatles/model/role/BtsRoleInfo;->setInstance(Lcom/didi/beatles/model/role/BtsRoleInfo;)V

    .line 2264
    return-void
.end method

.method public saveAdvertisementVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "coverinfo_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 412
    return-void
.end method

.method public saveAnnouncementVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "announcement_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 906
    return-void
.end method

.method public saveCarAnnouncementCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_announcement_count"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 475
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 476
    return-void
.end method

.method public saveCarAnnouncementEndTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_announcement_end_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 949
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 950
    return-void
.end method

.method public saveCarAnnouncementStartTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_announcement_start_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 938
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 939
    return-void
.end method

.method public saveCarAnnouncementVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_announcement_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 527
    return-void
.end method

.method public saveCarAnnouncementWebUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "webUrl"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_announcement_web_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 444
    return-void
.end method

.method public saveCityListVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "city_list_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 548
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 549
    return-void
.end method

.method public saveDDriveAnnouncementCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "ddrive_announcement_count"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 480
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 481
    return-void
.end method

.method public saveDDriveAnnouncementEndTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "ddrive_announcement_end_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 971
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 972
    return-void
.end method

.method public saveDDriveAnnouncementStartTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "ddrive_announcement_start_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 960
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 961
    return-void
.end method

.method public saveDDriveAnnouncementVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "ddrive_announcement_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 538
    return-void
.end method

.method public saveDDriveAnnouncementWebUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "webUrl"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "ddrive_announcement_web_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 455
    return-void
.end method

.method public saveFlierAnnouncementCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "flier_announcement_count"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 494
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 495
    return-void
.end method

.method public saveFlierAnnouncementEndTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 992
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "flier_announcement_end_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 993
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 994
    return-void
.end method

.method public saveFlierAnnouncementStartTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "flier_announcement_start_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 982
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 983
    return-void
.end method

.method public saveFlierAnnouncementVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "flier_announcement_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 510
    return-void
.end method

.method public saveFlierAnnouncementWebUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "webUrl"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "flier_announcement_web_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 433
    return-void
.end method

.method public saveTaxiAnnouncementCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "taxi_announcement_count"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 465
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 466
    return-void
.end method

.method public saveTaxiAnnouncementEndTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "taxi_announcement_end_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 927
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 928
    return-void
.end method

.method public saveTaxiAnnouncementStartTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "taxi_announcement_start_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 916
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 917
    return-void
.end method

.method public saveTaxiAnnouncementVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "taxi_announcement_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 521
    return-void
.end method

.method public saveTaxiAnnouncementWebUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "webUrl"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "taxi_announcement_web_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 422
    return-void
.end method

.method public setAction(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "user_action"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1427
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1428
    return-void
.end method

.method public setActivityIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "activity_icon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1405
    return-void
.end method

.method public setActivityIconCar(Ljava/lang/String;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "activity_icon_car"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1416
    return-void
.end method

.method public setActivityId(I)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1382
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1383
    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "activity_name"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1394
    return-void
.end method

.method public setAppVesion(Ljava/lang/String;)V
    .locals 2
    .parameter "vesion"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1015
    return-void
.end method

.method public setAppWatchStartTimesInDay(I)V
    .locals 2
    .parameter "times"

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "appwatcher_start_times_in_day"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1585
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1586
    return-void
.end method

.method public setAppWatchStartTimesInWeek(I)V
    .locals 2
    .parameter "times"

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "appwatcher_start_times_in_week"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1574
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1575
    return-void
.end method

.method public setAppWatcherDelayTime(I)V
    .locals 2
    .parameter "delayTime"

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "appwatcher_delaytime"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1437
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1438
    return-void
.end method

.method public setAppWatcherListenFlag(Z)V
    .locals 2
    .parameter "isListener"

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "appwatcher_listenflag"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1464
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1465
    return-void
.end method

.method public setAppWatcherMaxRunTimesInDay(I)V
    .locals 2
    .parameter "dayTimes"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "appwatcher_maxruntimes_inday"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1446
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1447
    return-void
.end method

.method public setAppWatcherMaxRunTimesInWeek(I)V
    .locals 2
    .parameter "dayTimes"

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "appwatcher_maxruntimes_inweek"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1455
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1456
    return-void
.end method

.method public setBadOrderCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "bad_order_count"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 301
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 302
    return-void
.end method

.method public setBizFootBarShowTips(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarTaxiTip"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1771
    return-void
.end method

.method public setBizFootBarShowType(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarTaxiTipType"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1756
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1757
    return-void
.end method

.method public setBizGameH5Url(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarTaxiUrl"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1799
    return-void
.end method

.method public setBizGameIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarTaxiTipIcon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1785
    return-void
.end method

.method public setBizShow4FootBar(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarTaxiType"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1742
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1743
    return-void
.end method

.method public setCarAutoPop(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 704
    if-ne p1, v0, :cond_0

    .line 705
    .local v0, autoPop:Z
    :goto_0
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v2, "car_auto_pop"

    invoke-virtual {v1, v2, v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 706
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 707
    return-void

    .line 704
    .end local v0           #autoPop:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCarBadCmtTips(Ljava/lang/String;)V
    .locals 2
    .parameter "tips"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_bad_comment_tips"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 830
    return-void
.end method

.method public setCarBadComment(Ljava/lang/String;)V
    .locals 2
    .parameter "bad"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_bad_complaint"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 802
    return-void
.end method

.method public setCarCancelTripBookingTip(Ljava/lang/String;)V
    .locals 2
    .parameter "tips"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_cancel_trip_booking_tip"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 852
    return-void
.end method

.method public setCarCancelTripIconOption(Ljava/lang/String;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_cancel_trip_icon_options"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 879
    return-void
.end method

.method public setCarCancelTripRealtimeTip(Ljava/lang/String;)V
    .locals 2
    .parameter "tips"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_cancel_trip_realtime_tip"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 841
    return-void
.end method

.method public setCarCancelTripTextOption(Ljava/lang/String;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 861
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_cancel_trip_text_options"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 863
    return-void
.end method

.method public setCarCommentTips(Ljava/lang/String;)V
    .locals 2
    .parameter "tips"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_comment_tips"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 818
    return-void
.end method

.method public setCarComplaintType(Ljava/lang/String;)V
    .locals 2
    .parameter "complaint"

    .prologue
    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complaint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 764
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 767
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_complaint"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    goto :goto_0
.end method

.method public setCarConfigOrderStatus(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "p_order_get_req"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1035
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1036
    return-void
.end method

.method public setCarConfigPayResult(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "p_pay_status_req"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1046
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1047
    return-void
.end method

.method public setCarConfigVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_config_version_int"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1024
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1025
    return-void
.end method

.method public setCarFirstGrabbedShowTip(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_first_grab_show_tip"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 894
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 895
    return-void
.end method

.method public setCarGoodCmtTips(Ljava/lang/String;)V
    .locals 2
    .parameter "tips"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_good_comment_tips"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 824
    return-void
.end method

.method public setCarGoodComment(Ljava/lang/String;)V
    .locals 2
    .parameter "good"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_good_complaint"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 786
    return-void
.end method

.method public setCarHasAutoPopAnnouncement(Z)V
    .locals 2
    .parameter "hasShow"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_has_auto_pop_announcement"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 660
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 661
    return-void
.end method

.method public setCarInvoiceType(Ljava/lang/String;)V
    .locals 2
    .parameter "invoice"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_invoice"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 749
    return-void
.end method

.method public setCarLabels(Ljava/lang/String;)V
    .locals 2
    .parameter "labels"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "str_car_labels"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 629
    return-void
.end method

.method public setCarOrderStatusSwitch(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "\'p_get_order_status_spare_open"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1068
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1069
    return-void
.end method

.method public setCarPoolGuideShown(Z)V
    .locals 2
    .parameter "carPoolGuideShown"

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "hasCarPoolGuideShown"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2428
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2429
    return-void
.end method

.method public setClientIdString(Ljava/lang/String;)V
    .locals 2
    .parameter "cid"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "cid"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1123
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 148
    return-void
.end method

.method public setCommonConfigVersion1(J)V
    .locals 2
    .parameter "version"

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "common_config_ver_1"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 1004
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1005
    return-void
.end method

.method public setCommonVresion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "common_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1161
    return-void
.end method

.method public setCompanyAddr(Ljava/lang/String;)V
    .locals 2
    .parameter "addr"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "company_1_addr"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 247
    return-void
.end method

.method public setCompanyCityId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "company_1_id"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 218
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 219
    return-void
.end method

.method public setCompanyLatitude(Ljava/lang/String;)V
    .locals 2
    .parameter "lat"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "company_1_lat"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 236
    return-void
.end method

.method public setCompanyLongitude(Ljava/lang/String;)V
    .locals 2
    .parameter "lon"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "company_1_lon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 225
    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "company_1"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 208
    return-void
.end method

.method public setCreateOrderStyle(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "create_order_style"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 348
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 349
    return-void
.end method

.method public setCreateOrderTimes(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "create_order_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 326
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 327
    return-void
.end method

.method public setCurrentCity(Ljava/lang/String;)V
    .locals 3
    .parameter "city"

    .prologue
    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mPref:Lcom/didi/common/config/preference/PreferenceProxy;

    const-string v1, "current_city"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "current_city"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 310
    :cond_0
    return-void
.end method

.method public setCurrentCityId(Ljava/lang/String;)V
    .locals 2
    .parameter "cityId"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "city_id"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 365
    return-void
.end method

.method public setDDriveAutoPop(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 716
    if-ne p1, v0, :cond_0

    .line 717
    .local v0, autoPop:Z
    :goto_0
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v2, "ddrive_auto_pop"

    invoke-virtual {v1, v2, v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 718
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 719
    return-void

    .line 716
    .end local v0           #autoPop:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDDriveHasAutoPopAnnouncement(Z)V
    .locals 2
    .parameter "hasShow"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "ddrive_has_auto_pop_announcement"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 671
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 672
    return-void
.end method

.method public setDiDiUUID(Ljava/lang/String;)V
    .locals 2
    .parameter "uuid"

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "didi_uuid"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2286
    return-void
.end method

.method public setDriverIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "icon"

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "driver_icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2514
    return-void
.end method

.method public setDynamicPriceTips(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "dynamic_price_tips"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 759
    return-void
.end method

.method public setEgretGamePluginName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "egret_plugin_name"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2197
    return-void
.end method

.method public setEgretGamePluginVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "egret_plugin_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2187
    return-void
.end method

.method public setEgretGamePluginZIPUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "egret_plugin_zip_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2204
    return-void
.end method

.method public setEstimatePriceUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "estimate_price_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 754
    return-void
.end method

.method public setFirstBoot(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "isFirstBoot"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 263
    return-void
.end method

.method public setFirstClickVoide(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "isFirstClickVoice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2444
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2445
    return-void
.end method

.method public setFlierAbility(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "bill_ability"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2383
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2384
    return-void
.end method

.method public setFlierAutoPop(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 728
    if-ne p1, v0, :cond_0

    .line 729
    .local v0, autoPop:Z
    :goto_0
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v2, "flier_auto_pop"

    invoke-virtual {v1, v2, v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 731
    return-void

    .line 728
    .end local v0           #autoPop:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlierHasAutoPopAnnouncement(Z)V
    .locals 2
    .parameter "hasShow"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "flier_has_auto_pop_announcement"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 682
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 683
    return-void
.end method

.method public setFlierInvoiceSwitch(I)V
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v0, 0x1

    .line 2409
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v2, "fast_car_invoice_switch"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2410
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2411
    return-void

    .line 2409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlierMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2402
    return-void
.end method

.method public setFlierName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "flier_name"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2393
    return-void
.end method

.method public setFlierOpen(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "flier_open"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2374
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2375
    return-void
.end method

.method public setFootbarFoodIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "tip"

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarFoodIcon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2110
    return-void
.end method

.method public setFootbarFoodTip(Ljava/lang/String;)V
    .locals 2
    .parameter "tip"

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarFoodTip"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2092
    return-void
.end method

.method public setFootbarFoodTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarFoodTitle"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2083
    return-void
.end method

.method public setFootbarFoodUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarFoodUrl"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2119
    return-void
.end method

.method public setFootbarGameIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "tip"

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarGameIcon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2164
    return-void
.end method

.method public setFootbarGameTip(Ljava/lang/String;)V
    .locals 2
    .parameter "tip"

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarGameTip"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2146
    return-void
.end method

.method public setFootbarGameTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarGameTitle"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2137
    return-void
.end method

.method public setFootbarGameUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarGameUrl"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2173
    return-void
.end method

.method public setFootbarOldFoodTip(Ljava/lang/String;)V
    .locals 2
    .parameter "tip"

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarOldFoodTip"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2101
    return-void
.end method

.method public setFootbarOldGameTip(Ljava/lang/String;)V
    .locals 2
    .parameter "tip"

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "footbarOldGameTip"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2155
    return-void
.end method

.method public setFoundConfigVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_conf_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1718
    return-void
.end method

.method public setFoundMenuConfigIsLoaded(Z)V
    .locals 2
    .parameter "isLoaded"

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_menu_config_isloaded"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1819
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1820
    return-void
.end method

.method public setFoundMenuH5Url(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_h5_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1884
    return-void
.end method

.method public setFoundMenuIsShow(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_menu_isshow"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1836
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1837
    return-void
.end method

.method public setFoundMenuTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_title"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1871
    return-void
.end method

.method public setFoundVersion(I)V
    .locals 2
    .parameter "foundVersion"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1149
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1150
    return-void
.end method

.method public setGameFootBarShowTips(Ljava/lang/String;)V
    .locals 2
    .parameter "tips"

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_footbar_showtips"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2037
    return-void
.end method

.method public setGameH5Url(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_h5url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1638
    return-void
.end method

.method public setGameID(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_id"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1625
    return-void
.end method

.method public setGameIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_icon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1664
    return-void
.end method

.method public setGameMenuText(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_menu_text"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2051
    return-void
.end method

.method public setGameShow4FootBar(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_show_footbar"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2004
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2005
    return-void
.end method

.method public setGameTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_title"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1651
    return-void
.end method

.method public setGameVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1612
    return-void
.end method

.method public setGuide(I)V
    .locals 2
    .parameter "cnt"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "show_guide"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 269
    return-void
.end method

.method public setHomeAddr(Ljava/lang/String;)V
    .locals 2
    .parameter "addr"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "home_1_addr"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 186
    return-void
.end method

.method public setHomeCityId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "home_1_id"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 157
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 158
    return-void
.end method

.method public setHomeLatitude(Ljava/lang/String;)V
    .locals 2
    .parameter "lat"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "home_1_lat"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 175
    return-void
.end method

.method public setHomeLongitude(Ljava/lang/String;)V
    .locals 2
    .parameter "lon"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "home_1_lon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 164
    return-void
.end method

.method public setHomeName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "home_1"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 197
    return-void
.end method

.method public setHomeNotice()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "homenotice"

    invoke-virtual {p0}, Lcom/didi/common/config/Preferences;->getHomeNotice()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public setIMInputState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "im_input_state"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1219
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1220
    return-void
.end method

.method public setIMUnreadFlag(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "im_unread_flag"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1185
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1186
    return-void
.end method

.method public setInviteItemVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "ver"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "invite_item_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1271
    return-void
.end method

.method public setInviteRedPoint(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "invite_red_point"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1280
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1281
    return-void
.end method

.method public setInviteSwitch(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "invite_switch"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1238
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1239
    return-void
.end method

.method public setInviteSwitchTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "invite_switch_title"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1250
    return-void
.end method

.method public setInviteSwitchUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "invite_switch_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1261
    return-void
.end method

.method public setIsFirstLoadDepartNoticatoin(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2479
    const-string v0, "maplistener"

    const-string v1, "setIsFirstLoadDepartNoticatoin"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "isFirstLoadDepartNotication"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2481
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2482
    return-void
.end method

.method public setIsFirstUseCarPool(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "isFirstUseCarPool"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2463
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2464
    return-void
.end method

.method public setIsNewFound(Z)Z
    .locals 2
    .parameter "isNew"

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "isShowFootBarTaxi"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1727
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1728
    return p1
.end method

.method public setIsNewFoundUrl(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "is_new_found_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1853
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1854
    return-void
.end method

.method public setIsShowShare(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "show_share"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 402
    return-void
.end method

.method public setLatitudeString(Ljava/lang/String;)V
    .locals 2
    .parameter "lat"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "lat"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 569
    return-void
.end method

.method public setLayaGamePluginName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "Laya_plugin_name"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2223
    return-void
.end method

.method public setLayaGamePluginVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "laya_plugin_version"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2213
    return-void
.end method

.method public setLayaGamePluginZIPUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "Laya_plugin_zip_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2230
    return-void
.end method

.method public setLongitudeString(Ljava/lang/String;)V
    .locals 2
    .parameter "lng"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "lng"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 578
    return-void
.end method

.method public setMenuBizFoodIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_submenu_one_icon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1923
    return-void
.end method

.method public setMenuBizFoodTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_submenu_one_title"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1910
    return-void
.end method

.method public setMenuBizFoodUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_submenu_one_h5url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1897
    return-void
.end method

.method public setMenuBizGameIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_submenu_two_icon"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1992
    return-void
.end method

.method public setMenuBizGameTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_submenu_two_title"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1966
    return-void
.end method

.method public setMenuBizGameUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_submenu_two_h5url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1979
    return-void
.end method

.method public setMenuGameInfoShow(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_show_gameinfo"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1690
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1691
    return-void
.end method

.method public setMenuGameRedPoint(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_show_redpoint"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1676
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1677
    return-void
.end method

.method public setMenuGameShow(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_show"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1703
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1704
    return-void
.end method

.method public setMenuGameShowType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "game_show_type"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 2018
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2019
    return-void
.end method

.method public setMenuShowGame(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "menu_show_game"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2064
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2065
    return-void
.end method

.method public setMessageHasNew(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "message_has_new"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1228
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1229
    return-void
.end method

.method public setMiPushRegId(Ljava/lang/String;)V
    .locals 2
    .parameter "regId"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "regid"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1130
    return-void
.end method

.method public setMyLat(Ljava/lang/String;)V
    .locals 2
    .parameter "lat"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "my_lat"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 391
    return-void
.end method

.method public setMyLng(Ljava/lang/String;)V
    .locals 2
    .parameter "lng"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "my_lng"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 380
    return-void
.end method

.method public setNewServerManageMent(Z)V
    .locals 2
    .parameter "serverManageMent"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "server_management"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1498
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1499
    return-void
.end method

.method public setNotUseLocalCache(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "not_use_local_cache"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1421
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1422
    return-void
.end method

.method public setNoticationMessage(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "notify_center_is_open"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1290
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1291
    return-void
.end method

.method public setOpenActivity(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "open_activity_flag"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1370
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1371
    return-void
.end method

.method public setOrderCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "order_count"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 290
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 291
    return-void
.end method

.method public setOrderDelConfirm(Z)V
    .locals 2
    .parameter "confirmed"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "order_del_confirm"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 591
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 64
    return-void
.end method

.method public setProtectShow(I)V
    .locals 2
    .parameter "show"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "protect"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 107
    return-void
.end method

.method public setPsngrId(Ljava/lang/String;)V
    .locals 2
    .parameter "psngrId"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "psngr_id"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 116
    return-void
.end method

.method public setPublicize(Ljava/lang/String;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "publicize"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2365
    return-void
.end method

.method public setPushReConnConfigResult(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "p_push_reconnect"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1079
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1080
    return-void
.end method

.method public setQqShareOpen(Z)V
    .locals 2
    .parameter "qqShareConfig"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "qq_share_open"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1517
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1518
    return-void
.end method

.method public setQueryCarOrderStatus(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "\'p_get_order_status_spare"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1057
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1058
    return-void
.end method

.method public setQzoneShareOpen(Z)V
    .locals 2
    .parameter "qqShareConfig"

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "qzone_share_open"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1536
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1537
    return-void
.end method

.method public setRecentAppStartDay(I)V
    .locals 2
    .parameter "day"

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "appwatcher_start_day"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1474
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1475
    return-void
.end method

.method public setRecentAppStartWeek(I)V
    .locals 2
    .parameter "week"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "appwatcher_start_week"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1484
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1485
    return-void
.end method

.method public setRootDomain(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "root_domain"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1313
    return-void
.end method

.method public setServicePhone(Ljava/lang/String;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "service_phone"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 121
    return-void
.end method

.method public setShowMenuBizFood(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_submenu_one_isshow"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1931
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1932
    return-void
.end method

.method public setShowMenuBizGame(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "found_submenu_two_isshow"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1948
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1949
    return-void
.end method

.method public setShowPreassign(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "show_preassign"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1300
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1301
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 2
    .parameter "sid"

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1172
    return-void
.end method

.method public setSmooth(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "driver_smooth"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2486
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2487
    return-void
.end method

.method public setSmoothGoingFrequency(I)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "smooth_going_frequency"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 2504
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2505
    return-void
.end method

.method public setSmoothHomeFrequency(I)V
    .locals 2
    .parameter "b"

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "smooth_home_frequency"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 2495
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2496
    return-void
.end method

.method public setSoundsSwitch(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "switch_state"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 333
    return-void
.end method

.method public setSwitcherPannel(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 734
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 735
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result p1

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "channel_index"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 738
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 739
    return-void
.end method

.method public setTToken(Ljava/lang/String;)V
    .locals 2
    .parameter "tticket"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "ttoken"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 86
    return-void
.end method

.method public setTTokenLastTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "ttoken_last_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 97
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 98
    return-void
.end method

.method public setTabMemory(I)V
    .locals 2
    .parameter "memory"

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "default_tab_memory"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1596
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1597
    return-void
.end method

.method public setTaxiAutoPop(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 692
    if-ne p1, v0, :cond_0

    .line 693
    .local v0, autoPop:Z
    :goto_0
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v2, "taxi_auto_pop"

    invoke-virtual {v1, v2, v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 694
    iget-object v1, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 695
    return-void

    .line 692
    .end local v0           #autoPop:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTaxiHasAutoPopAnnouncement(Z)V
    .locals 2
    .parameter "hasShow"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "taxi_has_auto_pop_announcement"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 649
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 650
    return-void
.end method

.method public setTaxiLabels(Ljava/lang/String;)V
    .locals 2
    .parameter "labels"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "str_taxi_labels"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 597
    return-void
.end method

.method public setTaxiPreLabels(Ljava/lang/String;)V
    .locals 2
    .parameter "labels"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "str_taxi_pre_labels"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 613
    return-void
.end method

.method public setThirdDomain(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "third_domain"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1342
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 73
    return-void
.end method

.method public setTopicButtonText1(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "buttonText1"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2311
    return-void
.end method

.method public setTopicButtonText2(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "buttonText2"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2321
    return-void
.end method

.method public setTopicButtonUrl1(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "buttonUrl1"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2316
    return-void
.end method

.method public setTopicButtonUrl2(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "buttonUrl2"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2326
    return-void
.end method

.method public setTopicHomeUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "home"

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "home_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2347
    return-void
.end method

.method public setTopicIconUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "icon_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2352
    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "topic_name"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2302
    return-void
.end method

.method public setTopicOpen(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "topic_open"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 2292
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 2293
    return-void
.end method

.method public setTraceLogSeqid(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "tracelog_seqid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 1090
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1091
    return-void
.end method

.method public setUnFinishSign(I)V
    .locals 2
    .parameter "show"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "unfinish"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 320
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 321
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "service_url"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 55
    return-void
.end method

.method public setVirtualStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "virtual_status"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1138
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1139
    return-void
.end method

.method public setVoucherPointFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "vocher_point"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 274
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 275
    return-void
.end method

.method public setWaitIntroShown()V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "has_wait_intro_shown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 564
    return-void
.end method

.method public setWanLiuEndtime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "wanliu_chris_end_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 1205
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1206
    return-void
.end method

.method public setWanLiuStarttime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "wanliu_chris_start_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putLong(Ljava/lang/String;J)V

    .line 1193
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1194
    return-void
.end method

.method public setWeiboShareOpen(Z)V
    .locals 2
    .parameter "weiboShareConfig"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "weibo_share_open"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putBoolean(Ljava/lang/String;Z)V

    .line 1559
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1560
    return-void
.end method

.method public setWxAgentFlag(I)V
    .locals 2
    .parameter "isOpen"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    const-string v1, "car_wxagent_flag"

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->putInt(Ljava/lang/String;I)V

    .line 1111
    iget-object v0, p0, Lcom/didi/common/config/Preferences;->mEditor:Lcom/didi/common/config/preference/PreferenceEditorProxy;

    invoke-virtual {v0}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commit()V

    .line 1112
    return-void
.end method

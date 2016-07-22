.class public Lcom/didi/car/config/CarPreferences;
.super Ljava/lang/Object;
.source "CarPreferences.java"


# static fields
.field private static instance:Lcom/didi/car/config/CarPreferences;

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

    sput-object v0, Lcom/didi/car/config/CarPreferences;->instance:Lcom/didi/car/config/CarPreferences;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/car/config/CarPreferences;->mLogout:Z

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

    const-string v1, "car_preferences"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/base/DidiApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/config/CarPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/didi/car/config/CarPreferences;
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/didi/car/config/CarPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/car/config/CarPreferences;->instance:Lcom/didi/car/config/CarPreferences;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/didi/car/config/CarPreferences;

    invoke-direct {v0}, Lcom/didi/car/config/CarPreferences;-><init>()V

    sput-object v0, Lcom/didi/car/config/CarPreferences;->instance:Lcom/didi/car/config/CarPreferences;

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/didi/car/config/CarPreferences;->instance:Lcom/didi/car/config/CarPreferences;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/didi/car/config/CarPreferences;->instance:Lcom/didi/car/config/CarPreferences;
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
.method public getCarConfigLevelType()I
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "car_config_leveltype"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCarLevelType(I)I
    .locals 3
    .parameter "levelId"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "car_level_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCarPollDynamicPriceTime()I
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "estimate_price_default_time"

    const/16 v2, 0x78

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEstimatePriceThreshold()I
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "estimate_price_threshold"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFlierConfigLevelType()I
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "flier_config_leveltype"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFlierPollDynamicPriceTime()I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "estimate_price_fast_car_time"

    const/16 v2, 0x78

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setCarConfigLevelType(I)V
    .locals 2
    .parameter "levelType"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "car_config_leveltype"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public setCarLevelType(II)V
    .locals 3
    .parameter "levelId"
    .parameter "levelType"

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarLevelType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " levelType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "car_level_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public setCarPollDynamicPriceTime(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "estimate_price_default_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public setEstimatePriceThreshold(I)V
    .locals 2
    .parameter "number"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "estimate_price_threshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public setFlierConfigLevelType(I)V
    .locals 2
    .parameter "levelType"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "flier_config_leveltype"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public setFlierPollDynamicPriceTime(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "estimate_price_fast_car_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    iget-object v0, p0, Lcom/didi/car/config/CarPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

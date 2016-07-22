.class public Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
.super Ljava/lang/Object;
.source "City.java"


# instance fields
.field public areacode:Ljava/lang/String;

.field public curSize:J

.field public curVersion:I

.field public haveOfflineData:Z

.field public mState:I

.field public name:Ljava/lang/String;

.field public pinyin:Ljava/lang/String;

.field public provinceName:Ljava/lang/String;

.field public targetSize:J

.field public targetVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 72
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    if-nez v1, :cond_1

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 77
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;

    .line 77
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHaveOfflineData()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->haveOfflineData:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

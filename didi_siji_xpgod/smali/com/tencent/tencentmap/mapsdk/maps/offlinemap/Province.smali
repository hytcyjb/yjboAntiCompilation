.class public Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;
.super Ljava/lang/Object;
.source "Province.java"


# instance fields
.field public haveOfflineData:Z

.field public listCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/City;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public pinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;

    if-nez v1, :cond_1

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;

    .line 50
    .local v0, other:Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHaveOfflineData()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->haveOfflineData:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/offlinemap/Province;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

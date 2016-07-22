.class public Lcom/didi/ddrive/model/Driver;
.super Ljava/lang/Object;
.source "Driver.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public did:J

.field public drivingAge:I

.field public drivingCount:I

.field public identityUrl:Ljava/lang/String;

.field public lat:D

.field public licenseUrl:Ljava/lang/String;

.field public lng:D

.field public mob:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public stars:F

.field public tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public thumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/model/Driver;->tags:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public appendBriefInfo(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-wide v0, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->did:J

    iput-wide v0, p0, Lcom/didi/ddrive/model/Driver;->did:J

    .line 40
    iget v0, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->driveringAge:I

    iput v0, p0, Lcom/didi/ddrive/model/Driver;->drivingAge:I

    .line 41
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->headTitleUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/ddrive/model/Driver;->thumb:Ljava/lang/String;

    .line 42
    iget v0, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->driveringCount:I

    iput v0, p0, Lcom/didi/ddrive/model/Driver;->drivingCount:I

    .line 43
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->mob:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/ddrive/model/Driver;->mob:Ljava/lang/String;

    .line 44
    iget v0, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->starLevel:F

    iput v0, p0, Lcom/didi/ddrive/model/Driver;->stars:F

    .line 45
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/ddrive/model/Driver;->name:Ljava/lang/String;

    .line 47
    :cond_0
    return-void
.end method

.method public appendDetalInfo(Lcom/didi/ddrive/net/http/response/DriverDetailInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->driverLicenseUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/ddrive/model/Driver;->licenseUrl:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->identityUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/ddrive/model/Driver;->identityUrl:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->tags:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/didi/ddrive/model/Driver;->tags:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->tags:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public updateLocation(DD)V
    .locals 0
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/didi/ddrive/model/Driver;->lat:D

    .line 61
    iput-wide p3, p0, Lcom/didi/ddrive/model/Driver;->lng:D

    .line 62
    return-void
.end method

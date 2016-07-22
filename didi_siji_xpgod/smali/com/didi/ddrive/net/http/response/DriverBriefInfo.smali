.class public Lcom/didi/ddrive/net/http/response/DriverBriefInfo;
.super Ljava/lang/Object;
.source "DriverBriefInfo.java"


# instance fields
.field public did:J

.field public driveringAge:I

.field public driveringCount:I

.field public headTitleUrl:Ljava/lang/String;

.field public mob:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public starLevel:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toDriver()Lcom/didi/ddrive/model/Driver;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/didi/ddrive/model/Driver;

    invoke-direct {v0}, Lcom/didi/ddrive/model/Driver;-><init>()V

    .line 26
    .local v0, driver:Lcom/didi/ddrive/model/Driver;
    invoke-virtual {v0, p0}, Lcom/didi/ddrive/model/Driver;->appendBriefInfo(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V

    .line 27
    return-object v0
.end method

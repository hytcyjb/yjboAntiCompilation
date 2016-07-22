.class public Lcom/didi/ddrive/net/http/response/OrderDetailInfo;
.super Ljava/lang/Object;
.source "OrderDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/response/OrderDetailInfo$DrivingRoad;
    }
.end annotation


# static fields
.field public static final CHANNEL_DIDI:I = 0x2


# instance fields
.field public cancelType:I

.field public channel:I

.field public driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

.field public drivingRoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/OrderDetailInfo$DrivingRoad;",
            ">;"
        }
    .end annotation
.end field

.field public endLat:D

.field public endLng:D

.field public endPoiAddress:Ljava/lang/String;

.field public endPoiName:Ljava/lang/String;

.field public isLimitAction:I

.field public orderState:I

.field public pMob:Ljava/lang/String;

.field public pName:Ljava/lang/String;

.field public paiedFee:D

.field public payState:I

.field public payType:I

.field public pbTime:J

.field public pid:J

.field public star:I

.field public startLat:D

.field public startLng:D

.field public startPoiAddress:Ljava/lang/String;

.field public startPoiName:Ljava/lang/String;

.field public totalFee:D

.field public voucherAmount:D

.field public voucherId:J

.field public waitTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;->channel:I

    .line 61
    return-void
.end method

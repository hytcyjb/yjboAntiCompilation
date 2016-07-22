.class public Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;
.super Ljava/lang/Object;
.source "DriveSendOrderRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.publish"
    apiVersion = "1.0.0"
.end annotation


# static fields
.field public static final CHANNEL_DIDI:I = 0x2


# instance fields
.field public channel:I

.field public default_start_source:Ljava/lang/String;

.field public endLat:D

.field public endLng:D

.field public endPoiAddress:Ljava/lang/String;

.field public endPoiName:Ljava/lang/String;

.field public modify_start_source:Ljava/lang/String;

.field public otherFee:D

.field public pid:J

.field public publishLat:D

.field public publishLng:D

.field public startLat:D

.field public startLng:D

.field public startPoiAddress:Ljava/lang/String;

.field public startPoiName:Ljava/lang/String;

.field public voucherId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->channel:I

    return-void
.end method

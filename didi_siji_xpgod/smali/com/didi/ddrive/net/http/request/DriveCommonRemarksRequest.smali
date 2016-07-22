.class public Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;
.super Ljava/lang/Object;
.source "DriveCommonRemarksRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.i.getTags"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field private bizType:I

.field private cityId:I

.field private star:I

.field private userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;->bizType:I

    return v0
.end method

.method public getCityId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;->cityId:I

    return v0
.end method

.method public getStar()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;->star:I

    return v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;->userType:I

    return v0
.end method

.method public setBizType(I)V
    .locals 0
    .parameter "bizType"

    .prologue
    .line 19
    iput p1, p0, Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;->bizType:I

    .line 20
    return-void
.end method

.method public setCityId(I)V
    .locals 0
    .parameter "cityId"

    .prologue
    .line 27
    iput p1, p0, Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;->cityId:I

    .line 28
    return-void
.end method

.method public setStar(I)V
    .locals 0
    .parameter "star"

    .prologue
    .line 43
    iput p1, p0, Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;->star:I

    .line 44
    return-void
.end method

.method public setUserType(I)V
    .locals 0
    .parameter "userType"

    .prologue
    .line 35
    iput p1, p0, Lcom/didi/ddrive/net/http/request/DriveCommonRemarksRequest;->userType:I

    .line 36
    return-void
.end method

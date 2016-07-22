.class public Lcom/didi/ddrive/net/http/response/DriveComplaintResponse;
.super Lcom/didi/ddrive/net/http/ResponseBean;
.source "DriveComplaintResponse.java"


# instance fields
.field private waitFee:D

.field private waitTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/ddrive/net/http/ResponseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getWaitFee()D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/response/DriveComplaintResponse;->waitFee:D

    return-wide v0
.end method

.method public getWaitTime()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/response/DriveComplaintResponse;->waitTime:J

    return-wide v0
.end method

.method public setWaitFee(D)V
    .locals 0
    .parameter "waitFee"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/response/DriveComplaintResponse;->waitFee:D

    .line 31
    return-void
.end method

.method public setWaitTime(J)V
    .locals 0
    .parameter "waitTime"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/response/DriveComplaintResponse;->waitTime:J

    .line 23
    return-void
.end method

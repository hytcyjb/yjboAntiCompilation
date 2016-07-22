.class public Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;
.super Ljava/lang/Object;
.source "DrivePrePriceRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.didiEstimateFee"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public elat:D

.field public elng:D

.field public pid:J

.field public slat:D

.field public slng:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

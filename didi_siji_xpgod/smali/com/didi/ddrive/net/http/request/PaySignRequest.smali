.class public Lcom/didi/ddrive/net/http/request/PaySignRequest;
.super Ljava/lang/Object;
.source "PaySignRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.p.u.onlinePay"
    apiVersion = "1.0.0"
    https = true
.end annotation


# instance fields
.field public clientIp:Ljava/lang/String;

.field public lat:D

.field public lng:D

.field public money:D

.field public oid:J

.field public payChannel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

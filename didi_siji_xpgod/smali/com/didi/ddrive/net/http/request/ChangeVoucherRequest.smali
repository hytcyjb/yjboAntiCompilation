.class public Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;
.super Ljava/lang/Object;
.source "ChangeVoucherRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.p.u.changeVoucher"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public orderId:J

.field public voucherId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

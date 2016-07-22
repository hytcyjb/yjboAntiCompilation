.class public Lcom/didi/ddrive/net/http/request/OrderBillRequest;
.super Ljava/lang/Object;
.source "OrderBillRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.p.u.queryOrderBill"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public orderId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

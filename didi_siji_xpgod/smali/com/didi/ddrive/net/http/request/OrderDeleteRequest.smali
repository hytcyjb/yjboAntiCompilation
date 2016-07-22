.class public Lcom/didi/ddrive/net/http/request/OrderDeleteRequest;
.super Ljava/lang/Object;
.source "OrderDeleteRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.batchDeleteOrder"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public orderList:Ljava/lang/String;

.field public pid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

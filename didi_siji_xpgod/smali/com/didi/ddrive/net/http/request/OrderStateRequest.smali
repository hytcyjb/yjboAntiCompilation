.class public Lcom/didi/ddrive/net/http/request/OrderStateRequest;
.super Ljava/lang/Object;
.source "OrderStateRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.status"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public oid:J

.field public pid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
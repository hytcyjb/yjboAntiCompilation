.class public Lcom/didi/ddrive/net/http/request/DriveCurTripOrderRequest;
.super Ljava/lang/Object;
.source "DriveCurTripOrderRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.history"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public number:I

.field public oid:J

.field public pid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

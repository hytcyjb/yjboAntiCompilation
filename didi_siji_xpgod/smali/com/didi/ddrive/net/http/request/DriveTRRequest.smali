.class public Lcom/didi/ddrive/net/http/request/DriveTRRequest;
.super Ljava/lang/Object;
.source "DriveTRRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.history"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public num:I

.field public oid:J

.field public pid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

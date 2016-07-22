.class public Lcom/didi/ddrive/net/http/request/ComplaintRequest;
.super Ljava/lang/Object;
.source "ComplaintRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.complain"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public context:Ljava/lang/String;

.field public lat:D

.field public lng:D

.field public needCancel:I

.field public oid:J

.field public pid:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

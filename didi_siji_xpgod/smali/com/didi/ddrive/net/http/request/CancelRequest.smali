.class public Lcom/didi/ddrive/net/http/request/CancelRequest;
.super Ljava/lang/Object;
.source "CancelRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.cancel"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public oid:J

.field public pid:J

.field public reason:Ljava/lang/String;

.field public reasonType:J

.field public when:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/ddrive/net/http/request/CancelRequest;->reasonType:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/net/http/request/CancelRequest;->reason:Ljava/lang/String;

    return-void
.end method

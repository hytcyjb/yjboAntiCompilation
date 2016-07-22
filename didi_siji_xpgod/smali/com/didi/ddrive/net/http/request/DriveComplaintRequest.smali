.class public Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;
.super Ljava/lang/Object;
.source "DriveComplaintRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.complain"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field private context:Ljava/lang/String;

.field private needCancel:I

.field private oid:J

.field private pid:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedCancel()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->needCancel:I

    return v0
.end method

.method public getOid()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->oid:J

    return-wide v0
.end method

.method public getPid()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->pid:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->type:I

    return v0
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->context:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNeedCancel(I)V
    .locals 0
    .parameter "needCancel"

    .prologue
    .line 46
    iput p1, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->needCancel:I

    .line 47
    return-void
.end method

.method public setOid(J)V
    .locals 0
    .parameter "oid"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->oid:J

    .line 29
    return-void
.end method

.method public setPid(J)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->pid:J

    .line 23
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 40
    iput p1, p0, Lcom/didi/ddrive/net/http/request/DriveComplaintRequest;->type:I

    .line 41
    return-void
.end method

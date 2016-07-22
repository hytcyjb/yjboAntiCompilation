.class public Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;
.super Ljava/lang/Object;
.source "DriveAddRemarkRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.comment"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field private context:Ljava/lang/String;

.field private lat:D

.field private lng:D

.field private oid:J

.field private pid:J

.field private star:I

.field private tagId:Ljava/lang/String;


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
    .line 35
    iget-object v0, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->lng:D

    return-wide v0
.end method

.method public getOid()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->oid:J

    return-wide v0
.end method

.method public getPid()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->pid:J

    return-wide v0
.end method

.method public getStar()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->star:I

    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->context:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setLat(D)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->lat:D

    .line 57
    return-void
.end method

.method public setLng(D)V
    .locals 0
    .parameter "lng"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->lng:D

    .line 63
    return-void
.end method

.method public setOid(J)V
    .locals 0
    .parameter "oid"

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->oid:J

    .line 25
    return-void
.end method

.method public setPid(J)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->pid:J

    .line 45
    return-void
.end method

.method public setStar(I)V
    .locals 0
    .parameter "star"

    .prologue
    .line 50
    iput p1, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->star:I

    .line 51
    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0
    .parameter "tagId"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/ddrive/net/http/request/DriveAddRemarkRequest;->tagId:Ljava/lang/String;

    .line 32
    return-void
.end method

.class public Lcom/didi/ddrive/net/http/request/ShareContentRequest;
.super Ljava/lang/Object;
.source "ShareContentRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.m.v.gb.getContent"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public lat:D

.field public lng:D

.field public param:Ljava/lang/String;

.field public pid:J

.field public spos:I

.field public stype:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/ddrive/net/http/request/ShareContentRequest;->stype:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/didi/ddrive/net/http/request/ShareContentRequest;->spos:I

    return-void
.end method

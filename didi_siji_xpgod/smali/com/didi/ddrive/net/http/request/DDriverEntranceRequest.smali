.class public Lcom/didi/ddrive/net/http/request/DDriverEntranceRequest;
.super Ljava/lang/Object;
.source "DDriverEntranceRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.m.v.bo.blockedOutDaiJ"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public action:I

.field public lat:D

.field public lng:D

.field public pid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/ddrive/net/http/request/DDriverEntranceRequest;->action:I

    return-void
.end method

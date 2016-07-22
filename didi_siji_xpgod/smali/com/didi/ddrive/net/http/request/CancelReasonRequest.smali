.class public Lcom/didi/ddrive/net/http/request/CancelReasonRequest;
.super Ljava/lang/Object;
.source "CancelReasonRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.i.listCancelReasons"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public bizType:I

.field public scence:I

.field public userType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/didi/ddrive/net/http/request/CancelReasonRequest;->bizType:I

    .line 21
    iput v0, p0, Lcom/didi/ddrive/net/http/request/CancelReasonRequest;->userType:I

    return-void
.end method

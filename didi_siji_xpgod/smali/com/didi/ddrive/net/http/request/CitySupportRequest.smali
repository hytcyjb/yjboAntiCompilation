.class public Lcom/didi/ddrive/net/http/request/CitySupportRequest;
.super Ljava/lang/Object;
.source "CitySupportRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.i.citySupport"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public final bizType:I

.field public lat:D

.field public lng:D

.field public phone:Ljava/lang/String;

.field public final source:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/ddrive/net/http/request/CitySupportRequest;->bizType:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/ddrive/net/http/request/CitySupportRequest;->source:I

    return-void
.end method

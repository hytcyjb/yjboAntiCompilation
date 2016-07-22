.class public Lcom/didi/ddrive/net/http/request/DriveLoginRequest;
.super Ljava/lang/Object;
.source "DriveLoginRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.u.p.login"
    apiVersion = "1.0.0"
    https = true
    needLogin = false
.end annotation


# instance fields
.field public lat:D

.field public lng:D

.field public mob:Ljava/lang/String;

.field public source:I

.field public tTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/ddrive/net/http/request/DriveLoginRequest;->source:I

    return-void
.end method

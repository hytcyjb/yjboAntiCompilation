.class public Lcom/didi/ddrive/net/http/request/GlobalSettingRequest;
.super Ljava/lang/Object;
.source "GlobalSettingRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.i.getSettings"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public bizType:I

.field public cityId:I

.field public userType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/didi/ddrive/net/http/request/GlobalSettingRequest;->bizType:I

    .line 23
    iput v0, p0, Lcom/didi/ddrive/net/http/request/GlobalSettingRequest;->userType:I

    return-void
.end method

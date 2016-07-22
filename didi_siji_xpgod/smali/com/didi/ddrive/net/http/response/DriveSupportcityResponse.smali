.class public Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;
.super Ljava/lang/Object;
.source "DriveSupportcityResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;,
        Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;
    }
.end annotation


# static fields
.field public static final SWITCH_CLOSE:I = 0x2

.field public static final SWITCH_OPEN:I = 0x1


# instance fields
.field public bizSwitch:I

.field public cityId:I

.field public cityName:Ljava/lang/String;

.field public driveringCountSwitch:I

.field public warmUp:Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;

.field public warmUpSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->driveringCountSwitch:I

    .line 30
    iput v0, p0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->warmUpSwitch:I

    .line 46
    return-void
.end method

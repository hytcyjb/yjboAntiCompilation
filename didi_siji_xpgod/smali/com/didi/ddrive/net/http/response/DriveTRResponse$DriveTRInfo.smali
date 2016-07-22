.class public Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;
.super Ljava/lang/Object;
.source "DriveTRResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/DriveTRResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriveTRInfo"
.end annotation


# static fields
.field public static final ORDERSTATE_ACCEPET:I = 0x4

.field public static final ORDERSTATE_ARRIVE:I = 0x5

.field public static final ORDERSTATE_CANCEL:I = 0x2

.field public static final ORDERSTATE_ENDCHARGE:I = 0x7

.field public static final ORDERSTATE_NEW:I = 0x1

.field public static final ORDERSTATE_STARTCHARGE:I = 0x6

.field public static final ORDERSTATE_SUBMITCHARGE:I = 0x8

.field public static final ORDERSTATE_TIMEOUT:I = 0x3

.field public static final PAYSTATE_CLOSED:I = 0x3

.field public static final PAYSTATE_PAIED:I = 0x2

.field public static final PAYSTATE_REFUND:I = 0x5

.field public static final PAYSTATE_WAITPAY:I = 0x1

.field public static final PAYSTATE_WAITPAYAGAIN:I = 0x4


# instance fields
.field private endPoiName:Ljava/lang/String;

.field private oid:J

.field private orderState:I

.field private payState:I

.field private sendType:I

.field private startPoiName:Ljava/lang/String;

.field private stime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public getEndPoiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->endPoiName:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->oid:J

    return-wide v0
.end method

.method public getOrderState()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->orderState:I

    return v0
.end method

.method public getPayState()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->payState:I

    return v0
.end method

.method public getSendType()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->sendType:I

    return v0
.end method

.method public getStartPoiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->startPoiName:Ljava/lang/String;

    return-object v0
.end method

.method public getStime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->stime:J

    return-wide v0
.end method

.method public setEndPoiName(Ljava/lang/String;)V
    .locals 0
    .parameter "endPoiName"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->endPoiName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setOid(J)V
    .locals 0
    .parameter "oid"

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->oid:J

    .line 122
    return-void
.end method

.method public setOrderState(I)V
    .locals 0
    .parameter "orderState"

    .prologue
    .line 145
    iput p1, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->orderState:I

    .line 146
    return-void
.end method

.method public setPayState(I)V
    .locals 0
    .parameter "payState"

    .prologue
    .line 153
    iput p1, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->payState:I

    .line 154
    return-void
.end method

.method public setSendType(I)V
    .locals 0
    .parameter "sendType"

    .prologue
    .line 137
    iput p1, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->sendType:I

    .line 138
    return-void
.end method

.method public setStartPoiName(Ljava/lang/String;)V
    .locals 0
    .parameter "startPoiName"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->startPoiName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setStime(J)V
    .locals 0
    .parameter "stime"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;->stime:J

    .line 130
    return-void
.end method

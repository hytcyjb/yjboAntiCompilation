.class public Lcom/didi/ddrive/net/http/response/PaySign;
.super Ljava/lang/Object;
.source "PaySign.java"


# static fields
.field public static final PAYED:I = 0x1


# instance fields
.field public appId:Ljava/lang/String;

.field public gatewayTradeNo:Ljava/lang/String;

.field public mchId:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public orderString:Ljava/lang/String;

.field public packageStr:Ljava/lang/String;

.field public payByVoucher:I

.field public payChannelType:I

.field public payId:J

.field public prepayId:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/didi/ddrive/net/http/response/GlobalSetting;
.super Ljava/lang/Object;
.source "GlobalSetting.java"


# instance fields
.field public DJ_PASSENGER_CAN_USE_VOUCHER:Z

.field public DJ_RISK_VOUCHER_TEMPLATE_ID:J

.field public DJ_SNS_GIFT_BAG_SHARE_BASE_URL:Ljava/lang/String;

.field public FREE_INVOICE_AMOUNT:I

.field public LIMIT_DRIVE_AMOUNT:I

.field public MINIMUM_INVOICE_AMOUNT:I

.field public orderWaitTimeout:I

.field public queryInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x96

    iput v0, p0, Lcom/didi/ddrive/net/http/response/GlobalSetting;->orderWaitTimeout:I

    .line 15
    const/16 v0, 0xf

    iput v0, p0, Lcom/didi/ddrive/net/http/response/GlobalSetting;->queryInterval:I

    return-void
.end method

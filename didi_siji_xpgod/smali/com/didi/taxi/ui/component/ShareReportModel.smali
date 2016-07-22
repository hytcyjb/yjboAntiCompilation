.class public Lcom/didi/taxi/ui/component/ShareReportModel;
.super Ljava/lang/Object;
.source "ShareReportModel.java"


# static fields
.field public static final CHANNEL_QQ:Ljava/lang/String; = "5"

.field public static final CHANNEL_QZONE:Ljava/lang/String; = "4"

.field public static final CHANNEL_SINA:Ljava/lang/String; = "3"

.field public static final CHANNEL_WCHAR_CIRCLE:Ljava/lang/String; = "1"

.field public static final CHANNEL_WCHAR_FRIEND:Ljava/lang/String; = "2"

.field public static final EVENT_PAY_SHARE_SEND_HONGBAO_CK:Ljava/lang/String; = "pay_share_send_hongbao_ck"

.field public static final EVENT_PAY_SHARE_SHARE_CHANNEL_CK:Ljava/lang/String; = "pay_share_channel_ck"

.field public static final EVENT_PAY_SHARE_SHARE_SUC_CHANNEL_CK:Ljava/lang/String; = "pay_share_suc_channel_ck"

.field public static final EVENT_PAY_SHARE_WINDOW_CANCEL_CK:Ljava/lang/String; = "pay_share_window_cancle_ck"

.field public static final EVENT_PAY_SHARE_WINDOW_OK_CK:Ljava/lang/String; = "pay_share_window_ok_ck"

.field public static final LOG_G_APP_PUBLIC_LOG:Ljava/lang/String; = "g_app_public_log"

.field public static final PRODUCT_CAR:Ljava/lang/String; = "1"

.field public static final PRODUCT_FLIER:Ljava/lang/String; = "3"

.field public static final PRODUCT_TAXI:Ljava/lang/String; = "0"


# instance fields
.field public app_version:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public client_time:Ljava/lang/String;

.field public event_id:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public product_id:Ljava/lang/String;

.field public system_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->phone:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->client_time:Ljava/lang/String;

    .line 54
    const-string v0, "andriod"

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->system_type:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->app_version:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[product_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->product_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][event_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->event_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][order_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->order_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][client_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->client_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][system_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->system_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareReportModel;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

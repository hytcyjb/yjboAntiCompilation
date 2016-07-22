.class public Lcom/didi/car/helper/CarNotificationCountHelper;
.super Ljava/lang/Object;
.source "CarNotificationCountHelper.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x110


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetai:Lcom/didi/car/model/FeeDetail;

.field mManger:Landroid/app/NotificationManager;

.field private mRemoteView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcom/didi/common/util/VDeviceAPI;->isMIPhone(Landroid/content/Context;)Z

    move-result v0

    .line 34
    .local v0, xiaomi:Z
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    const v1, 0x7f030053

    :goto_0
    invoke-direct {v2, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    .line 35
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mManger:Landroid/app/NotificationManager;

    .line 36
    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mManger:Landroid/app/NotificationManager;

    const/16 v2, 0x110

    iget-object v3, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v3}, Lcom/didi/car/helper/CarNotificationCountHelper;->getNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 37
    return-void

    .line 34
    :cond_0
    const v1, 0x7f030052

    goto :goto_0
.end method

.method private formatFee(F)Ljava/lang/String;
    .locals 2
    .parameter "totalFee"

    .prologue
    .line 129
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/didi/common/util/NumberUtil;->roundByHALF_UP(FI)F

    move-result v0

    .line 130
    .local v0, fee:F
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;
    .locals 8
    .parameter "remoteViews"

    .prologue
    const/4 v7, 0x0

    .line 93
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/didi/frame/MainActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v2, notificationIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 95
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, nitiTitle:Ljava/lang/String;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    const v4, 0x7f0201c4

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method

.method private getRealPayCount(Lcom/didi/car/model/FeeDetail;)Ljava/lang/String;
    .locals 1
    .parameter "carFeeDetail"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mDetai:Lcom/didi/car/model/FeeDetail;

    .line 136
    iget-object v0, p1, Lcom/didi/car/model/FeeDetail;->payButtonTitle:Ljava/lang/String;

    return-object v0
.end method

.method private goneView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 112
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0801e5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 114
    return-void
.end method

.method private isValidNew(Ljava/lang/String;)Z
    .locals 3
    .parameter "fee"

    .prologue
    .line 158
    invoke-static {p1}, Lcom/didi/common/util/NumberUtil;->strToFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 159
    .local v0, value:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setViewText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "status"
    .parameter "title"
    .parameter "count"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0801e6

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method private updateVoucherInfo(Lcom/didi/car/model/CarVoucherInfo;)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mDetai:Lcom/didi/car/model/FeeDetail;

    if-nez v1, :cond_1

    .line 142
    const-string v0, "0.00"

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    const-string v0, "0.00"

    .line 146
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mDetai:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->payButtonTitle:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/car/helper/CarNotificationCountHelper;->isValidNew(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mDetai:Lcom/didi/car/model/FeeDetail;

    iget-object v0, v1, Lcom/didi/car/model/FeeDetail;->payButtonTitle:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mDetai:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->pennyFlag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 150
    const-string v0, "0.01"

    goto :goto_0
.end method

.method private visibleView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0801e5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 118
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 120
    return-void
.end method


# virtual methods
.method public costDetail(Lcom/didi/car/model/CarVoucherInfo;Lcom/didi/car/model/FeeDetail;)V
    .locals 3
    .parameter "carVoucherInfo"
    .parameter "carFeeDetail"

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p2, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mDetai:Lcom/didi/car/model/FeeDetail;

    .line 68
    invoke-direct {p0}, Lcom/didi/car/helper/CarNotificationCountHelper;->visibleView()V

    .line 69
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/didi/car/helper/CarNotificationCountHelper;->updateVoucherInfo(Lcom/didi/car/model/CarVoucherInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->setViewText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mManger:Landroid/app/NotificationManager;

    const/16 v1, 0x110

    iget-object v2, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->getNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public costDetail(Lcom/didi/car/model/FeeDetail;)V
    .locals 3
    .parameter "carFeeDetail"

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/didi/car/helper/CarNotificationCountHelper;->visibleView()V

    .line 59
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/didi/car/helper/CarNotificationCountHelper;->getRealPayCount(Lcom/didi/car/model/FeeDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->setViewText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mManger:Landroid/app/NotificationManager;

    const/16 v1, 0x110

    iget-object v2, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->getNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public driverChange()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/didi/car/helper/CarNotificationCountHelper;->resetNotification()V

    .line 82
    return-void
.end method

.method public feeRefresh(F)V
    .locals 3
    .parameter "totalFee"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/didi/car/helper/CarNotificationCountHelper;->visibleView()V

    .line 49
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0227

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0225

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/didi/car/helper/CarNotificationCountHelper;->formatFee(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->setViewText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mManger:Landroid/app/NotificationManager;

    const/16 v1, 0x110

    iget-object v2, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->getNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 51
    return-void
.end method

.method public payResult()V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/didi/car/helper/CarNotificationCountHelper;->goneView()V

    .line 76
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mManger:Landroid/app/NotificationManager;

    const/16 v1, 0x110

    iget-object v2, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->getNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 77
    return-void
.end method

.method public resetNotification()V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/didi/car/helper/CarNotificationCountHelper;->goneView()V

    .line 87
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->setViewText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mManger:Landroid/app/NotificationManager;

    const/16 v1, 0x110

    iget-object v2, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->getNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 89
    return-void
.end method

.method public startBilling(F)V
    .locals 3
    .parameter "totalFee"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/didi/car/helper/CarNotificationCountHelper;->visibleView()V

    .line 42
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0227

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0225

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/didi/car/helper/CarNotificationCountHelper;->formatFee(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->setViewText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mManger:Landroid/app/NotificationManager;

    const/16 v1, 0x110

    iget-object v2, p0, Lcom/didi/car/helper/CarNotificationCountHelper;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;->getNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 44
    return-void
.end method

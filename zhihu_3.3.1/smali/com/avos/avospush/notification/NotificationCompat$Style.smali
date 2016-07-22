.class public abstract Lcom/avos/avospush/notification/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 582
    const/4 v0, 0x0

    .line 583
    iget-object v1, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    invoke-virtual {v0}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 586
    :cond_0
    return-object v0
.end method

.method public setBuilder(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 574
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    .line 575
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$Style;->mBuilder:Lcom/avos/avospush/notification/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setStyle(Lcom/avos/avospush/notification/NotificationCompat$Style;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    .line 579
    :cond_0
    return-void
.end method

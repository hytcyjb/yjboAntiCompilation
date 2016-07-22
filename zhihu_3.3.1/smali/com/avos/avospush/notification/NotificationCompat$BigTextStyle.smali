.class public Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
.super Lcom/avos/avospush/notification/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;-><init>()V

    .line 685
    invoke-virtual {p0, p1}, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->setBuilder(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V

    .line 686
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
    .locals 0
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 712
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 694
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;
    .locals 1
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avospush/notification/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 703
    return-object p0
.end method

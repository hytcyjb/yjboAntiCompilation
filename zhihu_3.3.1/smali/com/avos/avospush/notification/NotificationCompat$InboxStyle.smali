.class public Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;
.super Lcom/avos/avospush/notification/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;-><init>()V

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 745
    return-void
.end method

.method public constructor <init>(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/avos/avospush/notification/NotificationCompat$Style;-><init>()V

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 748
    invoke-virtual {p0, p1}, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->setBuilder(Lcom/avos/avospush/notification/NotificationCompat$Builder;)V

    .line 749
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;
    .locals 1
    .parameter

    .prologue
    .line 773
    iget-object v0, p0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;
    .locals 0
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 757
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;
    .locals 1
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avospush/notification/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    .line 766
    return-object p0
.end method
